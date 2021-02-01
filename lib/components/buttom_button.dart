import 'package:flutter/material.dart';
import '../constants.dart';

class ButtomButton extends StatelessWidget {
  final String title;
  final Function onpressed;

  ButtomButton({this.title, this.onpressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        child: Center(
          child: Text(
            title.toUpperCase(),
            style: TextStyle(fontSize: 30.0),
          ),
        ),
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        color: kBottomContainerColour,
      ),
    );
  }
}
