import 'dart:math';
import 'package:math_expressions/math_expressions.dart';

String expression = "";
String result = "0";

String getCalculations(String input) {
  if (input == "C") {
    expression = "";
  } else if (input == "=") {
    expression = expression.replaceAll("x", "*");

    try {
      Parser p = Parser();
      Expression exp = p.parse(expression);

      ContextModel cm = ContextModel();
      result = "${exp.evaluate(EvaluationType.REAL, cm)}";
    } catch (e) {
      result = "Error.";
    }
    return result;
  } else {
    expression += input;
  }

  return expression;
}

bool isNumeric(String s) {
  if (num.tryParse(s) == null) {
    return false;
  }
  return true;
}
