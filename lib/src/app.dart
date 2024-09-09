import 'package:flutter/material.dart';
import 'package:vending_machine/src/configs/routes.dart' as custom_route;
import 'package:vending_machine/src/ports/port_one.dart';
import 'package:vending_machine/src/ports/port_two.dart';

class App extends StatefulWidget {
  const App({super.key, required this.token});
  final String? token;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late SerialPortOneManager portOne;
  late SerialPortTwoManager portTwo;

  @override
  void initState() {
    super.initState();
    portOne = SerialPortOneManager('/dev/ttyS1', context, 57600);
    portTwo = SerialPortTwoManager('/dev/ttyS2', context, 9600);
  }

  @override
  void dispose() {
    portOne.close();
    portTwo.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: widget.token == null ? '/login' : '/',
      routes: custom_route.Route.getAll(),
      title: 'Vending Machine',
      theme: ThemeData(
        useMaterial3: false,
        brightness: Brightness.light,
        colorSchemeSeed: const Color.fromARGB(255, 44, 75, 190),
        fontFamily: 'Anuphan',
      ),
    );
  }
}
