import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentResultScreen extends StatelessWidget {
  final String valueText;
  final double valueFontSize;
  final Color valueColor;

  const ContentResultScreen({
    super.key, 
    required this.valueText, 
    required this.valueFontSize,
    required this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: const Color(0xFF868C8E),
      child: Container(
        alignment: const Alignment(1.0, 1.0),
        child: Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Text(
            valueText,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: valueFontSize, 
                color: valueColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}