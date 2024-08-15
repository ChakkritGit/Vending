import 'package:flutter/material.dart';

class DialogStatus extends StatelessWidget {
  const DialogStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Dialog(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'lib/src/assets/images/dispense_banner.gif',
                  width: 400.0,
                ),
                const SizedBox(height: 5.0),
                const Text(
                  'Dispensing',
                  style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
