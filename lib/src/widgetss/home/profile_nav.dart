import 'package:flutter/material.dart';

class ProfileNavHome extends StatelessWidget {
  const ProfileNavHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20.0,
            backgroundImage: const AssetImage('lib/src/assets/images/person.jpg'),
            onBackgroundImageError: (error, stackTrace) =>
                const Icon(Icons.person),
          ),
          const SizedBox(width: 10.0),
          const Text('Hello, Guest', style: TextStyle(fontSize: 18.0)),
        ],
      ),
    );
  }
}
