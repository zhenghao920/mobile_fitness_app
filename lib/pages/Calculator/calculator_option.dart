import 'package:fitness_ui_kit/pages/Calculator/bmi_calculator_page.dart';
import 'package:fitness_ui_kit/pages/Calculator/kcal_intake_calculator_page.dart';
import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:flutter/material.dart';

class CalculatorOption extends StatelessWidget {
  const CalculatorOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bar,
        title: Text('Calculator Type'),
      ),
      backgroundColor: gym,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 145,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(colors: [facebookColor, primary]),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      width: (size.width),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "BMI (Body Mass Index)",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: white),
                          ),
                          Text(
                            "Calculate using cm/kg",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: white),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) {
                                    return BmiCalculator();
                                  },
                                ),
                              );
                            },
                            child: Container(
                              width: 110,
                              height: 40,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [white, thirdColor]),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text(
                                  "Calculate",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: double.infinity,
            height: 145,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(colors: [facebookColor, primary]),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      width: (size.width),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Calories Intake (Daily)",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: white),
                          ),
                          Text(
                            "Including protein, carbs and fat",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: white),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) {
                                    return KcalCalculator();
                                  },
                                ),
                              );
                            },
                            child: Container(
                              width: 110,
                              height: 40,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [white, thirdColor]),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text(
                                  "Calculate",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
