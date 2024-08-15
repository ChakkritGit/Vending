import 'package:flutter/material.dart';

class HeaderLoginWidget extends StatelessWidget {
  const HeaderLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(left: 110.0, bottom: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "lib/src/assets/images/login_banner.gif",
            width: 250.0,
          ),
          const Text('Vending',
              style: TextStyle(
                  fontSize: 72.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 90, 56, 253))),
          const SizedBox(height: 10.0),
          const Text('Automated medicine dispensing machine',
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 110, 110, 110))),
        ],
      ),
    );
  }
}
