import 'dart:async';
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_ui_kit/data/slider_data.dart';
import 'package:fitness_ui_kit/pages/Calculator/calculator_option.dart';
import 'package:fitness_ui_kit/pages/Exercise/dashboard.dart';
import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int currentIndex;
  late final PageController pageController;
  int page = 0;
  Timer? carasouelTimer;

  @override
  void initState() {
    super.initState();
    getFirebase();
    getBMI();
    pageController = PageController(initialPage: 0, viewportFraction: 0.98);
    carasouelTimer = timer();
    currentIndex = 0;
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  Timer timer() {
    return Timer.periodic(Duration(seconds: 3), (timer) {
      if (pageController.hasClients) {
        if (page == 3) {
          page = 0;
        }
        pageController.animateToPage(page,
            duration: Duration(seconds: 1), curve: Curves.easeInOutCirc);
        page++;
      }
    });
  }

  changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gym,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        getFirebase(),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),

              SizedBox(
                height: 180,
                child: PageView.builder(
                    controller: pageController,
                    onPageChanged: (index) {
                      page = index;
                      setState(() {});
                    },
                    itemCount: 3,
                    itemBuilder: (_, index) {
                      return AnimatedBuilder(
                        animation: pageController,
                        builder: (context, child) {
                          return child!;
                        },
                        child: GestureDetector(
                          onPanDown: (d) {
                            carasouelTimer?.cancel();
                            carasouelTimer = null;
                          },
                          onPanCancel: () {
                            carasouelTimer = timer();
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                
                                slide[index]['title'],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            margin: const EdgeInsets.all(12),
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                  image: AssetImage('assets/images/slide02.jpg')),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      );
                    }),
              ),

              // (currentIndex == 0)
              //     ? Slider()
              //     : (currentIndex == 1)
              //         ? Slider()
              //         : (currentIndex == 2)
              //             ? Slider()
              //             : Slider(),

              // Container(
              //   margin: EdgeInsets.only(top: 50.0),
              //   padding: EdgeInsets.only(top: 10.0, bottom: 40.0),
              //   decoration: BoxDecoration(
              //     color: Colors.blue[50],
              //   ),
              //   child: Column(
              //     children: <Widget>[
              //       SectionCard(
              //         title: 'Daily Tips',
              //         horizontalList: <Widget>[
              //           (currentIndex == 0)
              //               ? Slider()
              //               : (currentIndex == 1)
              //                   ? Slider()
              //                   : (currentIndex == 2)
              //                       ? Slider()
              //                       : Slider(),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),

              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 145,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
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
                                "You have a normal weight",
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
                                        return CalculatorOption();
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
                                      "Calculate Now",
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
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: facebookColor,
                          ),
                          child: getBMI())
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Container(
                width: double.infinity,
                height: 145,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/cardhome.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15),

                  //gradient: LinearGradient(colors: [facebookColor, googleColor]),
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
                                "Workout/Exercise Session",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: white),
                              ),
                              Center(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) {
                                          return Dashboard();
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
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                      child: Text(
                                        "Start Now",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: black,
                                          fontWeight: FontWeight.bold,
                                        ),
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
        ),
      ),
    );
  }

  Widget getBMI() {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    return FutureBuilder<DocumentSnapshot>(
      future: FirebaseFirestore.instance.collection('users').doc(userId).get(),
      builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError)
          return Center(
            child: Text(snapshot.hasError.toString()),
          );
        return snapshot.hasData
            ? Center(
                child: Text(
                  "${snapshot.data!['bmi'] ?? '-'}",
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold, color: white),
                ),
              )
            : Container();
      },
    );
  }

  Widget getFirebase() {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    return FutureBuilder<DocumentSnapshot>(
      future: FirebaseFirestore.instance.collection('users').doc(userId).get(),
      builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError)
          return Center(
            child: Text(snapshot.hasError.toString()),
          );
        return snapshot.hasData
            ? Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 20, color: kActiveCardColour),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${snapshot.data!['name'] ?? ''}",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: kActiveCardColour),
                  ),
                ],
              )
            : Container();
      },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   late int currentIndex;
//   @override
//   void initState() {
//     super.initState();
//     currentIndex = 0;
//   }
//   changePage(int index) {
//     setState(() {
//       currentIndex = index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Dashboard',
//           style: TextStyle(
//             fontSize: 18.0,
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         backgroundColor: Colors.white,
//       ),
//       body: (currentIndex == 0)
//           ? Slider()
//           : (currentIndex == 1)
//               ? Slider()
//               : (currentIndex == 2)
//                   ? Slider()
//                   : Slider(),
//     );
//   }
// }

// class Slider extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       shrinkWrap: true,
//       children: <Widget>[
//         SizedBox(height: 15.0),
//         CarouselSlider(
//             items: [
//               Container(
//                 margin: EdgeInsets.all(5.0),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10.0),
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/slide01.jpg'),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     Text(
//                       'Lost Weight Tips',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18.0,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(15.0),
//                       child: Text(
//                         'Decrease your number of calories by 200-500 weekly in order to lose fat',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 15.0,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(5.0),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10.0),
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/slide02.jpg'),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     Text(
//                       'Build Muscle Tips',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18.0,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(15.0),
//                       child: Text(
//                         'Eat protein with each meal to boost your muscle mass',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 15.0,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(5.0),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10.0),
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/slide03.jpg'),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     Text(
//                       'Healthy Diet Tips',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18.0,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(15.0),
//                       child: Text(
//                         'Get sugar from natural treats and avoid adding sugar into your diet',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 15.0,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//             options: CarouselOptions(
//               height: 180.0,
//               enlargeCenterPage: true,
//               autoPlay: true,
//               aspectRatio: 16 / 9,
//               autoPlayCurve: Curves.fastOutSlowIn,
//               enableInfiniteScroll: true,
//               autoPlayAnimationDuration: Duration(milliseconds: 800),
//               viewportFraction: 0.8,
//             )),
//       ],
//     );
//   }
// }
