import 'package:flutter/material.dart';
import 'package:vending_machine/src/configs/routes.dart' as custom_route;

class CardMenuHome extends StatelessWidget {
  const CardMenuHome({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {
        'icon': Icons.shopping_cart_outlined,
        'label': 'Dispense',
        'route': 'dispense'
      },
      {
        'icon': Icons.medical_services_outlined,
        'label': 'Inventory',
        'route': 'inventory'
      },
      {'icon': Icons.group_outlined, 'label': 'Settings', 'route': 'settings'},
    ];

    void navigate(String route) {
      Navigator.pushNamed(
        // ignore: use_build_context_synchronously
        context,
        route == 'dispense'
            ? custom_route.Route.dispense
            : route == 'inventory'
                ? custom_route.Route.inventory
                : custom_route.Route.settings,
      );
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((item) {
          return Container(
            width: 250.0,
            height: 250.0,
            padding: const EdgeInsets.all(6.0),
            child: GestureDetector(
              onTap: () => navigate(item['route']),
              child: Card(
                color: Colors.white,
                shadowColor: const Color.fromARGB(255, 216, 209, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35.0),
                ),
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(item['icon'],
                          size: 64.0,
                          color: const Color.fromARGB(180, 44, 75, 190)),
                      const SizedBox(height: 30.0),
                      Text(item['label'],
                          style: const TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  void navigate(String route) {
    navigate(route);
  }
}
