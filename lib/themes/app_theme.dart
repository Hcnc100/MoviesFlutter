import 'package:flutter/material.dart';

class AppTheme {
  static MaterialColor primaryColor=Colors.indigo;
  static ThemeData themeLight = ThemeData.light()
      .copyWith(appBarTheme: const AppBarTheme(color: Colors.indigo));
}
