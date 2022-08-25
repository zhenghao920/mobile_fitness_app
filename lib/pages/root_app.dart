import 'package:fitness_ui_kit/pages/AR/ar_confirm_page.dart';
import 'package:fitness_ui_kit/pages/Calculator/bmi_calculator_page.dart';
import 'package:fitness_ui_kit/pages/Nutrition/diet_page.dart';
import 'package:fitness_ui_kit/pages/home_page.dart';
import 'package:fitness_ui_kit/pages/Profile/profile_page.dart';
import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [
        HomePage(),
        //NutritionPage(),
        DietPage(),
        //BmiCalculator(),
        ArConfirmPage(),
        ProfilePage(),
      ],
    );
  }

  Widget getFooter() {
    List items = [
      LineIcons.home,
      LineIcons.fruitApple,
      LineIcons.camera,
      LineIcons.user
    ];
    return Container(
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
        color: black,
        border:
            Border(top: BorderSide(width: 1, color: black.withOpacity(0.06))),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(items.length, (index) {
            return InkWell(
              onTap: (){
                setState(() {
                  pageIndex = index;
                });
              },
              child: Column(
                children: [
                  Icon(items[index],size: 28,
                  color: pageIndex == index ? thirdColor: white,),
                  SizedBox(height: 5,),
                  pageIndex == index ? Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: thirdColor,
                      shape: BoxShape.circle
                    ),
                  ) : Container()
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
