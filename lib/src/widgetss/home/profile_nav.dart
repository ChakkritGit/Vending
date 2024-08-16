import 'package:flutter/material.dart';

class ProfileNavHome extends StatelessWidget {
  const ProfileNavHome({super.key, required this.scrolled});
  final bool scrolled;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0),
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 40.0,
            backgroundImage:
                const AssetImage('lib/src/assets/images/profile.png'),
            onBackgroundImageError: (error, stackTrace) =>
                const Icon(Icons.person),
          ),
          const SizedBox(width: 20.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello,',
                  style: TextStyle(
                    fontSize: 32.0,
                    color: scrolled ? Colors.black : Colors.white,
                  )),
              const SizedBox(height: 5.0),
              Text('Guest',
                  style: TextStyle(
                    fontSize: 42.0,
                    fontWeight: FontWeight.bold,
                    color: scrolled ? Colors.black : Colors.white,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
