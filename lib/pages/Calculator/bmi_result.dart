import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:fitness_ui_kit/widget/Calculator/calculator_button.dart';
import 'package:fitness_ui_kit/widget/Calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  const BmiResult({Key? key, required this.bmiResult, required this.resultText, required this.interpretation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bar,
        title: Text('BMI Result'),
      ),
      backgroundColor: gym,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your BMI Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: facebookColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          CalculatorButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}