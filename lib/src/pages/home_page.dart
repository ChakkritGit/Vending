import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vending_machine/src/widgetss/home/card_menu.dart';
import 'package:vending_machine/src/widgetss/home/logout_nav.dart';
import 'package:vending_machine/src/widgetss/home/profile_nav.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isScrolled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: true,
      body: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification scrollInfo) {
          setState(() {
            _isScrolled = scrollInfo.metrics.pixels > 0;
          });
          return true;
        },
        child: Container(
          color: const Color.fromARGB(255, 44, 75, 190),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                toolbarHeight: _isScrolled ? 130.0 : 180.0,
                backgroundColor:
                    _isScrolled ? Colors.white : Colors.transparent,
                centerTitle: false,
                floating: true,
                systemOverlayStyle: _isScrolled
                    ? SystemUiOverlayStyle.dark
                    : SystemUiOverlayStyle.light,
                title: ProfileNavHome(scrolled: _isScrolled),
                actions: [LogoutNavHome(scrolled: _isScrolled)],
              ),
              SliverPadding(
                padding: const EdgeInsets.all(0.0),
                sliver: SliverToBoxAdapter(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: _isScrolled
                          ? const Radius.circular(0.0)
                          : const Radius.circular(70.0),
                      topRight: _isScrolled
                          ? const Radius.circular(0.0)
                          : const Radius.circular(70.0),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 60.0,
                        left: 30.0,
                        right: 30.0,
                        bottom: 20.0,
                      ),
                      alignment: Alignment.topLeft,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.white,
                      child: Column(
                        children: [
                          const CardMenuHome(),
                          Container(
                            margin: const EdgeInsets.only(top: 30.0),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Expanded(child: Divider()),
                                Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Text(
                                    "more options",
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                ),
                                Expanded(child: Divider()),
                              ],
                            ),
                          ),
                          Expanded(
                              child: Image.asset(
                            'lib/src/assets/images/placeholder_anite.gif',
                            width: double.infinity,
                            fit: BoxFit.none,
                            // height: 100.0,
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
