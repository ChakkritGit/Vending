import 'package:flutter/material.dart';
import 'package:vending_machine/src/widgetss/home/dialog_logout.dart';

class LogoutNavHome extends StatelessWidget {
  const LogoutNavHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 30.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: IconButton(
        iconSize: 48.0,
        color: Colors.white,
        icon: const Icon(Icons.logout),
        onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => const DialogLogout()),
      ),
    );
  }
}
