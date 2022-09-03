import 'package:fitness_ui_kit/data/food_model.dart';
import 'package:fitness_ui_kit/pages/Nutrition/foods_with_nutrition.dart';
import 'package:fitness_ui_kit/pages/Nutrition/nutrition_search.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class NutritionDietPage extends StatefulWidget {
  @override
  _NutritionDietPageState createState() => _NutritionDietPageState();
}

class _NutritionDietPageState extends State<NutritionDietPage> {
  final controller = TextEditingController();
  late List<Food> foods;
  late List<Foods> foodWithNut;
  String query = '';

  @override
  void initState() {
    super.initState();
    //foodWithNut = foodList as List<Foods>;
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => FoodsProvider(),
      child: Consumer<FoodsProvider>(builder: (context, provider, _) {
        return Scaffold(
            body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search_outlined),
                    hintText: 'Food Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.black))),
                //onChanged: searchFood,
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        )

            );
      }),
    );
  }


  Widget buildSearch() => NutritionSearch(
        text: query,
        hintText: 'Foods',
        onChanged: searchBook,
      );

  Widget buildBook(Food food) => ListTile(
        onTap: () async {},
        leading: Image.asset(
          food.imagePath,
          fit: BoxFit.cover,
          width: 50,
          height: 50,
        ),
        title: Text(food.name),
        subtitle: Text(food.kiloCaloriesBurnt),
      );

  void searchBook(String query) {
    final foods = allFoods.where((food) {
      final titleLower = food.name.toLowerCase();
      final authorLower = food.kiloCaloriesBurnt.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower) ||
          authorLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.foods = foods;
    });
  }
}


