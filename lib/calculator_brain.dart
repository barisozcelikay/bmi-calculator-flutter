import 'dart:math';

const double a = 10.0;
const double b = 6.25;
const double c = 5;

class Calculator_Brain {
  final int height;
  final int weight;
  final String gender;
  final int age;
  double _bmr;
  double _bmi;

  Calculator_Brain(this.height, this.weight, this.gender, this.age);

  String calculateBMR() {
    if (gender == "male") {
      print("Erker");
      _bmr = 5 + (a * weight) + (b * height) - (c * age);
    } else if (gender == "female") {
      _bmr = (a * weight) + (b * height) - (c * age) - 161;
    }
    return _bmr.toStringAsFixed(1);
  }

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getBMRResult() {
    return "The amount of energy expended while at rest";
  }

  String getBMIResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi >= 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getBMIInterpretation() {
    if (_bmi >= 25) {
      return "You have a higher than normal body weight. Try to excercise more.";
    } else if (_bmi >= 18.5) {
      return "You have a normal body weight. Good Job !";
    } else {
      return "You have a lower than normal body weight. You can eat a bit more.";
    }
  }
}
