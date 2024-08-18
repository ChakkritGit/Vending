import 'package:flutter/material.dart';
import 'package:vending_machine/src/configs/routes.dart' as custom_route;

class ProfileNavHome extends StatelessWidget {
  const ProfileNavHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0),
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextButton(
            onPressed: () => Navigator.pushNamed(
                context,
                custom_route.Route.profile,
              ),
            child: CircleAvatar(
              radius: 40.0,
              backgroundImage:
                  const AssetImage('lib/src/assets/images/profile.png'),
              onBackgroundImageError: (error, stackTrace) =>
                  const Icon(Icons.person),
            ),
          ),
          const SizedBox(width: 20.0),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello,',
                  style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.white,
                  )),
              SizedBox(height: 5.0),
              Text('Guest',
                  style: TextStyle(
                    fontSize: 42.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
