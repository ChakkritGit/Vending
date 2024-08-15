import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vending_machine/src/widgetss/home/card_menu.dart';
import 'package:vending_machine/src/widgetss/home/logout_nav.dart';
import 'package:vending_machine/src/widgetss/home/profile_nav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: true,
      body: Container(
        color: Colors.grey.shade200,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 70.0,
              backgroundColor: Colors.white,
              centerTitle: false,
              floating: true,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              flexibleSpace: FlexibleSpaceBar(
                background: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 16.0, sigmaY: 16.0),
                  child: Container(
                    color: Colors.white.withOpacity(0.3),
                  ),
                ),
              ),
              title: const ProfileNavHome(),
              actions: const [LogoutNavHome()],
            ),
            const SliverPadding(
              padding: EdgeInsets.all(16.0), // Add padding around the grid
              sliver: CardMenuHome(),
            ),
          ],
        ),
      ),
    );
  }
}
