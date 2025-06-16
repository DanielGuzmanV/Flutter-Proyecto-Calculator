import 'package:calculator_app/presentation/widgets/content_result_screen.dart';
import 'package:calculator_app/presentation/widgets/row_buttons.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String _historial = "";
  String _expression = "";

  // Metodo para eliminar historial y expresion:
  void onAllClear(String text){
    setState(() {
      _historial = "";
      _expression = "";
    });
  }

  // Metodo para eliminar la expresion:
  void onClear(String text) {
    setState(() {
      _expression = "";
    });
  }

  // Metodo para agregar valores:
  void onNumClick(String text){
    setState(() {
      _expression += text;
    });
  }

  // Metodo para realizar las operaciones:
  void onEvaluate(String text) {

    if (_expression.isEmpty) return;

    // Si no contiene ningún operador, no hacer nada
    if (!_expression.contains(RegExp(r'[+\-*/%]'))) return;

    Parser valueParser = Parser();
    Expression valueExpression = valueParser.parse(_expression);
    ContextModel contModel = ContextModel();

    setState(() {
      _historial = _expression;
      _expression = valueExpression.evaluate(EvaluationType.REAL, contModel).toString();
    });
  
  }


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
          
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
          
                // Contenedor de historial:
                ContentResultScreen(
                  valueText: _historial, 
                  valueFontSize: 24, 
                  valueColor: const Color.fromARGB(255, 56, 57, 58),
                ),
          
                ContentResultScreen(
                  valueText: _expression, 
                  valueFontSize: 48, 
                  valueColor: Colors.white
                ),
          
                RowButtons(
                  valueHistorial: _historial,
                  valueExpression: _expression, 
                  onAllClear: onAllClear,
                  onClear: onClear,
                  onNumClick: onNumClick,
                  onEvaluate: onEvaluate,
                ),

          
              ],
            ),
          ),
        ),
      ),
    );
  }
}


