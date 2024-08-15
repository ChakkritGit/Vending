import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vending_machine/src/configs/routes.dart' as custom_route;

class InputLoginWidget extends StatefulWidget {
  const InputLoginWidget({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  State<InputLoginWidget> createState() => _InputLoginWidgetState();
}

class _InputLoginWidgetState extends State<InputLoginWidget> {
  late TextEditingController username;
  late TextEditingController password;
  bool isHidden = false;

  @override
  void initState() {
    username = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    username.dispose();
    password.dispose();
    super.dispose();
  }

  void showPass() {
    setState(() {
      isHidden = !isHidden;
    });
  }

  void login() async {
    if (widget.formKey.currentState!.validate()) {
      if (username.text.toLowerCase() == 'dev'.toLowerCase() &&
          password.text.toLowerCase() == 'dev'.toLowerCase()) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', 'test_token');
        username.clear();
        password.clear();
        Navigator.pushNamedAndRemoveUntil(
          // ignore: use_build_context_synchronously
          context,
          custom_route.Route.home,
          (route) => false,
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Invalid username or password'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 550.0,
          height: 70.0,
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(25, 110, 110, 110),
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: TextFormField(
            style: const TextStyle(fontSize: 24.0),
            controller: username,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your username';
              }
              return null;
            },
            decoration: const InputDecoration(
              iconColor: Color.fromARGB(255, 110, 110, 110),
              icon: Icon(Icons.person),
              border: InputBorder.none,
              hintText: 'Username',
              hintStyle: TextStyle(fontSize: 20.0),
              errorStyle: TextStyle(fontSize: 18.0),
            ),
          ),
        ),
        Container(
          width: 550.0,
          height: 70.0,
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(25, 110, 110, 110),
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: TextFormField(
            style: const TextStyle(fontSize: 24.0),
            controller: password,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            obscureText: !isHidden,
            decoration: InputDecoration(
                iconColor: const Color.fromARGB(255, 110, 110, 110),
                icon: const Icon(Icons.lock),
                border: InputBorder.none,
                hintText: 'Password',
                hintStyle: const TextStyle(fontSize: 20.0),
                errorStyle: const TextStyle(fontSize: 18.0),
                suffixIcon: IconButton(
                    alignment: Alignment.center,
                    color: const Color.fromARGB(255, 110, 110, 110),
                    onPressed: showPass,
                    icon: Icon(
                        !isHidden ? Icons.visibility : Icons.visibility_off))),
          ),
        ),
        const SizedBox(height: 10.0),
        Container(
          height: 70.0,
          width: 550.0,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 44, 75, 190),
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: TextButton(
              onPressed: login,
              child: const Text(
                'LOGIN',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              )),
        )
      ],
    );
  }
}
