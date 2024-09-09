import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vending_machine/src/app.dart';
import 'package:vending_machine/src/bloc/serial_data_bloc.dart';
import 'package:vending_machine/src/database/db_helper.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString('token');
  await DatabaseHelper.instance.database;

  final serialDataBloc =
      BlocProvider<SerialDataBloc>(create: (context) => SerialDataBloc());

  runApp(
    AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: MultiBlocProvider(
        providers: [serialDataBloc],
        child: App(token: token),
      ),
    ),
  );
}
