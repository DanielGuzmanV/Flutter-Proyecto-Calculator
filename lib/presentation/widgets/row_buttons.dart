import 'package:calculator_app/presentation/widgets/calculate_buttons.dart';
import 'package:flutter/material.dart';

class RowButtons extends StatefulWidget {
  const RowButtons({super.key});

  @override
  State<RowButtons> createState() => _RowButtonsState();
}

class _RowButtonsState extends State<RowButtons> {

  // Metodo para limpiar los valores:
  void allClearValues(String text) {

  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CalculateButtons(
            valueCallBack: allClearValues,
            valueText: "AC",
            valueTextSize: 18,
            valueColors: Colors.red.shade400,
          ),
          CalculateButtons(
            valueCallBack: allClearValues,
            valueText: "C",
            valueTextSize: 18,
          ),
          CalculateButtons(
            valueCallBack: allClearValues,
            valueText: "%",
            valueTextSize: 18,
          ),
          CalculateButtons(
            valueCallBack: allClearValues,
            valueText: "/",
            valueTextSize: 18,
          ),


        ],
    );
  }
}