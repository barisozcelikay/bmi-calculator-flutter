import 'file:///C:/Users/Baris/android-sdk/bmi-calculator-flutter/lib/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMI_BMRCalculator());

class BMI_BMRCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0XFF0A0D22),
          scaffoldBackgroundColor: Color(0XFF0A0D22)),
      home: InputPage(),
    );
  }
}
