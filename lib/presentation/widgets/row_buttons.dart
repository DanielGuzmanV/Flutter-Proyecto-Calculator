import 'package:calculator_app/presentation/widgets/calculate_buttons.dart';
import 'package:flutter/material.dart';

class RowButtons extends StatelessWidget {

  final String valueHistorial;
  final String valueExpression;

  // Metodos:
  final Function onAllClear;
  final Function onClear;
  final Function onNumClick;
  final Function onEvaluate;

  const RowButtons({
    super.key, 
    required this.valueHistorial,
    required this.valueExpression, 
    required this.onAllClear, 
    required this.onClear, 
    required this.onNumClick, 
    required this.onEvaluate,
  });


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [

          // Primera fila de botones:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculateButtons(
                valueCallBack: onAllClear,
                valueText: "AC",
                valueTextSize: 18,
                valueColors: Colors.green.shade300,
              ),
              CalculateButtons(
                valueCallBack: onClear,
                valueText: "C",
                valueTextSize: 18,
                valueColors: Colors.red.shade400,
              ),
              CalculateButtons(
                valueCallBack: onNumClick,
                valueText: "%",
                valueTextSize: 18,
              ),
              CalculateButtons(
                valueCallBack: onNumClick,
                valueText: "/",
                valueTextSize: 18,
              ),
            ],
          ),

          // Segunda fila de botones:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculateButtons(
                valueCallBack: onNumClick,
                valueText: "7",
                valueTextSize: 18,
              ),
              CalculateButtons(
                valueCallBack: onNumClick,
                valueText: "8",
                valueTextSize: 18,
              ),
              CalculateButtons(
                valueCallBack: onNumClick,
                valueText: "9",
                valueTextSize: 18,
              ),
              CalculateButtons(
                valueCallBack: onNumClick,
                valueText: "-",
                valueTextSize: 18,
              ),
            ],
          ),

          // Segunda fila de botones:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculateButtons(
                valueCallBack: onNumClick,
                valueText: "4",
                valueTextSize: 18,
              ),
              CalculateButtons(
                valueCallBack: onNumClick,
                valueText: "5",
                valueTextSize: 18,
              ),
              CalculateButtons(
                valueCallBack: onNumClick,
                valueText: "6",
                valueTextSize: 18,
              ),
              CalculateButtons(
                valueCallBack: onNumClick,
                valueText: "+",
                valueTextSize: 18,
              ),
            ],
          ),

          // Segunda fila de botones:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculateButtons(
                valueCallBack: onNumClick,
                valueText: "1",
                valueTextSize: 18,
              ),
              CalculateButtons(
                valueCallBack: onNumClick,
                valueText: "2",
                valueTextSize: 18,
              ),
              CalculateButtons(
                valueCallBack: onNumClick,
                valueText: "3",
                valueTextSize: 18,
              ),
              CalculateButtons(
                valueCallBack: onEvaluate,
                valueText: "=",
                valueTextSize: 18,
              ),
            ],
          ),
        ],
        
      ),
    );
  }
}