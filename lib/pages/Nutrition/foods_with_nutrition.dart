import 'package:flutter/cupertino.dart';

final String url =
    'https://raw.githubusercontent.com/zhenghao920/zhenghao920.github.io/main/food.json';

class Foods {
  final String foodName;
  final String calories;
  final String protein;
  final String fat;
  final String sodium;

  Foods(
      {required this.foodName,
      required this.calories,
      required this.protein,
      required this.fat,
      required this.sodium});

  factory Foods.fromJson(Map<dynamic, dynamic> json) {
    return new Foods(
      foodName: json["food"],
      calories: json["calories"],
      protein: json["protein"],
      fat: json["fat"],
      sodium: json["sodium"],
    );
  }
}

class FoodsProvider extends ChangeNotifier {
  int _count = 0;
  List<Foods> items = [];

  void addCount() {
    _count++;
    notifyListeners();
  }

  void addItems(Foods data) {
    items.add(data);
    notifyListeners();
  }

  void deleteItems(Foods data) {
    items.remove(data);
    notifyListeners();
  }

  int get count {
    return _count;
  }

  List<Foods> get itemsList {
    return items;
  }
}
