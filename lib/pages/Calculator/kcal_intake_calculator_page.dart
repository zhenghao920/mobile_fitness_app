import 'package:fitness_ui_kit/pages/Calculator/kcal_intake_result.dart';
import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:fitness_ui_kit/widget/Calculator/calculator_button.dart';
import 'package:fitness_ui_kit/widget/Calculator/calculator_icon.dart';
import 'package:fitness_ui_kit/widget/Calculator/kcal_formular.dart';
import 'package:fitness_ui_kit/widget/Calculator/reusable_card.dart';
import 'package:fitness_ui_kit/widget/Calculator/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KcalCalculator extends StatefulWidget {
  const KcalCalculator({Key? key}) : super(key: key);

  @override
  _KcalCalculatorState createState() => _KcalCalculatorState();
}

class _KcalCalculatorState extends State<KcalCalculator> {
  int currentIndex = 0;
  int height = 180;
  int weight = 60;
  int activityLvl = 0;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bar,
        title: Text('Calories Intake Calculator'),
      ),
      backgroundColor: gym,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ReusableCard(
              color: facebookColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Exercise count (one week)',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        activityLvl.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'Time',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: secondary,
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: activityLvl.toDouble(),
                      min: 0,
                      max: 7,
                      onChanged: (double newValue) {
                        setState(() {
                          activityLvl = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: facebookColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: secondary,
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: facebookColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundedButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                }),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundedButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: facebookColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundedButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(
                                  () {
                                    age--;
                                  },
                                );
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundedButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          CalculatorButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              KcalFormular calc = KcalFormular(
                  height: height,
                  weight: weight,
                  activityLevel: activityLvl,
                  age: age);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => KcalResult(
                    bulkKcal: calc.calculateBulk(),
                    maintainKcal: calc.calculateMaintain(),
                    cutKcal: calc.calculateCut(),
                    weight: weight,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
