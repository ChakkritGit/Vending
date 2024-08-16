// import 'dart:typed_data';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_libserialport/flutter_libserialport.dart';
// import 'package:vending_machine/src/bloc/serial_data_bloc.dart';
import 'package:vending_machine/src/configs/routes.dart' as custom_route;

class App extends StatefulWidget {
  const App({super.key, required this.token});
  final String? token;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // late SerialPort port;
  String machineStatus = "Not Ready";
  bool isOpen = false;

  // void connectToPort() async {
  //   try {
  //     port = SerialPort('/dev/ttyS1');
  //     final config = SerialPortConfig()
  //       ..baudRate = 57600
  //       ..bits = 8
  //       ..parity = 0
  //       ..stopBits = 1
  //       ..xonXoff = 0;
  //     port.config = config;

  //     SerialPortReader reader = SerialPortReader(port, timeout: 10000);
  //     Stream<Uint8List> upcomingData = reader.stream.map((data) {
  //       return data;
  //     });
  //     port.openReadWrite();
  //     setState(() {
  //       isOpen = true;
  //       machineStatus = "Ready";
  //       context
  //           .read<SerialDataBloc>()
  //           .add(const SerialDataMachineStatusDelivery(false));
  //     });

  //     upcomingData.listen((data) {
  //       List<String> resData = data.map((e) => e.toRadixString(16)).toList();
  //       String res = resData.join(',');
  //       if (res == 'fa,fb,41,0,40') {
  //         final state = context.read<SerialDataBloc>().state;
  //         if (state.writeData.isEmpty) {
  //           port.write(Uint8List.fromList([0xfa, 0xfb, 0x42, 0x00, 0x43]));
  //         } else {
  //           port.write(Uint8List.fromList(state.writeData));
  //           debugPrint('Sending Data, PackNo: ${state.running.toString()}');
  //           context.read<SerialDataBloc>().add(const SerialDataWrite([]));
  //           if (state.running == 255) {
  //             context.read<SerialDataBloc>().add(SerialDataRunningReset());
  //           } else {
  //             context.read<SerialDataBloc>().add(SerialDataRunning());
  //           }
  //         }
  //       } else if (res == 'fa,fb,42,0,43') {
  //         debugPrint('ACK from Machine');
  //         setState(() => machineStatus = "Pending");
  //         context
  //             .read<SerialDataBloc>()
  //             .add(const SerialDataMachineStatusDelivery(true));
  //       } else {
  //         if (resData.join(',').substring(0, 8) == 'fa,fb,71' ||
  //             resData.join(',').substring(0, 8) == 'fa,fb,11') {
  //           debugPrint('Return ACK to machine');
  //           port.write(Uint8List.fromList([0xfa, 0xfb, 0x42, 0x00, 0x43]));
  //           setState(() {
  //             machineStatus = "Ready";
  //             context
  //                 .read<SerialDataBloc>()
  //                 .add(const SerialDataMachineStatusDelivery(false));
  //           });
  //         } else if (res.substring(0, 8) != 'fa,fb,52') {
  //           port.write(Uint8List.fromList([0xfa, 0xfb, 0x42, 0x00, 0x43]));
  //           debugPrint('Received: $res');
  //           debugPrint('Return ACK to machine');
  //         }
  //       }
  //     });
  //   } on SerialPortError catch (err, _) {
  //     debugPrint('SerialPortError: $err');
  //     port.close();
  //   }
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   connectToPort();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: widget.token == null ? '/login' : '/',
      routes: custom_route.Route.getAll(),
      title: 'Vending Machine',
      theme: ThemeData(
        brightness: Brightness.light,
        colorSchemeSeed: const Color.fromARGB(255, 44, 75, 190),
        fontFamily: 'Anuphan',
      ),
    );
  }
}
