import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vending_machine/src/pages/dispense_page.dart';
import 'package:vending_machine/src/pages/inventory_page.dart';
import 'package:vending_machine/src/ports/port_two.dart';
import 'package:vending_machine/src/widgetss/home/logout_nav.dart';
import 'package:vending_machine/src/widgetss/home/profile_nav.dart';
import 'package:vending_machine/src/configs/routes.dart' as custom_route;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _pageState = 1;
  late SerialPortTwoManager portTwo;

  @override
  void initState() {
    super.initState();
    portTwo = SerialPortTwoManager('/dev/ttyS2', context, 9600);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: true,
      body: Container(
        color: const Color.fromARGB(255, 44, 75, 190),
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              toolbarHeight: 150.0,
              backgroundColor: Colors.transparent,
              centerTitle: false,
              floating: true,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              title: ProfileNavHome(),
              actions: [LogoutNavHome()],
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              sliver: SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _pageState = 1;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            _pageState == 1
                                ? Icons.shopping_cart
                                : Icons.shopping_cart_outlined,
                            size: 48.0,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            'Dispense',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: _pageState == 1
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _pageState = 2;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            _pageState == 2
                                ? Icons.medical_services
                                : Icons.medical_services_outlined,
                            size: 48.0,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            'Inventory',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: _pageState == 2
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _pageState = 2;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            _pageState == 2
                                ? Icons.manage_accounts
                                : Icons.manage_accounts_outlined,
                            size: 48.0,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            'Manage Users',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: _pageState == 2
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _pageState = 2;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            _pageState == 2
                                ? MdiIcons.fileDocument
                                : MdiIcons.fileDocumentOutline,
                            size: 42.0,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            'Reports',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: _pageState == 2
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          custom_route.Route.settings,
                        );
                      },
                      child: const Column(
                        children: [
                          Icon(
                            Icons.settings_outlined,
                            size: 48.0,
                            color: Colors.white,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Settings',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        if (portTwo.isOpen) {
                          var text = '# 1 1 2 1 5';
                          List<int> cmd = text.codeUnits;
                          portTwo.port.write(Uint8List.fromList(cmd));
                        }
                      },
                      child: const Column(
                        children: [
                          Icon(
                            Icons.send,
                            size: 48.0,
                            color: Colors.white,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'send',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(0.0),
              sliver: SliverToBoxAdapter(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.86,
                    color: Colors.white,
                    child: _pageState == 1
                        ? const DispensePage()
                        : const InventoryPage(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
