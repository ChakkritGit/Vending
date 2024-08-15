import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vending_machine/src/app.dart';
import 'package:vending_machine/src/bloc/serial_data_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString('token');

  final serialDataBloc =
      BlocProvider<SerialDataBloc>(create: (context) => SerialDataBloc());

  runApp(MultiBlocProvider(
    providers: [serialDataBloc],
    child: App(token: token),
  ));
}
