import 'package:fitness_ui_kit/pages/Nutrition/foods_with_nutrition.dart';
import 'package:fitness_ui_kit/pages/Nutrition/nutrition_detail_page.dart';
import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SnackTab extends StatefulWidget {
  final String tabName;
  final List<Foods> foods;
  const SnackTab({Key? key, required this.tabName, required this.foods})
      : super(key: key);

  @override
  _SnackTabState createState() => _SnackTabState();
}

class _SnackTabState extends State<SnackTab> {
  String query = '';
  //late List<dynamic> foods;
  final controller = TextEditingController();

  List<Foods> _searchResult = [];
  List<Foods> _addedList = [];
  //List<Foods> _userDetails = [];
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
        appBar: AppBar(
          backgroundColor: bar,
          title: Text(this.widget.tabName),
        ),
        backgroundColor: gym,
        body: getBody());
  }

  Widget getBody() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Food Tracking List',
            style: TextStyle(fontSize: 26),
          ),
          Container(
              child: _addedList.length != 0
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: _addedList.length,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: new Card(
                              color: secondary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: new ListTile(
                                leading: Icon(Icons.restaurant_menu_outlined),
                                title: new Text(_addedList[i].foodName),
                                subtitle: new Text(_addedList[i].calories),
                                trailing: IconButton(
                                    onPressed: () {
                                      _addedList.remove(widget.foods[i]);
                                    },
                                    icon: Icon(Icons.delete_outline_outlined)),
                              ),
                              margin: const EdgeInsets.all(0.0),
                            ),
                          );
                        },
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Please add some food to track.',
                        style: TextStyle(fontSize: 16),
                      ),
                    )),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 100,
            child: Container(
              margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search_outlined),
                    hintText: 'Food Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.black))),
                onChanged: onSearchTextChanged,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: _searchResult.length != 0 || controller.text.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: new ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: _searchResult.length,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: new Card(
                            color: primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: new ListTile(
                              leading: Icon(Icons.restaurant_menu_outlined),
                              title: new Text(_searchResult[i].foodName),
                              subtitle: new Text(_searchResult[i].calories),
                              trailing: new IconButton(
                                  onPressed: () {
                                    _addedList.add(widget.foods[i]);
                                    setState(() {});
                                  },
                                  icon: Icon(Icons.add_box_sharp)),
                            ),
                            margin: const EdgeInsets.all(0.0),
                          ),
                        );
                      },
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: new ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: widget.foods.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: new Card(
                            color: primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: new ListTile(
                              onTap: () async {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => FoodDetail(
                                        index: index, foodList: widget.foods)));
                              },
                              leading: Icon(Icons.restaurant_menu_outlined),
                              title: new Text(widget.foods[index].foodName),
                              subtitle: new Text(widget.foods[index].calories),
                              trailing: new IconButton(
                                  onPressed: () {
                                    _addedList.add(widget.foods[index]);
                                    setState(() {});
                                  },
                                  icon: Icon(Icons.add_box_sharp)),
                            ),
                            margin: const EdgeInsets.all(0.0),
                          ),
                        );
                      },
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  onSearchTextChanged(String text) async {
    _searchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }

    widget.foods.forEach((userDetail) {
      if (userDetail.foodName.toLowerCase().contains(text.toLowerCase()))
        _searchResult.add(userDetail);
    });

    setState(() {});
  }

  onClickAdded() async {
    widget.foods.forEach((userDetail) {
      _addedList.add(userDetail);
    });
    setState(() {});
  }
}
