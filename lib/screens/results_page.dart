import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/buttom_button.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.bmi, this.resultText, this.interpretation, this.bmr});

  final String bmi;
  final String resultText;
  final String interpretation;
  final String bmr;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI & BMR CALCULATOR"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your Results",
                  style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ReusableCard(
                        colour: kActiveCardColour,
                        cardChild: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                "BMI RESULT",
                                style: TextStyle(
                                  color: kBottomContainerColour,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              bmi,
                              style: TextStyle(
                                fontSize: 80.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Text(
                                resultText.toUpperCase(),
                                style: TextStyle(fontSize: 20.0),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                      ReusableCard(
                        colour: kActiveCardColour,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                "BMR RESULT",
                                style: TextStyle(
                                  color: kBottomContainerColour,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              bmr,
                              style: TextStyle(
                                fontSize: 80.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Text(
                                "Kcal",
                                style: TextStyle(fontSize: 20.0),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
            ButtomButton(
              title: "Re-Calculate",
              onpressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
