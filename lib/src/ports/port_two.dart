import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_libserialport/flutter_libserialport.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vending_machine/src/bloc/serial_data_bloc.dart';

class SerialPortTwoManager {
  late SerialPort port;
  bool isOpen = false;
  late StreamSubscription<Uint8List> _subscription;

  SerialPortTwoManager(String portName, BuildContext context, int baudRT) {
    _init(portName, context, baudRT);
  }

  void _init(String portName, BuildContext context, int baudRT) {
    try {
      port = SerialPort(portName);
      final config = SerialPortConfig()
        ..baudRate = baudRT
        ..bits = 8
        ..parity = 0
        ..stopBits = 1
        ..xonXoff = 0;
      port.config = config;

      SerialPortReader reader = SerialPortReader(port, timeout: 10000);
      Stream<Uint8List> upcomingData = reader.stream.map((data) => data);
      port.openReadWrite();
      isOpen = true;

      // Update the state through the BLoC
      context
          .read<SerialDataBloc>()
          .add(const SerialDataMachineStatusDelivery(false));

      _subscription = upcomingData.listen((data) {
        // ignore: use_build_context_synchronously
        _handleData(data, context);
      });
    } on SerialPortError catch (err) {
      if (kDebugMode) {
        print('SerialPortError: $err');
      }
      port.close();
    }
  }

  void _handleData(Uint8List data, BuildContext context) {
    List<String> resData = data.map((e) => e.toRadixString(16)).toList();

    if (kDebugMode) {
      print(resData);
    }
  }

  void close() {
    _subscription.cancel();
    port.close();
  }
}
