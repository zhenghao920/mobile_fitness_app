// import 'dart:convert';

// import 'package:fitness_ui_kit/data/food_model.dart';

// class NutritionApi {
  
//   static Future<List<Food>> getBooks(String query) async {
//     final url = Uri.parse(
//         'https://gist.githubusercontent.com/JohannesMilke/d53fbbe9a1b7e7ca2645db13b995dc6f/raw/eace0e20f86cdde3352b2d92f699b6e9dedd8c70/books.json');
//     final response = await http.get(url);

//     if (response.statusCode == 200) {
//       final List foods = json.decode(response.body);

//       return foods.map((json) => Food.fromJson(json)).where((book) {
//         final titleLower = book.title.toLowerCase();
//         final authorLower = book.author.toLowerCase();
//         final searchLower = query.toLowerCase();

//         return titleLower.contains(searchLower) ||
//             authorLower.contains(searchLower);
//       }).toList();
//     } else {
//       throw Exception();
//     }
//   }
// }
