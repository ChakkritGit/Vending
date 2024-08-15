import 'package:flutter/material.dart';
import 'package:vending_machine/src/pages/dispense_page.dart';
import 'package:vending_machine/src/pages/home_page.dart';
import 'package:vending_machine/src/pages/inventory_page.dart';
import 'package:vending_machine/src/pages/login_page.dart';
import 'package:vending_machine/src/pages/settings_page.dart';

class Route {
  static const home = '/';
  static const login = '/login';
  static const dispense = '/dispense';
  static const inventory = '/inventory';
  static const settings = '/settings';

  static Map<String, WidgetBuilder> getAll() => _route;

  static final Map<String, WidgetBuilder> _route = {
    home: (context) => const HomePage(),
    login: (context) => const LoginPage(),
    dispense: (context) => const DispensePage(),
    inventory: (context) => const InventoryPage(),
    settings: (context) => const SettingsPage(),
  };
}