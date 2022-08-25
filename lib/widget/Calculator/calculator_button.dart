import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton(
      {Key? key, required this.onTap, required this.buttonTitle})
      : super(key: key);

  final void Function()? onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
