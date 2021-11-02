import 'dart:math';

class CalculatorBrain {
  final int weight;
  final int height;
  CalculatorBrain({this.weight, this.height});
  double _bmi;
  String bmiCalculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(String bmi) {
    _bmi = double.parse(bmi);
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getFeedback(String bmi) {
    _bmi = double.parse(bmi);
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight.Try to exercise more';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight.Good job!';
    } else {
      return 'You have a lower than normal body weight.You can eat a bit more';
    }
  }
}
