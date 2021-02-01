import 'package:flutter/material.dart';
import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  IconData icon;
  final Function onPress;
  RoundIconButton({this.icon, this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      onPressed: onPress,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4A4F5E),
    );
  }
}
