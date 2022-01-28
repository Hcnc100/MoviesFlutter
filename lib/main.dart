import 'package:flutter/material.dart';
import 'package:movies/providers/movie_provider.dart';
import 'package:movies/routes/app_routers.dart';
import 'package:movies/themes/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // ! the provider is created of lazy for default
      // * change this with lazy parameter
      providers: [
        ChangeNotifierProvider(
          create: (_) => MoviesProvider(),
          lazy: false,
        )
      ],
      // * this child is my app
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
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
