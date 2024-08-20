import 'package:flutter/material.dart';
import 'package:vending_machine/src/pages/home_page.dart';
import 'package:vending_machine/src/pages/login_page.dart';
import 'package:vending_machine/src/pages/manage_inventory.dart';
import 'package:vending_machine/src/pages/manage_users.dart';
import 'package:vending_machine/src/pages/profile.dart';
import 'package:vending_machine/src/pages/report.dart';
import 'package:vending_machine/src/pages/settings_page.dart';

class Route {
  static const home = '/';
  static const login = '/login';
  static const settings = '/settings';
  static const manageinventory = '/manageinventory';
  static const manageusers = '/manageusers';
  static const profile = '/profile';
  static const report = '/report';

  static Map<String, WidgetBuilder> getAll() => _route;

  static final Map<String, WidgetBuilder> _route = {
    home: (context) => const HomePage(),
    login: (context) => const LoginPage(),
    settings: (context) => const SettingsPage(),
    manageinventory: (context) => const ManageInventory(),
    manageusers: (context) => const ManageUsers(),
    profile: (context) => const Profile(),
    report: (context) => const Report(),
  };
}
