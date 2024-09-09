import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_libserialport/flutter_libserialport.dart';
import 'package:vending_machine/src/bloc/serial_data_bloc.dart';

class SerialPortOneManager {
  late SerialPort port;
  bool isOpen = false;
  late StreamSubscription<Uint8List> _subscription;

  // Constructor that initializes the port with a name and a context for BLoC usage
  SerialPortOneManager(String portName, BuildContext context, int baudRT) {
    _init(portName, context, baudRT);
  }

  // Initialize the port configuration and start reading data
  void _init(String portName, BuildContext context, int baudRT) {
    try {
      // Set up the port
      port = SerialPort(portName);
      final config = SerialPortConfig()
        ..baudRate = 57600
        ..bits = 8
        ..parity = 0
        ..stopBits = 1
        ..xonXoff = 0;
      port.config = config;

      // Open the port for reading and writing
      port.openReadWrite();
      isOpen = true;

      // Notify BLoC that the machine status is ready
      context
          .read<SerialDataBloc>()
          .add(const SerialDataMachineStatusDelivery(false));

      // Set up a SerialPortReader to read incoming data
      SerialPortReader reader = SerialPortReader(port, timeout: 10000);
      Stream<Uint8List> upcomingData = reader.stream.map((data) => data);

      // Listen to incoming data and handle it
      _subscription = upcomingData.listen((data) {
        // ignore: use_build_context_synchronously
        _handleData(data, context);
      });
    } on SerialPortError catch (err) {
      // Handle any serial port errors
      if (kDebugMode) {
        print('SerialPortError: $err');
      }
      port.close();
    }
  }

  // Handle the data received from the serial port
  void _handleData(Uint8List data, BuildContext context) {
    List<String> resData = data.map((e) => e.toRadixString(16)).toList();
    String res = resData.join(',');

    // Check the data and update BLoC or send a response accordingly
    if (res == 'fa,fb,41,0,40') {
      final state = context.read<SerialDataBloc>().state;
      if (state.writeData.isEmpty) {
        port.write(Uint8List.fromList([0xfa, 0xfb, 0x42, 0x00, 0x43]));
      } else {
        port.write(Uint8List.fromList(state.writeData));
        context.read<SerialDataBloc>().add(const SerialDataWrite([]));
        if (state.running == 255) {
          context.read<SerialDataBloc>().add(SerialDataRunningReset());
        } else {
          context.read<SerialDataBloc>().add(SerialDataRunning());
        }
      }
    } else if (res == 'fa,fb,42,0,43') {
      if (kDebugMode) {
        print('ACK from Machine');
      }
      context
          .read<SerialDataBloc>()
          .add(const SerialDataMachineStatusDelivery(true));
    } else {
      if (resData.join(',').substring(0, 8) == 'fa,fb,71' ||
          resData.join(',').substring(0, 8) == 'fa,fb,11') {
        port.write(Uint8List.fromList([0xfa, 0xfb, 0x42, 0x00, 0x43]));
        context
            .read<SerialDataBloc>()
            .add(const SerialDataMachineStatusDelivery(false));
      } else if (res.substring(0, 8) != 'fa,fb,52') {
        port.write(Uint8List.fromList([0xfa, 0xfb, 0x42, 0x00, 0x43]));
        if (kDebugMode) {
          print('Received: $res');
        }
        if (kDebugMode) {
          print('Return ACK to machine');
        }
      }
    }
  }

  // Close the port and cancel the data stream subscription
  void close() {
    _subscription.cancel();
    port.close();
  }
}
