import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:fitness_ui_kit/widget/Calculator/calculator_button.dart';
import 'package:fitness_ui_kit/widget/Calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class KcalResult extends StatelessWidget {
  final double bulkKcal;
  final double maintainKcal;
  final double cutKcal;
  final int weight;

  const KcalResult(
      {Key? key,
      required this.bulkKcal,
      required this.maintainKcal,
      required this.cutKcal,
      required this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bar,
        title: Text('Calories Intake Result'),
      ),
      backgroundColor: gym,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 15, left: 15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ReusableCard(
              color: facebookColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ListTile(
                      title: Text(
                        'Gain Weight',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Calories: ${bulkKcal.toStringAsFixed(2)}kcal Protein: ${(weight * 2.25).toStringAsFixed(0)}g  Carbs: ${(weight * 6).toStringAsFixed(0)}g  Fat: ${(weight * 1.1).toStringAsFixed(0)}g',
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ListTile(
                      title: Text(
                        'Maintain Weight',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Calories: ${maintainKcal.toStringAsFixed(2)}kcal Protein: ${(weight * 2.125).toStringAsFixed(0)}g  Carbs: ${(weight * 4.5).toStringAsFixed(0)}g  Fat: ${(weight * 0.95).toStringAsFixed(0)}g',
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ListTile(
                      title: Text(
                        'Lose Weight',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Calories: ${cutKcal.toStringAsFixed(2)}kcal Protein: ${(weight * 2).toStringAsFixed(0)}g  Carbs: ${(weight * 3.5).toStringAsFixed(0)}g  Fat: ${(weight * 0.7).toStringAsFixed(0)}g',
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
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
