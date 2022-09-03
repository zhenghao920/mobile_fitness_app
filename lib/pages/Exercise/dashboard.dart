import 'package:fitness_ui_kit/data/exercise_model.dart';
import 'package:fitness_ui_kit/pages/Exercise/exercise_data.dart';
import 'package:fitness_ui_kit/pages/Exercise/exercise_prep_page.dart';
import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:fitness_ui_kit/widget/exercise_card.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  final List<Exercise> exercises = [
    Exercise(
      image: 'assets/images/image001.jpg',
      title: 'Easy Start',
      time: '5 min',
      difficult: 'Low',
    ),
    Exercise(
      image: 'assets/images/image002.jpg',
      title: 'Medium Start',
      time: '10 min',
      difficult: 'Medium',
    ),
    Exercise(
      image: 'assets/images/image003.jpg',
      title: 'Pro Start',
      time: '25 min',
      difficult: 'High',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bar,
        title: Text('Workout/Exercise Session'),
      ),
      backgroundColor: gym,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 20.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Core/Abs Workout",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        padding: EdgeInsets.only(left: 20.0, top: 10.0),
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Hero(
                                tag: Text("Core/Abs Workout"),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) {
                                          return ExercisePrepPage(
                                            title: "Core/Abs Workout",
                                            exercise: coreLowPrep,
                                            exerciseDetail: coreLow,
                                          );
                                        },
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 260,
                                    height: 160,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: black, width: 2),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/cat_04.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 200,
                                margin: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "Low intensive",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ),
                              Container(
                                width: 50,
                                margin: EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "10 min",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Hero(
                                tag: Text("Core/Abs Workout"),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) {
                                          return ExercisePrepPage(
                                            title: "Core/Abs Workout",
                                            exercise: coreMediumPrep,
                                            exerciseDetail: coreMedium,
                                          );
                                        },
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 260,
                                    height: 160,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: black, width: 2),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/image005.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 200,
                                margin: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "Medium intensive",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ),
                              Container(
                                width: 50,
                                margin: EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "15 min",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Hero(
                                tag: Text("Core/Abs Workout"),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) {
                                          return ExercisePrepPage(
                                              title: "Core/Abs Workout",
                                              exercise: coreHighPrep,
                                              exerciseDetail: coreHigh);
                                        },
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 260,
                                    height: 160,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: black, width: 2),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/cat_02.jpeg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 200,
                                margin: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "High intensive",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ),
                              Container(
                                width: 50,
                                margin: EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "20 min",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Strength Workout",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        padding: EdgeInsets.only(left: 20.0, top: 10.0),
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Hero(
                                tag: Text("Strength Workout"),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) {
                                          return ExercisePrepPage(
                                            title: "Strength Workout",
                                            exercise: strLowPrep,
                                            exerciseDetail: strLow,
                                          );
                                        },
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 260,
                                    height: 160,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: black, width: 2),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/slide2.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 200,
                                margin: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "Low intensive",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ),
                              Container(
                                width: 50,
                                margin: EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "10 min",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Hero(
                                tag: Text("Strength Workout"),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) {
                                          return ExercisePrepPage(
                                            title: "Strength Workout",
                                            exercise: strMediumPrep,
                                            exerciseDetail: strMedium,
                                          );
                                        },
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 260,
                                    height: 160,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: black, width: 2),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/cat_01.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 200,
                                margin: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "Medium intensive",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ),
                              Container(
                                width: 50,
                                margin: EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "15 min",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Hero(
                                tag: Text("Strength Workout"),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) {
                                          return ExercisePrepPage(
                                              title: "Strength Workout",
                                              exercise: strHighPrep,
                                              exerciseDetail: strHigh);
                                        },
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 260,
                                    height: 160,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: black, width: 2),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/str3.jfif"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 200,
                                margin: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "High intensive",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ),
                              Container(
                                width: 50,
                                margin: EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "20 min",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Lower Body Workout",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        padding: EdgeInsets.only(left: 20.0, top: 10.0),
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Hero(
                                tag: Text("Lower Body Workout"),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) {
                                          return ExercisePrepPage(
                                            title: "Lower Body Workout Overview",
                                            exercise: lowerLowPrep,
                                            exerciseDetail: lowerLow,
                                          );
                                        },
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 260,
                                    height: 160,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: black, width: 2),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/slide3.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 200,
                                margin: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "Low intensive",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ),
                              Container(
                                width: 50,
                                margin: EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "10 min",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Hero(
                                tag: Text("Strength Workout"),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) {
                                          return ExercisePrepPage(
                                            title: "Lower Body Workout Overview",
                                            exercise: lowerMediumPrep,
                                            exerciseDetail: lowerMedium,
                                          );
                                        },
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 260,
                                    height: 160,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: black, width: 2),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/image008.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 200,
                                margin: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "Medium intensive",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ),
                              Container(
                                width: 50,
                                margin: EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "15 min",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Hero(
                                tag: Text("Strength Workout"),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) {
                                          return ExercisePrepPage(
                                              title: "Lower Body Workout Overview",
                                              exercise: lowerHighPrep,
                                              exerciseDetail: lowerHigh);
                                        },
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 260,
                                    height: 160,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: black, width: 2),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/lower3.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 200,
                                margin: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "High intensive",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ),
                              Container(
                                width: 50,
                                margin: EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "20 min",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
