import 'package:flutter/material.dart';
import 'package:movies/screens/screens.dart';

class AppRouters {
  static const homeScreen = "homeScreen";
  static const detailsScreen = "detailsScreen";
  static Map<String, Widget Function(BuildContext)> routes = {
    homeScreen: (BuildContext context) => const HomeScreen(),
    detailsScreen: (BuildContext context) => const DetailsScreen()
  };
}
