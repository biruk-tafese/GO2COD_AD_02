import 'package:math_expressions/math_expressions.dart';

String calculateResult(String input) {
  Parser parser = Parser();
  Expression exp = parser.parse(input);
  ContextModel cm = ContextModel();
  double result = exp.evaluate(EvaluationType.REAL, cm);

  if (result == result.roundToDouble()) {
    return result.toInt().toString();
  }
  return result.toStringAsFixed(2);
}
