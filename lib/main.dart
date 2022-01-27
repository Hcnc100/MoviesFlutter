import 'package:flutter/material.dart';
import 'package:movies/routes/app_routers.dart';
import 'package:movies/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      initialRoute: AppRouters.homeScreen,
      routes: AppRouters.routes,
      theme: AppTheme.themeLight,
    );
  }
}
