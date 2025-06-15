import 'package:calculator_app/presentation/widgets/result_screen.dart';
import 'package:calculator_app/presentation/widgets/row_buttons.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: const Color(0xFF36393A),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.black,
              width: 2,
            )
          ),
          child: Container(
            padding: const EdgeInsets.all(12),
          
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
          
                // Contenedor de historial:
                ContentResultScreen(
                  valueText: 'Historial', 
                  valueFontSize: 24, 
                  valueColor: Color.fromARGB(255, 56, 57, 58),
                ),
          
                ContentResultScreen(
                  valueText: "+", 
                  valueFontSize: 48, 
                  valueColor: Colors.white
                ),
          
                RowButtons()
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}


