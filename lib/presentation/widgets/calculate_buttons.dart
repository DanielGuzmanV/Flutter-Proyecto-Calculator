import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculateButtons extends StatelessWidget {
  final Function valueCallBack;
  final String valueText;
  final double valueTextSize;
  final Color? valueColors;

  const CalculateButtons({
    super.key, 
    required this.valueCallBack, 
    required this.valueText,
    this.valueTextSize = 20,
    this.valueColors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 35, 35, 35),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(25)
      ),

      child: SizedBox(
        width: 50,
        height: 50,
        child: TextButton(
          
          // Funciones para los botones:
          onPressed: () => (valueCallBack(valueText)), 
          style: TextButton.styleFrom(
            backgroundColor: valueColors ?? const Color(0xFF515667),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.all(5),
            textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
          ),
          child: Text(
            valueText, 
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: valueTextSize
              )
            ),
          ),
        ),
      ),
    );
  }
}