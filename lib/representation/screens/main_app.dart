import 'package:flutter/material.dart';
import 'package:flutter_demo_02/core/const/color_const.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter_demo_02/representation/screens/account_routes/account_screen.dart';
import 'package:flutter_demo_02/representation/screens/home_routes/home_screen.dart';
import 'package:flutter_demo_02/representation/screens/message_routes/message_screen.dart';
import 'package:flutter_demo_02/representation/screens/request_routes/request_screen.dart';
// ignore: implementation_imports
import 'package:font_awesome_icon_class/src/font_awesome_icon_class.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  static String routName = '/main_app';
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  dynamic selected;
  var heart = false;
  PageController controller = PageController();

  var _selectedTab = _SelectedTab.Home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorPalette.bgColor,
        body: IndexedStack(
          index: _selectedTab.index,
          children: const [
            HomeScreen(),
            RequestScreen(),
            MessageScreen(),
            AccountScreen(),
          ],
        ),
        extendBody: true,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 0),
          child: DotNavigationBar(
            backgroundColor: const Color.fromARGB(182, 164, 144, 124),
            margin: const EdgeInsets.only(left: 5, right: 5),
            currentIndex: _SelectedTab.values.indexOf(_selectedTab),
            onTap: _handleIndexChanged,
            dotIndicatorColor: ColorPalette.bgColor,
            unselectedItemColor: ColorPalette.bgColor,
            splashBorderRadius: 20,
            enableFloatingNavBar: true,
            borderRadius: 20,
            enablePaddingAnimation: false,
            items: [
              /// Home
              DotNavigationBarItem(
                icon: const Icon(FontAwesomeIcons.house),
                selectedColor: ColorPalette.primaryColor,
              ),

              /// Request
              DotNavigationBarItem(
                icon: const Icon(FontAwesomeIcons.notesMedical),
                selectedColor: ColorPalette.primaryColor,
              ),

              /// Message
              DotNavigationBarItem(
                icon: const Icon(FontAwesomeIcons.solidBell),
                selectedColor: ColorPalette.primaryColor,
              ),

              /// Account
              DotNavigationBarItem(
                icon: const Icon(FontAwesomeIcons.solidUser),
                selectedColor: ColorPalette.primaryColor,
              ),
            ],
          ),
        ));
  }
}

// ignore: constant_identifier_names
enum _SelectedTab { Home, Request, Message, Account }
