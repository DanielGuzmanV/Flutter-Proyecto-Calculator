import 'package:calculator_app/config/theme/theme_app.dart';
import 'package:calculator_app/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeApp(valueColor: 3).selectedColor(),
      title: 'App - Calculadora',
      home: const HomeScreen()
    );
  }
}
