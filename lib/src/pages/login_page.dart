import 'package:flutter/material.dart';
import 'package:vending_machine/src/widgetss/login/header.dart';
import 'package:vending_machine/src/widgetss/login/input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(2, 44, 75, 190),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const HeaderLoginWidget(),
                  const SizedBox(height: 10.0),
                  InputLoginWidget(formKey: formKey),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
