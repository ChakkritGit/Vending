import 'package:flutter/material.dart';
import 'package:vending_machine/src/configs/routes.dart' as custom_route;

class CardMenuHome extends StatelessWidget {
  const CardMenuHome({super.key});

  @override
  Widget build(BuildContext context) {
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

    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Two cards per row
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 1.5,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final icons = [
            Icons.shopping_cart,
            Icons.medical_services_outlined,
            Icons.group_outlined,
          ];

          final menuNames = [
            'Dispense',
            'Inventory',
            'Settings',
          ];

          final routes = [
            'dispense',
            'inventory',
            'settings',
          ];

          return GestureDetector(
            onTap: () => navigate(routes[index]),
            child: Card(
              color: Colors.white,
              shadowColor: const Color.fromARGB(255, 216, 209, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 4.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(icons[index],
                        size: 40.0,
                        color: const Color.fromARGB(180, 90, 56, 253)),
                    const SizedBox(height: 10.0),
                    Text(
                      menuNames[index],
                      style: const TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        childCount: 3, // Total number of cards
      ),
    );
  }
}
