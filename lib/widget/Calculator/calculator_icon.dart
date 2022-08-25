import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:flutter/material.dart';

class CalculatorIcon extends StatelessWidget {
  const CalculatorIcon({Key? key, required this.icon, required this.label})
      : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
