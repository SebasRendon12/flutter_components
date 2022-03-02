import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // ignore: todo
    //TODO: delete home route
    MenuOption(
        route: 'home',
        icon: Icons.home_rounded,
        name: 'Home',
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list_rounded,
        name: 'List View 1',
        screen: const ListView1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list_alt_sharp,
        name: 'List View 2',
        screen: const ListView2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.alarm,
        name: 'Alert',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.credit_card,
        name: 'Card',
        screen: const CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen()
  // };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
