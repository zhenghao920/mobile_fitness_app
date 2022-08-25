// import 'package:fitness_ui_kit/pages/Nutrition/foods_with_nutrition.dart';
// import 'package:flutter/cupertino.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class DietPageProvider extends ChangeNotifier {
//   List<Foods> searchResult = [];
//   List<Foods> userDetails = [];
//   List<Foods> addedList = [];

//   Future<Null> getUserDetails() async {
//     final response = await http.get(Uri.encodeFull(url));
//     final responseJson = json.decode(response.body);

//     for (Map user in responseJson) {
//       userDetails.add(Foods.fromJson(user));
//       notifyListeners();
//     }
//   }

//   onSearchTextChanged(String text) async {
//     searchResult.clear();
//     if (text.isEmpty) {
//       notifyListeners();
//       return;
//     }

//     userDetails.forEach((userDetail) {
//       if (userDetail.foodName.toLowerCase().contains(text.toLowerCase()))
//         searchResult.add(userDetail);
//     });

//     notifyListeners();
//   }

//   onClickAdded() async {
//     userDetails.forEach((userDetail) {
//       addedList.add(userDetail);
//     });
//     notifyListeners();
//   }
// }
