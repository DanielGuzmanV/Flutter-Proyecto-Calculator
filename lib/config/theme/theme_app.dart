import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.teal,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.indigo
];

class ThemeApp {

  final int valueColor;
  final bool isDarkmode;

  ThemeApp({
    this.valueColor = 0, 
    this.isDarkmode = false,
  });

  // Metodo para seleccionar el color:
  ThemeData selectedColor() {
    return ThemeData(
      useMaterial3: true,
      brightness: isDarkmode? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorList[valueColor],
      appBarTheme: const AppBarTheme(
        centerTitle: true,
      )
    );
  }

  // Metodo para copia de la clase:
  ThemeApp copyWith({int? valueColor, bool? isDarkmode}) {
    return ThemeApp(
      valueColor: valueColor ?? this.valueColor,
      isDarkmode: isDarkmode ?? this.isDarkmode,
    );
  }

}









