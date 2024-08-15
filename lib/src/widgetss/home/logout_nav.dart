import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vending_machine/src/configs/routes.dart' as custom_route;

class LogoutNavHome extends StatelessWidget {
  const LogoutNavHome({super.key});

  @override
  Widget build(BuildContext context) {
    void logout() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.remove('token');
      // ignore: use_build_context_synchronously
      Navigator.pop(context, 'OK');
      Navigator.pushNamedAndRemoveUntil(
        // ignore: use_build_context_synchronously
        context,
        custom_route.Route.login,
        (route) => false,
      );
    }

    return Container(
      margin: const EdgeInsets.only(right: 15.0),
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: const Color.fromARGB(25, 255, 0, 0),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: IconButton(
        iconSize: 24.0,
        color: const Color.fromARGB(180, 255, 0, 0),
        icon: const Icon(Icons.logout),
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => Dialog(
            child: SizedBox(
              width: 350,
              height: 250,
              child: AlertDialog(
                insetPadding: EdgeInsets.zero,
                contentPadding: EdgeInsets.zero,
                titlePadding: EdgeInsets.zero,
                title: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Logout',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                content: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Do you want to logout?',
                    style: TextStyle(fontSize: 24.0),
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  TextButton(
                    onPressed: logout,
                    child: const Text(
                      'OK',
                      style: TextStyle(fontSize: 20.0, color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
