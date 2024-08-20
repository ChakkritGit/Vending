import 'package:flutter/material.dart';
import 'package:vending_machine/src/configs/routes.dart' as custom_route;

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 38.0,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 100.0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          children: [
            ListTile(
              onTap: () => Navigator.pushNamed(
                context,
                custom_route.Route.manageinventory,
              ),
              title: const Row(
                children: [
                  Icon(
                    Icons.medical_services_outlined,
                    size: 32.0,
                  ),
                  SizedBox(width: 10),
                  Text('Manage Inventory'),
                ],
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 32.0,
                color: Colors.grey,
              ),
            ),
            ListTile(
              onTap: () => Navigator.pushNamed(
                context,
                custom_route.Route.manageusers,
              ),
              title: const Row(
                children: [
                  Icon(
                    Icons.account_circle_outlined,
                    size: 32.0,
                  ),
                  SizedBox(width: 10),
                  Text('Manage Users'),
                ],
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 32.0,
                color: Colors.grey,
              ),
            ),
            ListTile(
              onTap: () => Navigator.pushNamed(
                context,
                custom_route.Route.report,
              ),
              title: const Row(
                children: [
                  Icon(
                    Icons.document_scanner,
                    size: 32.0,
                  ),
                  SizedBox(width: 10),
                  Text('Report'),
                ],
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 32.0,
                color: Colors.grey,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Legal'),
                  ),
                  Expanded(
                    child: Divider(),
                  ),
                ],
              ),
            ),
            const ListTile(
              title: Text('Privacy Policy'),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 32.0,
                color: Colors.grey,
              ),
            ),
            const ListTile(
              title: Text('Terms of Service'),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 32.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
