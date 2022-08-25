import 'package:fitness_ui_kit/pages/Nutrition/Tab/breakfast_tab.dart';
import 'package:fitness_ui_kit/pages/Nutrition/Tab/dinner_tab.dart';
import 'package:fitness_ui_kit/pages/Nutrition/Tab/lunch_tab.dart';
import 'package:fitness_ui_kit/pages/Nutrition/Tab/snack_tab.dart';
import 'package:fitness_ui_kit/pages/Nutrition/foods_with_nutrition.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class DietPage extends StatefulWidget {
  const DietPage({Key? key}) : super(key: key);

  @override
  _DietPageState createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> {
  //List<Foods> _userDetails = [];

  static Future<List<Foods>> fetchData(http.Client client) async {
    final response = await client.get(Uri.parse(
        'https://raw.githubusercontent.com/zhenghao920/zhenghao920.github.io/main/food.json'));

    // Use the compute function to run parsePhotos in a separate isolate.
    return await compute(parseData, response.body);
  }

// A function that converts a response body into a List<Photo>.
  static List<Foods> parseData(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<Foods>((json) => Foods.fromJson(json)).toList();
  }

  // Future<Null> getUserDetails() async {
  //   final response = await http.get(Uri.encodeFull(url));
  //   final responseJson = json.decode(response.body);
  //   setState(() {
  //     for (Map user in responseJson) {
  //       _userDetails.add(Foods.fromJson(user));
  //     }
  //   });
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   getUserDetails();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<List<Foods>>(
            future: fetchData(http.Client()),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Center(
                  child: Text('An error has occurred!'),
                );
              } else if (snapshot.hasData) {
                return DefaultTabController(
                  length: 4,
                  child: NestedScrollView(
                    headerSliverBuilder: (context, value) {
                      return [
                        SliverAppBar(
                          floating: true,
                          flexibleSpace: FlexibleSpaceBar(
                            background: Image.asset(
                              "assets/images/fruit_granola.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text('Nutrition/Diet Session'),
                          bottom: TabBar(
                            tabs: <Widget>[
                              Container(
                                height: 30.0,
                                child: Tab(
                                  text: 'Breakfast',
                                ),
                              ),
                              Container(
                                height: 30.0,
                                child: Tab(
                                  text: 'Lunch',
                                ),
                              ),
                              Container(
                                height: 30.0,
                                child: Tab(
                                  text: 'Dinner',
                                ),
                              ),
                              Container(
                                height: 30.0,
                                child: Tab(
                                  text: 'Snacks',
                                ),
                              ),
                            ],
                            labelColor: Colors.black87,
                            unselectedLabelColor: Colors.grey[400],
                            indicatorWeight: 4.0,
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorColor: Color.fromRGBO(215, 225, 255, 1.0),
                          ),
                        ),
                      ];
                    },
                    body: TabBarView(
                      children: <Widget>[
                        BreakfastTab(
                          foods: snapshot.data!,
                          tabName: 'Breakfast',
                        ),
                        LunchTab(
                          tabName: 'Lunch',
                          foods: snapshot.data!,
                        ),
                        DinnerTab(
                          tabName: 'Dinner',
                          foods: snapshot.data!,
                        ),
                        SnackTab(
                          tabName: 'Snacks',
                          foods: snapshot.data!,
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));

    // return Container(
    //   padding: EdgeInsets.only(top: 20.0),
    //   child: SafeArea(
    //     child: DefaultTabController(
    //       length: 4,
    //       child: Scaffold(
    //         appBar: AppBar(
    //           elevation: 0,
    //           backgroundColor: Colors.white,
    //           flexibleSpace: Header(
    //             'Diet',
    //             rightSide: Container(
    //               height: 35.0,
    //               padding: EdgeInsets.symmetric(horizontal: 16.0),
    //               margin: EdgeInsets.only(right: 20.0),
    //               decoration: BoxDecoration(
    //                 color: Color.fromRGBO(100, 140, 255, 1.0),
    //                 borderRadius: BorderRadius.circular(20.0),
    //               ),
    //               child: Center(
    //                 child: GestureDetector(
    //                   onTap: () => Navigator.push(
    //                     context,
    //                     MaterialPageRoute(builder: (context) {
    //                       return NutritionDietPage();
    //                     }),
    //                   ),
    //                   child: Text(
    //                     'Tracker',
    //                     style: TextStyle(
    //                       color: Colors.white,
    //                       fontWeight: FontWeight.w900,
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //           bottom: TabBar(
    //             tabs: <Widget>[
    //               Container(
    //                 height: 30.0,
    //                 child: Tab(
    //                   text: 'Breakfast',
    //                 ),
    //               ),
    //               Container(
    //                 height: 30.0,
    //                 child: Tab(
    //                   text: 'Lunch',
    //                 ),
    //               ),
    //               Container(
    //                 height: 30.0,
    //                 child: Tab(
    //                   text: 'Dinner',
    //                 ),
    //               ),
    //               Container(
    //                 height: 30.0,
    //                 child: Tab(
    //                   text: 'Snacks',
    //                 ),
    //               ),
    //             ],
    //             labelColor: Colors.black87,
    //             unselectedLabelColor: Colors.grey[400],
    //             indicatorWeight: 4.0,
    //             indicatorSize: TabBarIndicatorSize.label,
    //             indicatorColor: Color.fromRGBO(215, 225, 255, 1.0),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}

class Header extends StatelessWidget {
  final String title;
  final Widget rightSide;

  Header(this.title, {required this.rightSide});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Text(
            this.title,
            style: TextStyle(
              fontSize: 28,
              color: Colors.grey[600],
              fontWeight: FontWeight.w700,
            ),
          ),
          margin: EdgeInsets.only(left: 20.0),
          height: 54.0,
        ),
        // ignore: unnecessary_null_comparison
        (this.rightSide != null) ? this.rightSide : Container()
      ],
    );
  }
}
