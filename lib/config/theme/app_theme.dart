import 'package:flutter/material.dart';

final colorList = <Color>[
  Colors.blue,
  Colors.tealAccent,
  Colors.yellowAccent,
  Colors.red,
  Colors.deepPurpleAccent,
  Colors.deepOrange,
  Colors.pink,
  Colors.lightGreenAccent.shade400
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme({
    this.selectedColor = 0,
    this.isDarkMode = false,
  })  : assert(selectedColor >= 0, 'Selected color must be greater then 0'),
        assert(selectedColor < colorList.length,
            'Selected color must be less or equal than ${selectedColor.bitLength - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(
        centerTitle: true,
      ));
}
