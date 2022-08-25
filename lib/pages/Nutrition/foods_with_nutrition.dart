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
  // dynamic foodList;

  // FoodsProvider() {
  //   foodList = (apiRes ["food_list"]as List).map((food) => Foods.fromJson(food)).toList();
  // }

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

// List foodList1 = [
//   {
//     "food": "Accidental Chicken",
//     "calories": "576kcal",
//     "protein": "36g",
//     "fat": "37g",
//     "sodium": "461mg",
//     "status": "false1"
//   },
//   {
//     "food": "Almond Cookies",
//     "calories": "98kcal",
//     "protein": "3g",
//     "fat": "7g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Amaretto Ice Cream",
//     "calories": "258kcal",
//     "protein": "5g",
//     "fat": "14g",
//     "sodium": "36mg",
//     "status": "false1"
//   },
//   {
//     "food": "Apple Pie",
//     "calories": "79kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Asian Barbecue Sauce",
//     "calories": "303kcal",
//     "protein": "4g",
//     "fat": "2g",
//     "sodium": "1926mg",
//     "status": "false1"
//   },
//   {
//     "food": "Asian Cabbage Salad",
//     "calories": "27kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "11mg",
//     "status": "false1"
//   },
//   {
//     "food": "Asian Chicken Hot Pot with Sesame and Garlic Dipping Sauces",
//     "calories": "482kcal",
//     "protein": "35g",
//     "fat": "24g",
//     "sodium": "2097mg",
//     "status": "false1"
//   },
//   {
//     "food": "Asian Chicken Salad",
//     "calories": "332kcal",
//     "protein": "32g",
//     "fat": "19g",
//     "sodium": "1047mg",
//     "status": "false1"
//   },
//   {
//     "food": "Asian Dumpling Soup",
//     "calories": "98kcal",
//     "protein": "8g",
//     "fat": "2g",
//     "sodium": "1091mg",
//     "status": "false1"
//   },
//   {
//     "food": "Asian Garlic Chicken",
//     "calories": "347kcal",
//     "protein": "55g",
//     "fat": "10g",
//     "sodium": "667mg",
//     "status": "false1"
//   },
//   {
//     "food": "Asian Noodles with Barbecued Duck Confit",
//     "calories": "519kcal",
//     "protein": "14g",
//     "fat": "25g",
//     "sodium": "1237mg",
//     "status": "false1"
//   },
//   {
//     "food": "Asian Noodles with Ginger-Cilantro Sauce",
//     "calories": "438kcal",
//     "protein": "13g",
//     "fat": "14g",
//     "sodium": "272mg",
//     "status": "false1"
//   },
//   {
//     "food": "Asian Pear and Watercress Salad with Sesame Dressing",
//     "calories": "345kcal",
//     "protein": "11g",
//     "fat": "19g",
//     "sodium": "423mg",
//     "status": "false1"
//   },
//   {
//     "food": "Asian Pears with Ginger-Maple Syrup",
//     "calories": "242kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "13mg",
//     "status": "false1"
//   },
//   {
//     "food": "Asian Pork and Mushroom Burger Wraps",
//     "calories": "457kcal",
//     "protein": "26g",
//     "fat": "32g",
//     "sodium": "1077mg",
//     "status": "false1"
//   },
//   {
//     "food": "Asian Pork Crepes",
//     "calories": "20kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "37mg",
//     "status": "false1"
//   },
//   {
//     "food": "Asian Rice Noodle Salad",
//     "calories": "293kcal",
//     "protein": "7g",
//     "fat": "15g",
//     "sodium": "565mg",
//     "status": "false1"
//   },
//   {
//     "food": "Asian Salmon Bowl with Lime Drizzle",
//     "calories": "509kcal",
//     "protein": "30g",
//     "fat": "20g",
//     "sodium": "511mg",
//     "status": "false1"
//   },
//   {
//     "food": "Asian Turkey Lettuce Wraps",
//     "calories": "454kcal",
//     "protein": "39g",
//     "fat": "23g",
//     "sodium": "895mg",
//     "status": "false1"
//   },
//   {
//     "food": "Asian Turkey-Noodle Soup with Ginger and Chiles",
//     "calories": "248kcal",
//     "protein": "23g",
//     "fat": "5g",
//     "sodium": "867mg",
//     "status": "false1"
//   },
//   {
//     "food": "Asian-Style Crab and Shrimp Cakes",
//     "calories": "715kcal",
//     "protein": "32g",
//     "fat": "38g",
//     "sodium": "1952mg",
//     "status": "false1"
//   },
//   {
//     "food": "Asian-Style Flank Steak",
//     "calories": "358kcal",
//     "protein": "41g",
//     "fat": "19g",
//     "sodium": "1344mg",
//     "status": "false1"
//   },
//   {
//     "food": "Asian-Style Noodle Salad",
//     "calories": "307kcal",
//     "protein": "8g",
//     "fat": "6g",
//     "sodium": "30mg",
//     "status": "false1"
//   },
//   {
//     "food": "Asian-Style Shrimp and Pineapple Fried Rice",
//     "calories": "431kcal",
//     "protein": "16g",
//     "fat": "6g",
//     "sodium": "658mg",
//     "status": "false1"
//   },
//   {
//     "food": "Avocado \"Pesto",
//     "calories": "354kcal",
//     "protein": "3g",
//     "fat": "36g",
//     "sodium": "37mg",
//     "status": "false1"
//   },
//   {
//     "food": "Avocado and Grapefruit Salad",
//     "calories": "216kcal",
//     "protein": "2g",
//     "fat": "17g",
//     "sodium": "423mg",
//     "status": "false1"
//   },
//   {
//     "food": "Avocado and Tropical-Fruit Salsa",
//     "calories": "176kcal",
//     "protein": "2g",
//     "fat": "6g",
//     "sodium": "10mg",
//     "status": "false1"
//   },
//   {
//     "food": "Avocado and White Bean Salsa",
//     "calories": "465kcal",
//     "protein": "19g",
//     "fat": "18g",
//     "sodium": "23mg",
//     "status": "false1"
//   },
//   {
//     "food": "Avocado Blts on Toasted Oatmeal Bread",
//     "calories": "1030kcal",
//     "protein": "20g",
//     "fat": "88g",
//     "sodium": "2168mg",
//     "status": "false1"
//   },
//   {
//     "food": "Avocado Daiquiri",
//     "calories": "381kcal",
//     "protein": "2g",
//     "fat": "16g",
//     "sodium": "34mg",
//     "status": "false1"
//   },
//   {
//     "food": "Avocado Ice",
//     "calories": "288kcal",
//     "protein": "4g",
//     "fat": "12g",
//     "sodium": "43mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baba Ghanouj",
//     "calories": "174kcal",
//     "protein": "3g",
//     "fat": "12g",
//     "sodium": "38mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baby Carrot Confit with Orange Juice and Cumin",
//     "calories": "211kcal",
//     "protein": "3g",
//     "fat": "7g",
//     "sodium": "209mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baby Carrot Crudites with Green Onion and Mint Dip",
//     "calories": "103kcal",
//     "protein": "1g",
//     "fat": "9g",
//     "sodium": "88mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baby Eggplant, Olive, and Herb-Cheese Frittata",
//     "calories": "1031kcal",
//     "protein": "49g",
//     "fat": "53g",
//     "sodium": "1123mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baby Greens with Warm Goat Cheese",
//     "calories": "386kcal",
//     "protein": "16g",
//     "fat": "31g",
//     "sodium": "722mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baby Greens, Pear, Walnut, and Blue Cheese Salad",
//     "calories": "301kcal",
//     "protein": "6g",
//     "fat": "28g",
//     "sodium": "294mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baby Lima Bean Soup with Mustard Greens, Peas, and Onions",
//     "calories": "255kcal",
//     "protein": "11g",
//     "fat": "10g",
//     "sodium": "579mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baby Lima Beans and Corn in Chive Cream",
//     "calories": "243kcal",
//     "protein": "8g",
//     "fat": "13g",
//     "sodium": "335mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bacardi Special",
//     "calories": "177kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bacon and Blue Cheese Salad with Caesar Dressing",
//     "calories": "996kcal",
//     "protein": "20g",
//     "fat": "90g",
//     "sodium": "977mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bacon and Buttermilk Mashed Potatoes",
//     "calories": "308kcal",
//     "protein": "9g",
//     "fat": "12g",
//     "sodium": "214mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bacon and Cabbage Soup",
//     "calories": "537kcal",
//     "protein": "19g",
//     "fat": "28g",
//     "sodium": "1713mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bacon and Cashew Caramel Corn",
//     "calories": "298kcal",
//     "protein": "4g",
//     "fat": "14g",
//     "sodium": "309mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bacon and Chive Potato Pancakes",
//     "calories": "377kcal",
//     "protein": "7g",
//     "fat": "25g",
//     "sodium": "202mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bacon and Lettuce Salad",
//     "calories": "1243kcal",
//     "protein": "37g",
//     "fat": "118g",
//     "sodium": "1944mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bacon and Molasses Beans",
//     "calories": "513kcal",
//     "protein": "24g",
//     "fat": "9g",
//     "sodium": "420mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bacon Baklava",
//     "calories": "321kcal",
//     "protein": "6g",
//     "fat": "19g",
//     "sodium": "133mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bacon Cheddar Quick Bread with Dried Pears",
//     "calories": "473kcal",
//     "protein": "17g",
//     "fat": "31g",
//     "sodium": "662mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bacon, Egg, and Tomato Club Sandwiches",
//     "calories": "472kcal",
//     "protein": "13g",
//     "fat": "16g",
//     "sodium": "575mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bacon, meatless",
//     "calories": "324.84kcal",
//     "protein": "10.7g",
//     "fat": "29.52g",
//     "sodium": "981mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bacon, Oatmeal, and Raisin Cookies",
//     "calories": "291kcal",
//     "protein": "5g",
//     "fat": "13g",
//     "sodium": "289mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bacon-and-Egg Rice",
//     "calories": "507kcal",
//     "protein": "16g",
//     "fat": "24g",
//     "sodium": "916mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bacony Roasted Chickpeas",
//     "calories": "259kcal",
//     "protein": "12g",
//     "fat": "10g",
//     "sodium": "451mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baeckeoffe / Laundry Day Stew of Beef, Pork, and Lamb",
//     "calories": "1120kcal",
//     "protein": "66g",
//     "fat": "73g",
//     "sodium": "245mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bagel Chips with Smoked Salmon, Capers, and Lemon",
//     "calories": "934kcal",
//     "protein": "40g",
//     "fat": "12g",
//     "sodium": "1667mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bagels, white, plain, as purchased, commercial",
//     "calories": "244.27kcal",
//     "protein": "8.98g",
//     "fat": "1.7g",
//     "sodium": "470mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bagels, white, plain, toasted, commercial",
//     "calories": "263.1kcal",
//     "protein": "9.67g",
//     "fat": "1.83g",
//     "sodium": "506.25mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baguette Toasts",
//     "calories": "44kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "75mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baguette, Smoked Oyster, and Pancetta Stuffing",
//     "calories": "560kcal",
//     "protein": "15g",
//     "fat": "35g",
//     "sodium": "656mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baharat Seasoning",
//     "calories": "31kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bahian Chicken and Shrimp Stew",
//     "calories": "889kcal",
//     "protein": "63g",
//     "fat": "64g",
//     "sodium": "1097mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baileys Pudding Parfaits with Oatmeal-Walnut Crunch",
//     "calories": "664kcal",
//     "protein": "9g",
//     "fat": "36g",
//     "sodium": "156mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Alaska Peanut S'mores",
//     "calories": "380kcal",
//     "protein": "6g",
//     "fat": "24g",
//     "sodium": "191mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Apple, Raisin, and Brown Sugar Dumplings",
//     "calories": "765kcal",
//     "protein": "11g",
//     "fat": "32g",
//     "sodium": "710mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Apples Stuffed with Dried Fruit and Pecans",
//     "calories": "285kcal",
//     "protein": "1g",
//     "fat": "5g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Apples with Candied Fennel and Pistachios",
//     "calories": "386kcal",
//     "protein": "3g",
//     "fat": "11g",
//     "sodium": "21mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Apples with Cranberries, Raisins, and Apricots",
//     "calories": "469kcal",
//     "protein": "2g",
//     "fat": "12g",
//     "sodium": "16mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Apples with Dates, Almonds and Rum",
//     "calories": "588kcal",
//     "protein": "6g",
//     "fat": "25g",
//     "sodium": "19mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Apples with Raisins",
//     "calories": "357kcal",
//     "protein": "2g",
//     "fat": "8g",
//     "sodium": "14mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Apples with Toffee, Bourbon and Molasses",
//     "calories": "220kcal",
//     "protein": "0g",
//     "fat": "10g",
//     "sodium": "23mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Artichokes Stuffed with Anchovies and Garlic",
//     "calories": "438kcal",
//     "protein": "10g",
//     "fat": "29g",
//     "sodium": "581mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Baby Back Ribs with Lemon Confit Marinade",
//     "calories": "727kcal",
//     "protein": "55g",
//     "fat": "54g",
//     "sodium": "1682mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Bananas",
//     "calories": "150kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Bananas with Chocolate",
//     "calories": "278kcal",
//     "protein": "3g",
//     "fat": "14g",
//     "sodium": "10mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Bass with Fennel",
//     "calories": "707kcal",
//     "protein": "83g",
//     "fat": "21g",
//     "sodium": "406mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Beans",
//     "calories": "359kcal",
//     "protein": "14g",
//     "fat": "12g",
//     "sodium": "413mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Beans with Bacon and Brown Sugar",
//     "calories": "339kcal",
//     "protein": "17g",
//     "fat": "8g",
//     "sodium": "499mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Beans with Bacon Breadcrumbs",
//     "calories": "450kcal",
//     "protein": "17g",
//     "fat": "8g",
//     "sodium": "1552mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Beans with Slab Bacon and Breadcrumbs",
//     "calories": "473kcal",
//     "protein": "23g",
//     "fat": "19g",
//     "sodium": "971mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked beans, in tomato sauce, canned, composite",
//     "calories": "84.21kcal",
//     "protein": "5g",
//     "fat": "0.6g",
//     "sodium": "461.5mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked beans, in tomato sauce, canned, Oak",
//     "calories": "80.13kcal",
//     "protein": "5g",
//     "fat": "0.6g",
//     "sodium": "480mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked beans, in tomato sauce, canned, Pams",
//     "calories": "79.11kcal",
//     "protein": "5g",
//     "fat": "0.6g",
//     "sodium": "400mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked beans, in tomato sauce, canned, Wattie's",
//     "calories": "86.64kcal",
//     "protein": "5g",
//     "fat": "0.6g",
//     "sodium": "470mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Belgian Endive with Pecorino and Walnuts",
//     "calories": "166kcal",
//     "protein": "4g",
//     "fat": "14g",
//     "sodium": "108mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Breaded Cauliflower",
//     "calories": "311kcal",
//     "protein": "12g",
//     "fat": "20g",
//     "sodium": "577mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Butternut Squash with Apples and Maple Syrup",
//     "calories": "206kcal",
//     "protein": "2g",
//     "fat": "4g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Butternut Squash with Tomatoes and Pine Nuts",
//     "calories": "494kcal",
//     "protein": "11g",
//     "fat": "28g",
//     "sodium": "290mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Cabbage with Bacon",
//     "calories": "433kcal",
//     "protein": "13g",
//     "fat": "30g",
//     "sodium": "601mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Camembert with Hazelnut Crust",
//     "calories": "129kcal",
//     "protein": "7g",
//     "fat": "9g",
//     "sodium": "272mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Carrots with Cheese Sauce",
//     "calories": "585kcal",
//     "protein": "11g",
//     "fat": "47g",
//     "sodium": "416mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Cheddar Olives",
//     "calories": "167kcal",
//     "protein": "4g",
//     "fat": "12g",
//     "sodium": "377mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Cheese Grits",
//     "calories": "295kcal",
//     "protein": "12g",
//     "fat": "18g",
//     "sodium": "508mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Cherry Tomatoes with Parmesan Topping",
//     "calories": "60kcal",
//     "protein": "2g",
//     "fat": "4g",
//     "sodium": "345mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Chicken and Bacon-Wrapped Lady Apples",
//     "calories": "1084kcal",
//     "protein": "46g",
//     "fat": "64g",
//     "sodium": "860mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Chicken with Barbecue Sauce",
//     "calories": "961kcal",
//     "protein": "69g",
//     "fat": "69g",
//     "sodium": "984mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Chicken with White Beans and Tomatoes",
//     "calories": "2631kcal",
//     "protein": "162g",
//     "fat": "182g",
//     "sodium": "1828mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Clams Oreganata",
//     "calories": "16kcal",
//     "protein": "0g",
//     "fat": "1g",
//     "sodium": "15mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Cod and Potatoes with Horseradish Cream Sauce",
//     "calories": "724kcal",
//     "protein": "34g",
//     "fat": "52g",
//     "sodium": "685mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Corn with Thyme",
//     "calories": "190kcal",
//     "protein": "5g",
//     "fat": "9g",
//     "sodium": "74mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Crab, Brie, and Artichoke Dip",
//     "calories": "454kcal",
//     "protein": "31g",
//     "fat": "31g",
//     "sodium": "996mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Crottins with Sauteed Mushrooms",
//     "calories": "386kcal",
//     "protein": "13g",
//     "fat": "31g",
//     "sodium": "567mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Eggs and Mushrooms in Ham Crisps",
//     "calories": "280kcal",
//     "protein": "23g",
//     "fat": "18g",
//     "sodium": "882mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Eggs on Creamed Spinach",
//     "calories": "247kcal",
//     "protein": "12g",
//     "fat": "20g",
//     "sodium": "215mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Eggs with Merguez Sausage, Tomatoes, and Smoky Paprika",
//     "calories": "316kcal",
//     "protein": "15g",
//     "fat": "26g",
//     "sodium": "666mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Eggs with Spinach",
//     "calories": "229kcal",
//     "protein": "11g",
//     "fat": "18g",
//     "sodium": "483mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Eggs with Tomato-Ham Sauce and Asparagus",
//     "calories": "496kcal",
//     "protein": "36g",
//     "fat": "29g",
//     "sodium": "1866mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Endive with Pancetta and Parmesan Cheese",
//     "calories": "255kcal",
//     "protein": "11g",
//     "fat": "19g",
//     "sodium": "322mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Falafel With Orange-Tahini Sauce",
//     "calories": "870kcal",
//     "protein": "26g",
//     "fat": "51g",
//     "sodium": "1989mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Figs",
//     "calories": "561kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "32mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Figs with Grand Marnier and Whipped Cream",
//     "calories": "321kcal",
//     "protein": "2g",
//     "fat": "15g",
//     "sodium": "18mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Fish Fillets with Spinach-Pine Nut Topping",
//     "calories": "309kcal",
//     "protein": "41g",
//     "fat": "14g",
//     "sodium": "301mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Fish Sticks Diablo",
//     "calories": "427kcal",
//     "protein": "38g",
//     "fat": "22g",
//     "sodium": "330mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Fish with Mushrooms and Cream",
//     "calories": "674kcal",
//     "protein": "48g",
//     "fat": "43g",
//     "sodium": "478mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Fish with Paprika-Lemon Butter",
//     "calories": "218kcal",
//     "protein": "27g",
//     "fat": "11g",
//     "sodium": "392mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Fish with Ratatouille",
//     "calories": "339kcal",
//     "protein": "36g",
//     "fat": "15g",
//     "sodium": "257mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Fish with Thai Lemon Mint Sauce",
//     "calories": "427kcal",
//     "protein": "34g",
//     "fat": "21g",
//     "sodium": "556mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Flounder Fillets with Lemon-Pepper Vegetables",
//     "calories": "150kcal",
//     "protein": "2g",
//     "fat": "9g",
//     "sodium": "29mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Flounder Rolls with Tomato, Bell Pepper, and Bacon",
//     "calories": "262kcal",
//     "protein": "8g",
//     "fat": "15g",
//     "sodium": "2236mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked French Toast",
//     "calories": "224kcal",
//     "protein": "7g",
//     "fat": "16g",
//     "sodium": "144mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked French Toast with Cardamom and Marmalade",
//     "calories": "468kcal",
//     "protein": "8g",
//     "fat": "9g",
//     "sodium": "241mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Grits with Ham, Wild Mushrooms and Parmesan",
//     "calories": "466kcal",
//     "protein": "16g",
//     "fat": "33g",
//     "sodium": "995mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Halibut with Chopped Olive Salad",
//     "calories": "352kcal",
//     "protein": "32g",
//     "fat": "23g",
//     "sodium": "270mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Halibut with Orzo, Spinach, and Cherry Tomatoes",
//     "calories": "634kcal",
//     "protein": "44g",
//     "fat": "31g",
//     "sodium": "181mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Halibut with Paprika,olives and Mushrooms",
//     "calories": "320kcal",
//     "protein": "45g",
//     "fat": "12g",
//     "sodium": "286mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Halibut with Warm Sherry Onion Vinaigrette",
//     "calories": "349kcal",
//     "protein": "30g",
//     "fat": "22g",
//     "sodium": "147mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Ham",
//     "calories": "826kcal",
//     "protein": "63g",
//     "fat": "39g",
//     "sodium": "4056mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Ham with Cucumber, Tarragon, and Mushroom Sauce",
//     "calories": "467kcal",
//     "protein": "50g",
//     "fat": "26g",
//     "sodium": "4603mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Ham with Marmalade-Horseradish Glaze",
//     "calories": "560kcal",
//     "protein": "73g",
//     "fat": "10g",
//     "sodium": "3698mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Ham with Mustard and Marjoram",
//     "calories": "1162kcal",
//     "protein": "125g",
//     "fat": "58g",
//     "sodium": "5151mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Ham with Mustard-Red Currant Glaze and Rhubarb Chutney",
//     "calories": "995kcal",
//     "protein": "111g",
//     "fat": "51g",
//     "sodium": "4303mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Hawaiian Islands",
//     "calories": "966kcal",
//     "protein": "15g",
//     "fat": "39g",
//     "sodium": "1077mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Herb-Crusted Chicken Breasts",
//     "calories": "211kcal",
//     "protein": "7g",
//     "fat": "11g",
//     "sodium": "364mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Macaroni and Cheese",
//     "calories": "463kcal",
//     "protein": "19g",
//     "fat": "21g",
//     "sodium": "681mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Mashed Potatoes and Yams with Garlic and Parmesan",
//     "calories": "381kcal",
//     "protein": "10g",
//     "fat": "16g",
//     "sodium": "220mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Minty Rice with Feta and Pomegranate Relish",
//     "calories": "623kcal",
//     "protein": "11g",
//     "fat": "38g",
//     "sodium": "712mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Mushroom-Sesame Rice Balls",
//     "calories": "364kcal",
//     "protein": "9g",
//     "fat": "18g",
//     "sodium": "396mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Mustard-Crusted Salmon With Asparagus and Tarragon",
//     "calories": "486kcal",
//     "protein": "38g",
//     "fat": "34g",
//     "sodium": "576mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Oatmeal",
//     "calories": "264kcal",
//     "protein": "8g",
//     "fat": "13g",
//     "sodium": "307mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Orzo with Shrimp, Tomato Sauce, and Feta",
//     "calories": "636kcal",
//     "protein": "37g",
//     "fat": "24g",
//     "sodium": "1701mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Oysters in Jackets with Bacon Cognac Butter",
//     "calories": "115kcal",
//     "protein": "6g",
//     "fat": "8g",
//     "sodium": "115mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Oysters with Bacon",
//     "calories": "443kcal",
//     "protein": "29g",
//     "fat": "24g",
//     "sodium": "116178mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Oysters with Bacon and Leeks",
//     "calories": "396kcal",
//     "protein": "12g",
//     "fat": "32g",
//     "sodium": "398mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Pasta with Tomatoes, Shiitake Mushrooms, and Prosciutto",
//     "calories": "830kcal",
//     "protein": "42g",
//     "fat": "37g",
//     "sodium": "1624mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Pears with Amaretti Filling",
//     "calories": "233kcal",
//     "protein": "1g",
//     "fat": "10g",
//     "sodium": "28mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Pears with Currants and Cinnamon",
//     "calories": "260kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "23mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Pears with Honey and Ginger",
//     "calories": "472kcal",
//     "protein": "4g",
//     "fat": "18g",
//     "sodium": "64mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Peas with Tarragon, Yogurt, and Pistachios",
//     "calories": "252kcal",
//     "protein": "10g",
//     "fat": "16g",
//     "sodium": "322mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Pecan-Stuffed Nectarines",
//     "calories": "265kcal",
//     "protein": "4g",
//     "fat": "15g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Pork Ribs with Hoisin Barbecue Sauce",
//     "calories": "826kcal",
//     "protein": "60g",
//     "fat": "53g",
//     "sodium": "1248mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Potato Wedges with Seasoned Salt",
//     "calories": "791kcal",
//     "protein": "10g",
//     "fat": "50g",
//     "sodium": "2550mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Red Snapper with Fennel-Scented Tomato Sauce",
//     "calories": "528kcal",
//     "protein": "66g",
//     "fat": "18g",
//     "sodium": "1378mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Rice, Cheese and Vegetable Casserole",
//     "calories": "349kcal",
//     "protein": "12g",
//     "fat": "19g",
//     "sodium": "33mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Rigatoni alla Norma",
//     "calories": "930kcal",
//     "protein": "30g",
//     "fat": "56g",
//     "sodium": "978mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Rigatoni with Ham, Tomatoes and Feta Cheese",
//     "calories": "467kcal",
//     "protein": "22g",
//     "fat": "20g",
//     "sodium": "809mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Risotto with Roasted Vegetables",
//     "calories": "493kcal",
//     "protein": "9g",
//     "fat": "21g",
//     "sodium": "827mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Salmon with Cranberry-Thyme Crust",
//     "calories": "287kcal",
//     "protein": "13g",
//     "fat": "17g",
//     "sodium": "180mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Salmon with Mustard-Dill Sauce",
//     "calories": "475kcal",
//     "protein": "36g",
//     "fat": "34g",
//     "sodium": "211mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Salmon with Pernod",
//     "calories": "614kcal",
//     "protein": "42g",
//     "fat": "37g",
//     "sodium": "216mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Scallops with Herbed Breadcrumb Topping",
//     "calories": "490kcal",
//     "protein": "29g",
//     "fat": "17g",
//     "sodium": "1217mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Sea Bass in Herbed Salt Crust",
//     "calories": "398kcal",
//     "protein": "47g",
//     "fat": "5g",
//     "sodium": "55097mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Baked Sea Bass with Walnut-Breadcrumb Crust and Lemon-Dill Sauce",
//     "calories": "530kcal",
//     "protein": "41g",
//     "fat": "31g",
//     "sodium": "482mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Shrimp Toasts",
//     "calories": "45kcal",
//     "protein": "3g",
//     "fat": "1g",
//     "sodium": "140mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Smoked Ham with Mango",
//     "calories": "623kcal",
//     "protein": "83g",
//     "fat": "11g",
//     "sodium": "4085mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Spiced Butternut Squash with Apples and Maple Syrup",
//     "calories": "283kcal",
//     "protein": "2g",
//     "fat": "12g",
//     "sodium": "156mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Stuffed Mushrooms with Crab",
//     "calories": "419kcal",
//     "protein": "19g",
//     "fat": "35g",
//     "sodium": "831mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Stuffed Mussels",
//     "calories": "257kcal",
//     "protein": "18g",
//     "fat": "12g",
//     "sodium": "571mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Baked Sweet Potatoes Stuffed with Cranberries, Pears, and Pecans",
//     "calories": "486kcal",
//     "protein": "5g",
//     "fat": "16g",
//     "sodium": "169mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Swordfish with Olive Relish",
//     "calories": "366kcal",
//     "protein": "34g",
//     "fat": "24g",
//     "sodium": "393mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Tarragon Chicken Thompson",
//     "calories": "344kcal",
//     "protein": "54g",
//     "fat": "12g",
//     "sodium": "206mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Tomatoes",
//     "calories": "184kcal",
//     "protein": "4g",
//     "fat": "11g",
//     "sodium": "686mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Tomatoes Teagarden",
//     "calories": "160kcal",
//     "protein": "2g",
//     "fat": "14g",
//     "sodium": "109mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Tomatoes with Hazelnut Bread Crumbs",
//     "calories": "348kcal",
//     "protein": "12g",
//     "fat": "8g",
//     "sodium": "139mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Trout with Spinach-Butter Sauce",
//     "calories": "940kcal",
//     "protein": "91g",
//     "fat": "61g",
//     "sodium": "831mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Whitefish with Tomatoes and Garlic",
//     "calories": "356kcal",
//     "protein": "31g",
//     "fat": "24g",
//     "sodium": "219mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Whole Fish with Potatoes and Lemon",
//     "calories": "531kcal",
//     "protein": "48g",
//     "fat": "20g",
//     "sodium": "423mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Wild Rice Amandine",
//     "calories": "144kcal",
//     "protein": "5g",
//     "fat": "11g",
//     "sodium": "342mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Yams with Cinnamon-Chili Butter",
//     "calories": "299kcal",
//     "protein": "3g",
//     "fat": "16g",
//     "sodium": "272mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Yams with Ginger-Molasses Butter",
//     "calories": "392kcal",
//     "protein": "4g",
//     "fat": "15g",
//     "sodium": "137mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked Ziti with Mushrooms, Peppers, and Parmesan",
//     "calories": "485kcal",
//     "protein": "20g",
//     "fat": "20g",
//     "sodium": "314mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baked-Potato Buttermilk Biscuits",
//     "calories": "96kcal",
//     "protein": "2g",
//     "fat": "4g",
//     "sodium": "216mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baking powder",
//     "calories": "163.04kcal",
//     "protein": "5.69g",
//     "fat": "0g",
//     "sodium": "11800mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baking soda",
//     "calories": "0kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "27400mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baklava",
//     "calories": "352kcal",
//     "protein": "5g",
//     "fat": "21g",
//     "sodium": "89mg",
//     "status": "false1"
//   },
//   {
//     "food": "Balsamic and Fig Caramel Sauce",
//     "calories": "625kcal",
//     "protein": "2g",
//     "fat": "12g",
//     "sodium": "42mg",
//     "status": "false1"
//   },
//   {
//     "food": "Balsamic-Strawberry Pops",
//     "calories": "57kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baltimore Eggnog",
//     "calories": "232kcal",
//     "protein": "4g",
//     "fat": "9g",
//     "sodium": "52mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bamboo shoot, stem vegetable, shoot, canned, drained",
//     "calories": "15.38kcal",
//     "protein": "1.5g",
//     "fat": "0.4g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana and Blueberry Overnight Oats",
//     "calories": "820kcal",
//     "protein": "42g",
//     "fat": "26g",
//     "sodium": "213mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana and Mango Spring Rolls with Coconut-Chocolate Ganache",
//     "calories": "932kcal",
//     "protein": "7g",
//     "fat": "75g",
//     "sodium": "137mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Bread",
//     "calories": "274kcal",
//     "protein": "4g",
//     "fat": "10g",
//     "sodium": "185mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Bread Pudding with Rum Sauce",
//     "calories": "670kcal",
//     "protein": "11g",
//     "fat": "38g",
//     "sodium": "312mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Bread with Chocolate Chips and Walnuts",
//     "calories": "277kcal",
//     "protein": "4g",
//     "fat": "13g",
//     "sodium": "198mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Cake with Sour Cream Frosting",
//     "calories": "485kcal",
//     "protein": "6g",
//     "fat": "24g",
//     "sodium": "342mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Caramel Chocolate Pie",
//     "calories": "1069kcal",
//     "protein": "8g",
//     "fat": "50g",
//     "sodium": "161mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Chocolate Tart with Caramel and Chocolate Sauces",
//     "calories": "1111kcal",
//     "protein": "17g",
//     "fat": "23g",
//     "sodium": "58mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Chocolate Walnut Cake",
//     "calories": "538kcal",
//     "protein": "8g",
//     "fat": "28g",
//     "sodium": "335mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Clafouti",
//     "calories": "426kcal",
//     "protein": "10g",
//     "fat": "13g",
//     "sodium": "399mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Coconut Cream Pie",
//     "calories": "263kcal",
//     "protein": "5g",
//     "fat": "11g",
//     "sodium": "90mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Coconut Crunch Cake",
//     "calories": "669kcal",
//     "protein": "7g",
//     "fat": "37g",
//     "sodium": "358mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Coffee Cake Diamond",
//     "calories": "273kcal",
//     "protein": "4g",
//     "fat": "12g",
//     "sodium": "273mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Cream Pie",
//     "calories": "472kcal",
//     "protein": "5g",
//     "fat": "28g",
//     "sodium": "196mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Cream Pie with Chocolate-Chip-Cookie Crust",
//     "calories": "518kcal",
//     "protein": "7g",
//     "fat": "26g",
//     "sodium": "261mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Cream Pie with Salty Bourbon Caramel",
//     "calories": "642kcal",
//     "protein": "12g",
//     "fat": "38g",
//     "sodium": "328mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Cream Pie with Whole Grain Chocolate Crust",
//     "calories": "523kcal",
//     "protein": "8g",
//     "fat": "26g",
//     "sodium": "208mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Daiquiri",
//     "calories": "289kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "10mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Espresso Bread Pudding",
//     "calories": "702kcal",
//     "protein": "15g",
//     "fat": "33g",
//     "sodium": "331mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Fritters",
//     "calories": "736kcal",
//     "protein": "5g",
//     "fat": "38g",
//     "sodium": "224mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Layer Cake",
//     "calories": "751kcal",
//     "protein": "9g",
//     "fat": "41g",
//     "sodium": "544mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Layer Cake with Caramel Cream and Pecans",
//     "calories": "787kcal",
//     "protein": "9g",
//     "fat": "37g",
//     "sodium": "580mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Layer Cake with Cream Cheese Frosting",
//     "calories": "926kcal",
//     "protein": "9g",
//     "fat": "56g",
//     "sodium": "569mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Banana Layer Cake with White Chocolate-Cream Cheese Frosting and Walnuts",
//     "calories": "510kcal",
//     "protein": "7g",
//     "fat": "34g",
//     "sodium": "290mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Macadamia Pancakes with Orange Butter",
//     "calories": "165kcal",
//     "protein": "3g",
//     "fat": "10g",
//     "sodium": "194mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Oatmeal Chocolate Chip Cookies",
//     "calories": "107kcal",
//     "protein": "2g",
//     "fat": "3g",
//     "sodium": "22mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Orange Crepes",
//     "calories": "662kcal",
//     "protein": "14g",
//     "fat": "36g",
//     "sodium": "401mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana Pancakes with Caramel-Banana Syrup",
//     "calories": "760kcal",
//     "protein": "15g",
//     "fat": "27g",
//     "sodium": "1030mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banana-Walnut Spring Rolls with Caramel-Rum Sauce",
//     "calories": "704kcal",
//     "protein": "10g",
//     "fat": "34g",
//     "sodium": "398mg",
//     "status": "false1"
//   },
//   {
//     "food": "Banoffee Pie",
//     "calories": "688kcal",
//     "protein": "11g",
//     "fat": "36g",
//     "sodium": "215mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bantam Corn Relish",
//     "calories": "275kcal",
//     "protein": "5g",
//     "fat": "2g",
//     "sodium": "800mg",
//     "status": "false1"
//   },
//   {
//     "food": "Barba Yianni's Grilled Lamb",
//     "calories": "1068kcal",
//     "protein": "50g",
//     "fat": "93g",
//     "sodium": "560mg",
//     "status": "false1"
//   },
//   {
//     "food": "Barbary Coast",
//     "calories": "333kcal",
//     "protein": "1g",
//     "fat": "11g",
//     "sodium": "14mg",
//     "status": "false1"
//   },
//   {
//     "food": "Barbecue Chicken Meatballs",
//     "calories": "297kcal",
//     "protein": "16g",
//     "fat": "12g",
//     "sodium": "966mg",
//     "status": "false1"
//   },
//   {
//     "food": "Barbecue Chicken Pizza",
//     "calories": "809kcal",
//     "protein": "47g",
//     "fat": "35g",
//     "sodium": "1541mg",
//     "status": "false1"
//   },
//   {
//     "food": "Barbecue Glazed Chicken",
//     "calories": "1176kcal",
//     "protein": "73g",
//     "fat": "69g",
//     "sodium": "1046mg",
//     "status": "false1"
//   },
//   {
//     "food": "Barley and Lentil Soup",
//     "calories": "312kcal",
//     "protein": "16g",
//     "fat": "7g",
//     "sodium": "2715mg",
//     "status": "false1"
//   },
//   {
//     "food": "Basic French Vinaigrette",
//     "calories": "161kcal",
//     "protein": "0g",
//     "fat": "18g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Basic Green Chile",
//     "calories": "111kcal",
//     "protein": "6g",
//     "fat": "2g",
//     "sodium": "1206mg",
//     "status": "false1"
//   },
//   {
//     "food": "Basic Italian Salad Dressing",
//     "calories": "185kcal",
//     "protein": "0g",
//     "fat": "20g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Basic Mashed Potatoes",
//     "calories": "268kcal",
//     "protein": "6g",
//     "fat": "11g",
//     "sodium": "65mg",
//     "status": "false1"
//   },
//   {
//     "food": "Basic Polenta",
//     "calories": "194kcal",
//     "protein": "4g",
//     "fat": "1g",
//     "sodium": "791mg",
//     "status": "false1"
//   },
//   {
//     "food": "Basic Tomato Sauce",
//     "calories": "102kcal",
//     "protein": "2g",
//     "fat": "7g",
//     "sodium": "523mg",
//     "status": "false1"
//   },
//   {
//     "food": "Basic Veal Stock",
//     "calories": "38kcal",
//     "protein": "3g",
//     "fat": "2g",
//     "sodium": "42mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bass with Herbed Rice and Coconut-Vegetable Chowder",
//     "calories": "5474kcal",
//     "protein": "898g",
//     "fat": "150g",
//     "sodium": "4094mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bavarian Cream with Raspberry Coulis",
//     "calories": "256kcal",
//     "protein": "6g",
//     "fat": "11g",
//     "sodium": "42mg",
//     "status": "false1"
//   },
//   {
//     "food": "Baxters dogfish, flesh, raw",
//     "calories": "80.6kcal",
//     "protein": "17.5g",
//     "fat": "0.95g",
//     "sodium": "157mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bay Scallops with Polenta, Wild Mushrooms, Sherry, and Parsley Bread Crumbs",
//     "calories": "543kcal",
//     "protein": "16g",
//     "fat": "32g",
//     "sodium": "895mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bayou Pepper Relish",
//     "calories": "324kcal",
//     "protein": "4g",
//     "fat": "1g",
//     "sodium": "1412mg",
//     "status": "false1"
//   },
//   {
//     "food": "BBQ Beef Brisket",
//     "calories": "1078kcal",
//     "protein": "61g",
//     "fat": "76g",
//     "sodium": "1017mg",
//     "status": "false1"
//   },
//   {
//     "food": "BBQ Beef Coffee Cure",
//     "calories": "41kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "2323mg",
//     "status": "false1"
//   },
//   {
//     "food": "BBQ Eggplant Sandwiches with Provolone and Mushrooms",
//     "calories": "219kcal",
//     "protein": "7g",
//     "fat": "17g",
//     "sodium": "579mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bbq Onion and Smoked Gouda Quesadillas with Pea Shoot Mini Salad",
//     "calories": "763kcal",
//     "protein": "24g",
//     "fat": "44g",
//     "sodium": "1486mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bbq Onion Steaks with Honey-Mustard Sauce",
//     "calories": "317kcal",
//     "protein": "3g",
//     "fat": "20g",
//     "sodium": "212mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bean Burrito Casserole",
//     "calories": "656kcal",
//     "protein": "27g",
//     "fat": "24g",
//     "sodium": "1102mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bean Thread Noodles with Beef and Asian Pear",
//     "calories": "499kcal",
//     "protein": "27g",
//     "fat": "24g",
//     "sodium": "1995mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bean Thread Noodles with Pickled Vegetables",
//     "calories": "514kcal",
//     "protein": "10g",
//     "fat": "28g",
//     "sodium": "1473mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bean, black, seed, dry",
//     "calories": "323.2kcal",
//     "protein": "21.63g",
//     "fat": "1.42g",
//     "sodium": "5mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bean, butter bean, fruit vegetable, frozen, seeds with pod, steamed or microwaved, no salt added",
//     "calories": "37.55kcal",
//     "protein": "2.2g",
//     "fat": "0.5g",
//     "sodium": "2.62mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bean, butter bean, fruit vegetable, seeds with pod, frozen, boiled, drained, no salt added",
//     "calories": "29.84kcal",
//     "protein": "1.68g",
//     "fat": "0.2g",
//     "sodium": "2.19mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bean, butter bean, fruit vegetable, seeds with pod, frozen, unprepared, composite",
//     "calories": "30.14kcal",
//     "protein": "1.75g",
//     "fat": "0.2g",
//     "sodium": "2.3mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bean, cannellini bean, seed, in brine, canned, drained, composite",
//     "calories": "79.53kcal",
//     "protein": "6.74g",
//     "fat": "1g",
//     "sodium": "210mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bean, chickpea, seed, in brine, canned, drained, composite",
//     "calories": "106.01kcal",
//     "protein": "7.23g",
//     "fat": "2g",
//     "sodium": "156mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bean, fruit vegetable, seeds with pod, boiled, drained, no salt added, butterbean",
//     "calories": "25.65kcal",
//     "protein": "2.31g",
//     "fat": "0.2g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bean, fruit vegetable, seeds with pod, fresh, boiled, drained, no salt added,  green runner or dwarf",
//     "calories": "33.23kcal",
//     "protein": "2.06g",
//     "fat": "0.19g",
//     "sodium": "0mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bean, fruit vegetable, seeds with pod, fresh, raw, green runner or dwarf",
//     "calories": "34.19kcal",
//     "protein": "2.13g",
//     "fat": "0.2g",
//     "sodium": "0mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bean, fruit vegetable, seeds with pod, fresh, steamed,  green runner or dwarf",
//     "calories": "35.46kcal",
//     "protein": "2.2g",
//     "fat": "0.21g",
//     "sodium": "0mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bean, fruit vegetable, seeds with pod, frozen, raw, green",
//     "calories": "24.25kcal",
//     "protein": "1.25g",
//     "fat": "0.2g",
//     "sodium": "3.17mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bean, fruit vegetable, seeds with pod, raw, butterbean",
//     "calories": "26.22kcal",
//     "protein": "2.31g",
//     "fat": "0.2g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bean, fruit vegetable, seeds with pod, raw, wax",
//     "calories": "23.85kcal",
//     "protein": "1.25g",
//     "fat": "0.2g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bean, green, fruit vegetable, seeds with pod, frozen, boiled, drained, no salt added",
//     "calories": "31.09kcal",
//     "protein": "1.94g",
//     "fat": "0.2g",
//     "sodium": "1.75mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bean, green, fruit vegetable, seeds with pod, frozen, steamed or microwaved, no salt added",
//     "calories": "36.96kcal",
//     "protein": "2.26g",
//     "fat": "0.4g",
//     "sodium": "2.01mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bean, green, fruit vegetable, seeds with pod, frozen, unprepared, composite",
//     "calories": "34.53kcal",
//     "protein": "2.33g",
//     "fat": "0.3g",
//     "sodium": "1.8mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bean, in chilli sauce, seed, canned, undrained, Chilli beans, composite",
//     "calories": "91.76kcal",
//     "protein": "5.35g",
//     "fat": "1g",
//     "sodium": "230mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bean, mixed beans, seed, in brine, canned, drained, composite",
//     "calories": "85.82kcal",
//     "protein": "6.92g",
//     "fat": "1g",
//     "sodium": "133mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bean, red kidney bean, seed, in brine, canned, drained, composite",
//     "calories": "85.51kcal",
//     "protein": "7.23g",
//     "fat": "1g",
//     "sodium": "150mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bean, seed vegetable, boiled, drained, haricot",
//     "calories": "110.03kcal",
//     "protein": "6.63g",
//     "fat": "0.5g",
//     "sodium": "15mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bean, seed vegetable, boiled, drained, no salt added, adzuki",
//     "calories": "119.64kcal",
//     "protein": "7.5g",
//     "fat": "0.1g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bean, seed vegetable, boiled, drained, no salt added, black",
//     "calories": "117.31kcal",
//     "protein": "8.88g",
//     "fat": "0.54g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bean, seed vegetable, boiled, drained, no salt added, broad",
//     "calories": "67.36kcal",
//     "protein": "5.31g",
//     "fat": "0.3g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bean, seed vegetable, dried, boiled, drained, no salt added, lima",
//     "calories": "102.23kcal",
//     "protein": "6.38g",
//     "fat": "0.3g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bean, seed vegetable, dried, boiled, drained, red kidney",
//     "calories": "87.24kcal",
//     "protein": "7.88g",
//     "fat": "0.5g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bean, seed vegetable, dried, soy",
//     "calories": "369.9kcal",
//     "protein": "36.37g",
//     "fat": "18.66g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bean, seed vegetable, dry, red kidney",
//     "calories": "318.96kcal",
//     "protein": "22.5g",
//     "fat": "1.4g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bean, seed vegetable, frozen, raw, broad",
//     "calories": "69.65kcal",
//     "protein": "5.31g",
//     "fat": "0.3g",
//     "sodium": "6.4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bean, seed vegetable, seed, dried, haricot",
//     "calories": "305.28kcal",
//     "protein": "21.38g",
//     "fat": "1.6g",
//     "sodium": "43mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bean, seed vegetable, seed, dry, mung",
//     "calories": "307.37kcal",
//     "protein": "26.81g",
//     "fat": "1.1g",
//     "sodium": "12mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bean, soy, (edamame), seed vegetable, green, immature, shelled, frozen, boiled, drained, no salt added",
//     "calories": "128.07kcal",
//     "protein": "11.59g",
//     "fat": "6.4g",
//     "sodium": "9.41mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bean, soy, (edamame), seed vegetable, green, immature, shelled, frozen, steamed or microwaved, no salt added",
//     "calories": "145.17kcal",
//     "protein": "12.16g",
//     "fat": "7.7g",
//     "sodium": "11.38mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bean, soy, (edamame), seed vegetable, green, immature, shelled, frozen, unprepared, composite",
//     "calories": "130.35kcal",
//     "protein": "12.34g",
//     "fat": "6.35g",
//     "sodium": "10.7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beans with Kale and Portuguese Sausage",
//     "calories": "316kcal",
//     "protein": "9g",
//     "fat": "15g",
//     "sodium": "267mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bedouin Salsa",
//     "calories": "155kcal",
//     "protein": "1g",
//     "fat": "14g",
//     "sodium": "492mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef and Andouille Burgers with Asiago Cheese",
//     "calories": "1097kcal",
//     "protein": "52g",
//     "fat": "77g",
//     "sodium": "1917mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef and Avocado Fajitas",
//     "calories": "948kcal",
//     "protein": "52g",
//     "fat": "45g",
//     "sodium": "2134mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef and Barley Soup",
//     "calories": "376kcal",
//     "protein": "22g",
//     "fat": "19g",
//     "sodium": "682mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef and Broccoli Stir Fry",
//     "calories": "352kcal",
//     "protein": "31g",
//     "fat": "17g",
//     "sodium": "1003mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef and Broccoli Stir-Fry",
//     "calories": "316kcal",
//     "protein": "28g",
//     "fat": "19g",
//     "sodium": "1268mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef and Broccoli Wontons with Ginger Dipping Sauce",
//     "calories": "45kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "166mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef and Carrot Stew with Dark Beer",
//     "calories": "647kcal",
//     "protein": "46g",
//     "fat": "43g",
//     "sodium": "384mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef and Dark Beer Chili",
//     "calories": "564kcal",
//     "protein": "60g",
//     "fat": "16g",
//     "sodium": "910mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef and Green Pepper Stir-Fry",
//     "calories": "719kcal",
//     "protein": "27g",
//     "fat": "59g",
//     "sodium": "1283mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef and Mushroom Stew",
//     "calories": "694kcal",
//     "protein": "50g",
//     "fat": "48g",
//     "sodium": "170mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef and Orange Salad with Red Onion Mustard Vinaigrette",
//     "calories": "694kcal",
//     "protein": "37g",
//     "fat": "52g",
//     "sodium": "178mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef and Pork Stew (Marosszeki Heranytokany)",
//     "calories": "603kcal",
//     "protein": "54g",
//     "fat": "36g",
//     "sodium": "370mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef and Potato Pasties",
//     "calories": "356kcal",
//     "protein": "24g",
//     "fat": "21g",
//     "sodium": "241mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef and Sausage Meat Loaf with Mozzarella",
//     "calories": "668kcal",
//     "protein": "55g",
//     "fat": "34g",
//     "sodium": "1586mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef and Snow Peas with Panfried Noodles",
//     "calories": "645kcal",
//     "protein": "35g",
//     "fat": "32g",
//     "sodium": "436mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef and Wild Mushrooms",
//     "calories": "799kcal",
//     "protein": "57g",
//     "fat": "50g",
//     "sodium": "1140mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Aspic",
//     "calories": "290kcal",
//     "protein": "43g",
//     "fat": "8g",
//     "sodium": "1039mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Barley Soup with Wild Mushrooms and Parsnips",
//     "calories": "603kcal",
//     "protein": "55g",
//     "fat": "15g",
//     "sodium": "1157mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Bone Broth",
//     "calories": "318kcal",
//     "protein": "28g",
//     "fat": "17g",
//     "sodium": "373mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Bourguignon",
//     "calories": "561kcal",
//     "protein": "39g",
//     "fat": "21g",
//     "sodium": "467mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Bourguignonne Pot Pie",
//     "calories": "543kcal",
//     "protein": "33g",
//     "fat": "34g",
//     "sodium": "305mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Braised in Red Wine",
//     "calories": "1050kcal",
//     "protein": "69g",
//     "fat": "76g",
//     "sodium": "1093mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Brisket Braised with Dried Fruit, Yams and Carrots",
//     "calories": "1107kcal",
//     "protein": "48g",
//     "fat": "58g",
//     "sodium": "340mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Brisket with Merlot and Prunes",
//     "calories": "928kcal",
//     "protein": "47g",
//     "fat": "58g",
//     "sodium": "177mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Brisket with Pearl Onions and Baby Carrots",
//     "calories": "1161kcal",
//     "protein": "59g",
//     "fat": "71g",
//     "sodium": "587mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Carbonnade",
//     "calories": "436kcal",
//     "protein": "52g",
//     "fat": "19g",
//     "sodium": "845mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Carpaccio with Orange-Olive Salsa and Shaved Cheese",
//     "calories": "265kcal",
//     "protein": "13g",
//     "fat": "21g",
//     "sodium": "313mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Beef Cheeks Braised in Red Wine with Orange Zest (Joues de Boeuf aux Agrumes)",
//     "calories": "948kcal",
//     "protein": "43g",
//     "fat": "58g",
//     "sodium": "232mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Chili with Chipotle Chilies and Cilantro",
//     "calories": "794kcal",
//     "protein": "67g",
//     "fat": "49g",
//     "sodium": "861mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Rolls with Ham and Vegetables Stuffing",
//     "calories": "530kcal",
//     "protein": "36g",
//     "fat": "35g",
//     "sodium": "1258mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Rolls with Parmesan, Pine Nuts, Olives, and Capers",
//     "calories": "459kcal",
//     "protein": "30g",
//     "fat": "33g",
//     "sodium": "512mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Satay",
//     "calories": "43kcal",
//     "protein": "5g",
//     "fat": "1g",
//     "sodium": "92mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Sates with Peanut Sauce",
//     "calories": "169kcal",
//     "protein": "7g",
//     "fat": "14g",
//     "sodium": "171mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Sates with Southeast Asian Sauce",
//     "calories": "167kcal",
//     "protein": "8g",
//     "fat": "14g",
//     "sodium": "215mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Tenderloin and Vegetable Pot Pies",
//     "calories": "1750kcal",
//     "protein": "79g",
//     "fat": "135g",
//     "sodium": "1645mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Tenderloin in Herbed Salt Crust",
//     "calories": "469kcal",
//     "protein": "34g",
//     "fat": "36g",
//     "sodium": "45240mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Tenderloin Salad",
//     "calories": "903kcal",
//     "protein": "30g",
//     "fat": "80g",
//     "sodium": "235mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Tenderloin Steaks on Potato Galettes with Mustard Sauce",
//     "calories": "1230kcal",
//     "protein": "51g",
//     "fat": "79g",
//     "sodium": "1251mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Tenderloin Steaks Stuffed with Morels",
//     "calories": "878kcal",
//     "protein": "48g",
//     "fat": "61g",
//     "sodium": "251mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Tenderloin Steaks with Chili Sauce",
//     "calories": "708kcal",
//     "protein": "38g",
//     "fat": "52g",
//     "sodium": "340mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Tenderloin Steaks with Mustard-Cognac Sauce",
//     "calories": "785kcal",
//     "protein": "46g",
//     "fat": "58g",
//     "sodium": "204mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Tenderloin Steaks with Port-Rosemary Sauce",
//     "calories": "708kcal",
//     "protein": "41g",
//     "fat": "51g",
//     "sodium": "331mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Tenderloin Steaks with Smoky Bacon-Bourbon Sauce",
//     "calories": "462kcal",
//     "protein": "19g",
//     "fat": "34g",
//     "sodium": "861mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Tenderloin with Garlic and Brandy",
//     "calories": "174kcal",
//     "protein": "11g",
//     "fat": "12g",
//     "sodium": "176mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Tenderloin with Garlic Horseradish Cream",
//     "calories": "688kcal",
//     "protein": "37g",
//     "fat": "55g",
//     "sodium": "947mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Tenderloin with Goat Cheese Sauce",
//     "calories": "788kcal",
//     "protein": "49g",
//     "fat": "56g",
//     "sodium": "250mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Tenderloin with Port-Balsamic Sauce",
//     "calories": "941kcal",
//     "protein": "46g",
//     "fat": "65g",
//     "sodium": "128mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Beef Tenderloin with Red Wine Sauce, Creamed Spinach, and Truffled French Fries",
//     "calories": "703kcal",
//     "protein": "37g",
//     "fat": "43g",
//     "sodium": "422mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Tenderloin with Red-Wine and Marrow Sauce",
//     "calories": "1973kcal",
//     "protein": "34g",
//     "fat": "194g",
//     "sodium": "440mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Tenderloin with Roasted Shallots, Bacon and Port",
//     "calories": "297kcal",
//     "protein": "11g",
//     "fat": "21g",
//     "sodium": "596mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Tenderloin with Salsa Verde",
//     "calories": "732kcal",
//     "protein": "38g",
//     "fat": "63g",
//     "sodium": "2072mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Tenderloin with Smoked Paprika Mayonnaise",
//     "calories": "596kcal",
//     "protein": "34g",
//     "fat": "50g",
//     "sodium": "221mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Tenderloin with Spring Vegetables",
//     "calories": "935kcal",
//     "protein": "51g",
//     "fat": "73g",
//     "sodium": "693mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef Wellingtons with Gorgonzola",
//     "calories": "1221kcal",
//     "protein": "49g",
//     "fat": "86g",
//     "sodium": "613mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef with Mushrooms and Glazed Onions",
//     "calories": "981kcal",
//     "protein": "74g",
//     "fat": "61g",
//     "sodium": "873mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef, Barley, and Vegetable Soup",
//     "calories": "299kcal",
//     "protein": "25g",
//     "fat": "12g",
//     "sodium": "589mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef, Black Bean, and Corn Nachos",
//     "calories": "543kcal",
//     "protein": "31g",
//     "fat": "31g",
//     "sodium": "754mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef, black bean, stir fry, Chinese, takeaway",
//     "calories": "88.52kcal",
//     "protein": "6.25g",
//     "fat": "5.76g",
//     "sodium": "533.63mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beef, corned silverside, raw, composite",
//     "calories": "109.43kcal",
//     "protein": "14.5g",
//     "fat": "5.7g",
//     "sodium": "1330mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beefsteak Bismarck",
//     "calories": "633kcal",
//     "protein": "39g",
//     "fat": "51g",
//     "sodium": "734mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beer and Molasses Barbecue Sauce",
//     "calories": "309kcal",
//     "protein": "3g",
//     "fat": "1g",
//     "sodium": "1573mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beer Crackers Topped with Garlic and Three Cheeses",
//     "calories": "248kcal",
//     "protein": "12g",
//     "fat": "10g",
//     "sodium": "611mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beer Margaritas",
//     "calories": "117kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "5649mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beer, extra stout",
//     "calories": "46.94kcal",
//     "protein": "0.31g",
//     "fat": "0g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beer, stout",
//     "calories": "31.13kcal",
//     "protein": "0.31g",
//     "fat": "0g",
//     "sodium": "23mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beer-Basted Chicken with Asian Flavors",
//     "calories": "1101kcal",
//     "protein": "88g",
//     "fat": "72g",
//     "sodium": "2078mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beer-Battered Catfish on Vinegar Slaw",
//     "calories": "835kcal",
//     "protein": "18g",
//     "fat": "61g",
//     "sodium": "695mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beer-Battered Fish with Smoked-Paprika Mayonnaise",
//     "calories": "768kcal",
//     "protein": "30g",
//     "fat": "61g",
//     "sodium": "926mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beer-Batter-Fried Sardines and Lime",
//     "calories": "497kcal",
//     "protein": "17g",
//     "fat": "33g",
//     "sodium": "748mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beer-Braised Beef and Onions",
//     "calories": "1040kcal",
//     "protein": "74g",
//     "fat": "69g",
//     "sodium": "264mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beer-Braised Brisket",
//     "calories": "994kcal",
//     "protein": "61g",
//     "fat": "78g",
//     "sodium": "2110mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beer-Braised Brisket with Onions",
//     "calories": "257kcal",
//     "protein": "12g",
//     "fat": "16g",
//     "sodium": "681mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beer-Braised Brisket with Root Vegetables",
//     "calories": "868kcal",
//     "protein": "41g",
//     "fat": "54g",
//     "sodium": "314mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beer-Braised Carnitas",
//     "calories": "318kcal",
//     "protein": "22g",
//     "fat": "23g",
//     "sodium": "631mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beer-Braised Hot Dogs with Braised Sauerkraut",
//     "calories": "210kcal",
//     "protein": "6g",
//     "fat": "4g",
//     "sodium": "777mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beer-Braised Pork Belly",
//     "calories": "1139kcal",
//     "protein": "18g",
//     "fat": "106g",
//     "sodium": "86mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beer-Brined Grilled Pork Chops",
//     "calories": "429kcal",
//     "protein": "42g",
//     "fat": "18g",
//     "sodium": "3886mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beer-Can Cabbage",
//     "calories": "234kcal",
//     "protein": "4g",
//     "fat": "4g",
//     "sodium": "909mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beer-Can Cabbage Sandwiches",
//     "calories": "793kcal",
//     "protein": "24g",
//     "fat": "35g",
//     "sodium": "1959mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beer-Marinated Flank Steak with Aji and Guacamole",
//     "calories": "498kcal",
//     "protein": "44g",
//     "fat": "26g",
//     "sodium": "373mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beer-Marinated Pork Tenderloin with Red Cabbage",
//     "calories": "452kcal",
//     "protein": "41g",
//     "fat": "23g",
//     "sodium": "701mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beer-Marinated Steaks with Peppercorn Sauce",
//     "calories": "1016kcal",
//     "protein": "70g",
//     "fat": "67g",
//     "sodium": "678mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Beer-Marinated Tri-Tip with Blue Cheese, Wild Mushrooms, and Onions",
//     "calories": "1208kcal",
//     "protein": "71g",
//     "fat": "80g",
//     "sodium": "726mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bee's Knees",
//     "calories": "136kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beet and Arugula Salad",
//     "calories": "309kcal",
//     "protein": "4g",
//     "fat": "28g",
//     "sodium": "110mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beet and Braised Beef Soup",
//     "calories": "1140kcal",
//     "protein": "44g",
//     "fat": "83g",
//     "sodium": "695mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beet and Cabbage Borscht",
//     "calories": "530kcal",
//     "protein": "20g",
//     "fat": "27g",
//     "sodium": "655mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beet and Carrot Salad with Coriander and Sesame Salt",
//     "calories": "139kcal",
//     "protein": "2g",
//     "fat": "11g",
//     "sodium": "320mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beet and Cucumber Salad with Creamy Horseradish Dressing",
//     "calories": "337kcal",
//     "protein": "11g",
//     "fat": "14g",
//     "sodium": "111mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beet and Endive Salad",
//     "calories": "245kcal",
//     "protein": "5g",
//     "fat": "21g",
//     "sodium": "237mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beet and Goat Cheese Salad with Pistachios",
//     "calories": "198kcal",
//     "protein": "6g",
//     "fat": "12g",
//     "sodium": "402mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beet and Goat Cheese Tartines",
//     "calories": "287kcal",
//     "protein": "11g",
//     "fat": "16g",
//     "sodium": "375mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beet Cured Lox",
//     "calories": "324kcal",
//     "protein": "25g",
//     "fat": "16g",
//     "sodium": "15350mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beet Horseradish Sauce",
//     "calories": "60kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "588mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Beet Ravioli with Pine Nut \"Goat Cheese\" Rosemary-Cream Sauce, Aged Balsamic Vinegar",
//     "calories": "266kcal",
//     "protein": "6g",
//     "fat": "21g",
//     "sodium": "880mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beet Risotto",
//     "calories": "584kcal",
//     "protein": "11g",
//     "fat": "18g",
//     "sodium": "1986mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beet Salad with Plums and Goat Cheese",
//     "calories": "255kcal",
//     "protein": "6g",
//     "fat": "22g",
//     "sodium": "131mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beet Salad with Ricotta Salata and Black Olive Croutons",
//     "calories": "191kcal",
//     "protein": "6g",
//     "fat": "10g",
//     "sodium": "373mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beet Soup with Horseradish Cream",
//     "calories": "165kcal",
//     "protein": "2g",
//     "fat": "14g",
//     "sodium": "370mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beet, Avocado and Pink Grapefruit Salad with Sherry Dressing",
//     "calories": "330kcal",
//     "protein": "4g",
//     "fat": "26g",
//     "sodium": "60mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beet, Cucumber, and Sweet Onion Salad with Dijon-Honey Dressing",
//     "calories": "163kcal",
//     "protein": "1g",
//     "fat": "12g",
//     "sodium": "56mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beet, Fennel and Watercress Salad",
//     "calories": "207kcal",
//     "protein": "2g",
//     "fat": "18g",
//     "sodium": "66mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beet, Mint, and Goat Cheese Salad",
//     "calories": "681kcal",
//     "protein": "28g",
//     "fat": "43g",
//     "sodium": "1360mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beet, Walnut and Gorgonzola Salad",
//     "calories": "279kcal",
//     "protein": "6g",
//     "fat": "23g",
//     "sodium": "224mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beetroot, preserved, McDonald's",
//     "calories": "37.6kcal",
//     "protein": "0.75g",
//     "fat": "0g",
//     "sodium": "314mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beetroot, root vegetable, peeled, fresh, raw",
//     "calories": "31.5kcal",
//     "protein": "1.43g",
//     "fat": "0.1g",
//     "sodium": "56mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Beetroot, root vegetable, peeled, fresh, roasted, no salt added, composite",
//     "calories": "39.03kcal",
//     "protein": "1.69g",
//     "fat": "0.2g",
//     "sodium": "66.63mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Beetroot, root vegetable, taproot, canned in water, sliced, drained, composite",
//     "calories": "51.7kcal",
//     "protein": "0.99g",
//     "fat": "0.2g",
//     "sodium": "220mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beets in Orange Sauce",
//     "calories": "151kcal",
//     "protein": "2g",
//     "fat": "6g",
//     "sodium": "85mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beets with Balsamic Vinegar",
//     "calories": "329kcal",
//     "protein": "4g",
//     "fat": "24g",
//     "sodium": "661mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beets with Garlic-Walnut Sauce",
//     "calories": "421kcal",
//     "protein": "8g",
//     "fat": "24g",
//     "sodium": "373mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beets with Mint and Yogurt",
//     "calories": "91kcal",
//     "protein": "4g",
//     "fat": "5g",
//     "sodium": "407mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beets with Stout and Sauteed Beet Greens",
//     "calories": "176kcal",
//     "protein": "12g",
//     "fat": "7g",
//     "sodium": "1353mg",
//     "status": "false1"
//   },
//   {
//     "food": "Belgian Ale-Braised Brisket",
//     "calories": "759kcal",
//     "protein": "44g",
//     "fat": "54g",
//     "sodium": "466mg",
//     "status": "false1"
//   },
//   {
//     "food": "Belgian Endive and Walnut Salad (Insalata Belga e Noci)",
//     "calories": "158kcal",
//     "protein": "1g",
//     "fat": "13g",
//     "sodium": "330mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Belgian Endive, Fuyu Persimmon, and Baby Spinach Salad with Honey Mustard Vinaigrette",
//     "calories": "147kcal",
//     "protein": "7g",
//     "fat": "11g",
//     "sodium": "481mg",
//     "status": "false1"
//   },
//   {
//     "food": "Belgian Leek Tart with Aged Goat Cheese (Flamiche Aux Poireaux)",
//     "calories": "500kcal",
//     "protein": "10g",
//     "fat": "39g",
//     "sodium": "500mg",
//     "status": "false1"
//   },
//   {
//     "food": "Belgian Tomatoes",
//     "calories": "129kcal",
//     "protein": "2g",
//     "fat": "10g",
//     "sodium": "393mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bell Pepper and Dried Apricot Chutney",
//     "calories": "195kcal",
//     "protein": "2g",
//     "fat": "0g",
//     "sodium": "156mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bell Pepper and Rice Pilaf",
//     "calories": "323kcal",
//     "protein": "7g",
//     "fat": "10g",
//     "sodium": "49mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bell Pepper and Tomato Relish",
//     "calories": "178kcal",
//     "protein": "2g",
//     "fat": "14g",
//     "sodium": "11mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bell Pepper, Red Onion, and Goat Cheese Pizza",
//     "calories": "431kcal",
//     "protein": "15g",
//     "fat": "24g",
//     "sodium": "610mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bellini Bar",
//     "calories": "193kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "11mg",
//     "status": "false1"
//   },
//   {
//     "food": "Belly Acres' Better Burger",
//     "calories": "627kcal",
//     "protein": "31g",
//     "fat": "44g",
//     "sodium": "1299mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bengali-Style Fish in Yogurt Curry",
//     "calories": "313kcal",
//     "protein": "19g",
//     "fat": "24g",
//     "sodium": "468mg",
//     "status": "false1"
//   },
//   {
//     "food": "Benne Seed Pita Toasts",
//     "calories": "19kcal",
//     "protein": "0g",
//     "fat": "2g",
//     "sodium": "15mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bennett",
//     "calories": "179kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ben's Chunky Applesauce",
//     "calories": "309kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Berbere-Crusted Rack of Lamb",
//     "calories": "1597kcal",
//     "protein": "51g",
//     "fat": "151g",
//     "sodium": "319mg",
//     "status": "false1"
//   },
//   {
//     "food": "Berry-Brandy Toddies with Raspberries and Cream",
//     "calories": "119kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Berrymisu",
//     "calories": "447kcal",
//     "protein": "5g",
//     "fat": "26g",
//     "sodium": "239mg",
//     "status": "false1"
//   },
//   {
//     "food": "Berry-Vodka Cooler",
//     "calories": "257kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "17mg",
//     "status": "false1"
//   },
//   {
//     "food": "Berry-Yogurt Smoothie",
//     "calories": "326kcal",
//     "protein": "12g",
//     "fat": "5g",
//     "sodium": "135mg",
//     "status": "false1"
//   },
//   {
//     "food": "Best Friends Forever Brownies",
//     "calories": "229kcal",
//     "protein": "4g",
//     "fat": "14g",
//     "sodium": "89mg",
//     "status": "false1"
//   },
//   {
//     "food": "Best-Ever Barbecued Ribs",
//     "calories": "1115kcal",
//     "protein": "87g",
//     "fat": "75g",
//     "sodium": "2735mg",
//     "status": "false1"
//   },
//   {
//     "food": "Best-Ever BLT Wrap",
//     "calories": "659kcal",
//     "protein": "17g",
//     "fat": "52g",
//     "sodium": "993mg",
//     "status": "false1"
//   },
//   {
//     "food": "Best-Ever Egg Salad Sandwiches",
//     "calories": "643kcal",
//     "protein": "22g",
//     "fat": "48g",
//     "sodium": "982mg",
//     "status": "false1"
//   },
//   {
//     "food": "Best-Ever Pie Crust",
//     "calories": "246kcal",
//     "protein": "3g",
//     "fat": "17g",
//     "sodium": "202mg",
//     "status": "false1"
//   },
//   {
//     "food": "Betel Leaf Wraps with Curried Squid and Cucumber Relish",
//     "calories": "137kcal",
//     "protein": "6g",
//     "fat": "9g",
//     "sodium": "264mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beth's Taco Dip",
//     "calories": "273kcal",
//     "protein": "11g",
//     "fat": "21g",
//     "sodium": "490mg",
//     "status": "false1"
//   },
//   {
//     "food": "Better-Than-Pita Grill Bread",
//     "calories": "145kcal",
//     "protein": "3g",
//     "fat": "6g",
//     "sodium": "208mg",
//     "status": "false1"
//   },
//   {
//     "food": "Beurre Blanc",
//     "calories": "99kcal",
//     "protein": "0g",
//     "fat": "9g",
//     "sodium": "151mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bevy of Beans and Basil",
//     "calories": "163kcal",
//     "protein": "4g",
//     "fat": "11g",
//     "sodium": "21mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biarritz Rochers",
//     "calories": "61kcal",
//     "protein": "2g",
//     "fat": "4g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bibb Lettuce and Celery-Leaf Salad",
//     "calories": "77kcal",
//     "protein": "2g",
//     "fat": "7g",
//     "sodium": "70mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bibb Lettuce, Avocado, and Dried Cranberry Salad",
//     "calories": "432kcal",
//     "protein": "2g",
//     "fat": "42g",
//     "sodium": "51mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bibimbap",
//     "calories": "645kcal",
//     "protein": "35g",
//     "fat": "41g",
//     "sodium": "2766mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bibimbap at Home",
//     "calories": "1000kcal",
//     "protein": "31g",
//     "fat": "24g",
//     "sodium": "700mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biddy's Flapjacks",
//     "calories": "88kcal",
//     "protein": "1g",
//     "fat": "6g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Big Apple Pancake",
//     "calories": "645kcal",
//     "protein": "18g",
//     "fat": "35g",
//     "sodium": "464mg",
//     "status": "false1"
//   },
//   {
//     "food": "Big Green Salad",
//     "calories": "106kcal",
//     "protein": "3g",
//     "fat": "7g",
//     "sodium": "37mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bigeye Tuna with Red Currant and Apple Vinaigrette and Snap Peas",
//     "calories": "223kcal",
//     "protein": "8g",
//     "fat": "15g",
//     "sodium": "627mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bilberry, raw",
//     "calories": "67.97kcal",
//     "protein": "0.63g",
//     "fat": "0.37g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biltong",
//     "calories": "285kcal",
//     "protein": "50g",
//     "fat": "9g",
//     "sodium": "861mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bing Cherry and Raspberry Sauce",
//     "calories": "110kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bing Cherry Clafouti",
//     "calories": "383kcal",
//     "protein": "10g",
//     "fat": "10g",
//     "sodium": "398mg",
//     "status": "false1"
//   },
//   {
//     "food": "Birthday Party Paella",
//     "calories": "7141kcal",
//     "protein": "470g",
//     "fat": "540g",
//     "sodium": "6152mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscotti Parfaits",
//     "calories": "356kcal",
//     "protein": "4g",
//     "fat": "11g",
//     "sodium": "198mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, Afghan, composite",
//     "calories": "489.27kcal",
//     "protein": "5.59g",
//     "fat": "21.66g",
//     "sodium": "260mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, Arrowroot, composite",
//     "calories": "434.82kcal",
//     "protein": "7.01g",
//     "fat": "10.49g",
//     "sodium": "277mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, basic, British recipe, baked",
//     "calories": "469.97kcal",
//     "protein": "6.27g",
//     "fat": "22g",
//     "sodium": "220mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, Cabin, hard, Pacific Island",
//     "calories": "401.51kcal",
//     "protein": "10.83g",
//     "fat": "7.95g",
//     "sodium": "648mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Biscuit, chocolate chip fudge, ready to eat, Chocolate Chip Fudge, Farmbake, Arnott's",
//     "calories": "485.35kcal",
//     "protein": "5.86g",
//     "fat": "20.05g",
//     "sodium": "210mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Biscuit, chocolate chip, ready to eat, Chocolate Chip, Cookie Time",
//     "calories": "488.15kcal",
//     "protein": "6.41g",
//     "fat": "23.4g",
//     "sodium": "380mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Biscuit, chocolate chip, ready to eat, Chocolate Chip, Smart, Cookie Time",
//     "calories": "428.15kcal",
//     "protein": "5.83g",
//     "fat": "18.65g",
//     "sodium": "270mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, chocolate cream, composite",
//     "calories": "471.59kcal",
//     "protein": "5.3g",
//     "fat": "20.5g",
//     "sodium": "254mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, chocolate thin, composite",
//     "calories": "479.46kcal",
//     "protein": "6.46g",
//     "fat": "19.96g",
//     "sodium": "350mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Biscuit, dark chocolate, ready to eat, Classic Dark, Tim Tam, Arnott's",
//     "calories": "526.37kcal",
//     "protein": "5.45g",
//     "fat": "26.85g",
//     "sodium": "140mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Biscuit, dark chocolate, ready to eat, Dark Chocolate, Arnott's & Wheaten, Griffin's, composite",
//     "calories": "484.11kcal",
//     "protein": "6.24g",
//     "fat": "23.73g",
//     "sodium": "280mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Biscuit, dark chocolate, ready to eat, Dark Chocolate, Digestive, Arnott's",
//     "calories": "496.15kcal",
//     "protein": "6.09g",
//     "fat": "23.7g",
//     "sodium": "260mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Biscuit, dark chocolate, ready to eat, Dark Chocolate, Wheaten, Griffin's",
//     "calories": "472.08kcal",
//     "protein": "6.38g",
//     "fat": "23.75g",
//     "sodium": "300mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, flat fruit, composite",
//     "calories": "345.97kcal",
//     "protein": "4.1g",
//     "fat": "4.65g",
//     "sodium": "177mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, ginger flavoured, Gingernuts, composite",
//     "calories": "419.34kcal",
//     "protein": "4.96g",
//     "fat": "8.98g",
//     "sodium": "190mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, iced, Hundreds & Thousands, Griffin's",
//     "calories": "491kcal",
//     "protein": "5.81g",
//     "fat": "19.82g",
//     "sodium": "350mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, Macaroons",
//     "calories": "487.44kcal",
//     "protein": "5.15g",
//     "fat": "24.23g",
//     "sodium": "160mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, Matzo",
//     "calories": "387.29kcal",
//     "protein": "10.55g",
//     "fat": "1.9g",
//     "sodium": "17mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, milk chocolate & marshmallow, MallowPuffs, Griffin's",
//     "calories": "429.94kcal",
//     "protein": "5.32g",
//     "fat": "16.6g",
//     "sodium": "114mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Biscuit, milk chocolate, ready to eat, Double Chocolate, Cookies, Ernest Adams",
//     "calories": "482.61kcal",
//     "protein": "5.54g",
//     "fat": "21.05g",
//     "sodium": "260mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Biscuit, milk chocolate, ready to eat, Double Coat, Tim Tam, Arnott's",
//     "calories": "531.01kcal",
//     "protein": "4.93g",
//     "fat": "25.95g",
//     "sodium": "390mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Biscuit, milk chocolate, ready to eat, Double Deck Dark Chocolate Delight, Chit Chat, Griffin's",
//     "calories": "505.26kcal",
//     "protein": "5.54g",
//     "fat": "24.3g",
//     "sodium": "230mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Biscuit, milk chocolate, ready to eat, Milk Chocolate, Arnott's & Griffin's, composite",
//     "calories": "493.15kcal",
//     "protein": "6.09g",
//     "fat": "23.28g",
//     "sodium": "275mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Biscuit, milk chocolate, ready to eat, Milk Chocolate, Digestives, Arnott's",
//     "calories": "495.03kcal",
//     "protein": "6.03g",
//     "fat": "22.35g",
//     "sodium": "220mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Biscuit, milk chocolate, ready to eat, Original, Tim Tam, Arnott's",
//     "calories": "531.95kcal",
//     "protein": "4.9g",
//     "fat": "26g",
//     "sodium": "170mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Biscuit, milk chocolate, ready to eat, Tim Tam, Arnott's & Chit Chat, Griffin's, composite",
//     "calories": "518.54kcal",
//     "protein": "5.22g",
//     "fat": "25.15g",
//     "sodium": "200mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, milk chocolate, ready to eat, Wheaten, Griffin's",
//     "calories": "491.34kcal",
//     "protein": "6.15g",
//     "fat": "24.2g",
//     "sodium": "330mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, mint, chocolate coated, composite",
//     "calories": "509.14kcal",
//     "protein": "5.01g",
//     "fat": "25.73g",
//     "sodium": "120mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, multi-layer cream filled, chocolate coated",
//     "calories": "497.31kcal",
//     "protein": "5.68g",
//     "fat": "22.35g",
//     "sodium": "170mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, oatcake",
//     "calories": "440.76kcal",
//     "protein": "9.97g",
//     "fat": "18.3g",
//     "sodium": "1230mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, peanut brownie, composite",
//     "calories": "487.08kcal",
//     "protein": "7.12g",
//     "fat": "21.64g",
//     "sodium": "400mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, plain, water",
//     "calories": "439.14kcal",
//     "protein": "10.83g",
//     "fat": "12.5g",
//     "sodium": "470mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, shortbread, composite",
//     "calories": "480.05kcal",
//     "protein": "5.53g",
//     "fat": "23.87g",
//     "sodium": "280mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, shortbread, homemade, baked",
//     "calories": "485.18kcal",
//     "protein": "3.45g",
//     "fat": "26.87g",
//     "sodium": "184.33mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, short-sweet",
//     "calories": "500.71kcal",
//     "protein": "5.93g",
//     "fat": "24.9g",
//     "sodium": "357mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, Shrewsbury",
//     "calories": "430.93kcal",
//     "protein": "4.73g",
//     "fat": "16.15g",
//     "sodium": "267mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, Squiggles, Griffin's",
//     "calories": "500.71kcal",
//     "protein": "5.44g",
//     "fat": "26.8g",
//     "sodium": "141mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, wafer, cream filled, chocolate & vanilla",
//     "calories": "498.79kcal",
//     "protein": "3.31g",
//     "fat": "21.93g",
//     "sodium": "110mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Biscuit, wafer, raspberry, cream filled, ready to eat, composite",
//     "calories": "498.79kcal",
//     "protein": "3.31g",
//     "fat": "21.93g",
//     "sodium": "110mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Biscuit, white & dark chocolate, ready to eat, White & Dark Chocolate, Farmbake, Arnott's",
//     "calories": "496.76kcal",
//     "protein": "4.96g",
//     "fat": "21.25g",
//     "sodium": "160mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, with cream filling, composite",
//     "calories": "466.28kcal",
//     "protein": "5.02g",
//     "fat": "19.65g",
//     "sodium": "254mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, with malt extract, Malt, composite",
//     "calories": "442.65kcal",
//     "protein": "7.47g",
//     "fat": "13.52g",
//     "sodium": "410mg",
//     "status": "false1"
//   },
//   {
//     "food": "Biscuit, with toasted coconut, Krispie, Griffin's",
//     "calories": "444.98kcal",
//     "protein": "5.36g",
//     "fat": "17.02g",
//     "sodium": "340mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bistro Steak with Buttermilk Onion Rings",
//     "calories": "1272kcal",
//     "protein": "43g",
//     "fat": "102g",
//     "sodium": "286mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bite-Size Chipotle Chicken Soft Tacos (tinga de pollo)",
//     "calories": "71kcal",
//     "protein": "6g",
//     "fat": "4g",
//     "sodium": "289mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bite-Size Stollen (Stollenkonfekt)",
//     "calories": "128kcal",
//     "protein": "2g",
//     "fat": "6g",
//     "sodium": "58mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bitter Crush",
//     "calories": "162kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bitter Greens with Carrots, Turnips, and Oranges",
//     "calories": "123kcal",
//     "protein": "1g",
//     "fat": "10g",
//     "sodium": "52mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bitter Orange Kindler",
//     "calories": "305kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "5mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bittersweet Chocolate and Almond Cake",
//     "calories": "786kcal",
//     "protein": "9g",
//     "fat": "64g",
//     "sodium": "124mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bittersweet Chocolate Frosting",
//     "calories": "314kcal",
//     "protein": "3g",
//     "fat": "26g",
//     "sodium": "17mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bittersweet Chocolate Irish Whiskey Cake",
//     "calories": "369kcal",
//     "protein": "9g",
//     "fat": "28g",
//     "sodium": "72mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bittersweet Chocolate Marquise with Cherry Sauce",
//     "calories": "550kcal",
//     "protein": "5g",
//     "fat": "44g",
//     "sodium": "26mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bittersweet Chocolate Pecan Bourbon Cake",
//     "calories": "286kcal",
//     "protein": "4g",
//     "fat": "20g",
//     "sodium": "32mg",
//     "status": "false1"
//   },
//   {
//     "food": "Black Beans with Garlic, Cumin, and Cilantro",
//     "calories": "361kcal",
//     "protein": "16g",
//     "fat": "15g",
//     "sodium": "1222mg",
//     "status": "false1"
//   },
//   {
//     "food": "Black Bean-Soy Sauce",
//     "calories": "116kcal",
//     "protein": "8g",
//     "fat": "4g",
//     "sodium": "3593mg",
//     "status": "false1"
//   },
//   {
//     "food": "Black Bottom Banana Cream Pie",
//     "calories": "742kcal",
//     "protein": "8g",
//     "fat": "58g",
//     "sodium": "49mg",
//     "status": "false1"
//   },
//   {
//     "food": "Black Bottom Oatmeal Pie",
//     "calories": "292kcal",
//     "protein": "4g",
//     "fat": "14g",
//     "sodium": "175mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Black Cod Fillets Poached in Five-Spice Broth with Baby Bok Choy and Udon",
//     "calories": "522kcal",
//     "protein": "44g",
//     "fat": "16g",
//     "sodium": "1867mg",
//     "status": "false1"
//   },
//   {
//     "food": "Black Cod with Fennel Chowder and Smoked Oyster Panzanella",
//     "calories": "716kcal",
//     "protein": "22g",
//     "fat": "62g",
//     "sodium": "562mg",
//     "status": "false1"
//   },
//   {
//     "food": "Black Cod with Lime and Coconut",
//     "calories": "227kcal",
//     "protein": "27g",
//     "fat": "10g",
//     "sodium": "89mg",
//     "status": "false1"
//   },
//   {
//     "food": "Black Cod with Olives and Potatoes in Parchment",
//     "calories": "245kcal",
//     "protein": "26g",
//     "fat": "12g",
//     "sodium": "793mg",
//     "status": "false1"
//   },
//   {
//     "food": "Black Forest Torte",
//     "calories": "659kcal",
//     "protein": "7g",
//     "fat": "36g",
//     "sodium": "221mg",
//     "status": "false1"
//   },
//   {
//     "food": "Black Gold Cookies",
//     "calories": "542kcal",
//     "protein": "7g",
//     "fat": "37g",
//     "sodium": "186mg",
//     "status": "false1"
//   },
//   {
//     "food": "Black Grape Compote",
//     "calories": "175kcal",
//     "protein": "1g",
//     "fat": "3g",
//     "sodium": "76mg",
//     "status": "false1"
//   },
//   {
//     "food": "Black-Bean Tostados with Roasted Tomatillo Sauce",
//     "calories": "457kcal",
//     "protein": "16g",
//     "fat": "28g",
//     "sodium": "1118mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blackberry, stewed",
//     "calories": "66.76kcal",
//     "protein": "1.06g",
//     "fat": "0.13g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blackberry, stewed with sugar",
//     "calories": "65.45kcal",
//     "protein": "0.88g",
//     "fat": "0.2g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blackberry-Gin Fizz",
//     "calories": "212kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blackberry-Mint Syrup",
//     "calories": "188kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blackberry-Poblano Margarita",
//     "calories": "122kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blackberry-Raspberry Pie",
//     "calories": "505kcal",
//     "protein": "7g",
//     "fat": "22g",
//     "sodium": "163mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blackberry-Raspberry Sauce",
//     "calories": "129kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blackberry-Tarragon Paletas",
//     "calories": "132kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "24mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blackberry-Thyme Margarita",
//     "calories": "242kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "35mg",
//     "status": "false1"
//   },
//   {
//     "food": "Black-Bottom Raspberry Cream Pie",
//     "calories": "656kcal",
//     "protein": "8g",
//     "fat": "52g",
//     "sodium": "105mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blackcurrant, frozen, Ben Ard",
//     "calories": "54.8kcal",
//     "protein": "1.25g",
//     "fat": "0.5g",
//     "sodium": "2.1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blackcurrant, frozen, Ben Rua",
//     "calories": "49.2kcal",
//     "protein": "1.25g",
//     "fat": "0.5g",
//     "sodium": "1.8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blackcurrant, frozen, unsweetened, Magnus,",
//     "calories": "52.73kcal",
//     "protein": "1.38g",
//     "fat": "0.81g",
//     "sodium": "4.51mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blackcurrant, puree, frozen, commercial",
//     "calories": "40.13kcal",
//     "protein": "0.63g",
//     "fat": "0.4g",
//     "sodium": "2.2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blackcurrant, raw",
//     "calories": "75.99kcal",
//     "protein": "0.94g",
//     "fat": "0.41g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blackcurrant, stewed",
//     "calories": "30.06kcal",
//     "protein": "0.81g",
//     "fat": "0g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blackcurrant, stewed with sugar",
//     "calories": "104.15kcal",
//     "protein": "0.75g",
//     "fat": "0.4g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blackened Steak Salad",
//     "calories": "850kcal",
//     "protein": "31g",
//     "fat": "74g",
//     "sodium": "2228mg",
//     "status": "false1"
//   },
//   {
//     "food": "Black-Eyed Pea and Bacon Salad with Mustard Vinaigrette",
//     "calories": "358kcal",
//     "protein": "9g",
//     "fat": "30g",
//     "sodium": "373mg",
//     "status": "false1"
//   },
//   {
//     "food": "Black-Eyed Pea and Pumpkin Salad",
//     "calories": "189kcal",
//     "protein": "2g",
//     "fat": "14g",
//     "sodium": "306mg",
//     "status": "false1"
//   },
//   {
//     "food": "Black-Eyed Pea Curry",
//     "calories": "196kcal",
//     "protein": "7g",
//     "fat": "8g",
//     "sodium": "319mg",
//     "status": "false1"
//   },
//   {
//     "food": "Black-Eyed Pea Fritters with Hot Pepper Relish",
//     "calories": "69kcal",
//     "protein": "1g",
//     "fat": "6g",
//     "sodium": "165mg",
//     "status": "false1"
//   },
//   {
//     "food": "Black-Eyed Pea Fritters with Hot Pepper Sauce",
//     "calories": "2505kcal",
//     "protein": "6g",
//     "fat": "282g",
//     "sodium": "484mg",
//     "status": "false1"
//   },
//   {
//     "food": "Black-Eyed Peas With Chard and Green Herb Smash",
//     "calories": "169kcal",
//     "protein": "3g",
//     "fat": "12g",
//     "sodium": "141mg",
//     "status": "false1"
//   },
//   {
//     "food": "Black-Olive Grissini",
//     "calories": "28kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "61mg",
//     "status": "false1"
//   },
//   {
//     "food": "Black-Pepper Beef Ribs",
//     "calories": "2027kcal",
//     "protein": "102g",
//     "fat": "174g",
//     "sodium": "1770mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blade Steaks with Lemon Herb Sauce",
//     "calories": "543kcal",
//     "protein": "32g",
//     "fat": "46g",
//     "sodium": "552mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blade Steaks with Mushrooms",
//     "calories": "419kcal",
//     "protein": "30g",
//     "fat": "30g",
//     "sodium": "751mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Cheese and Pecan Crackers",
//     "calories": "77kcal",
//     "protein": "2g",
//     "fat": "6g",
//     "sodium": "49mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Cheese and Scallion Dip",
//     "calories": "317kcal",
//     "protein": "11g",
//     "fat": "29g",
//     "sodium": "539mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Cheese and Walnut Toasts",
//     "calories": "53kcal",
//     "protein": "1g",
//     "fat": "4g",
//     "sodium": "74mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Cheese Burgers with Green Peppercorns",
//     "calories": "364kcal",
//     "protein": "36g",
//     "fat": "22g",
//     "sodium": "431mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Cheese Buttermilk Biscuits",
//     "calories": "299kcal",
//     "protein": "9g",
//     "fat": "15g",
//     "sodium": "605mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Cheese Caesar Salad",
//     "calories": "638kcal",
//     "protein": "22g",
//     "fat": "52g",
//     "sodium": "883mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Cheese Canapes with Pecans and Grapes",
//     "calories": "13kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "33mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Cheese Coleslaw",
//     "calories": "101kcal",
//     "protein": "5g",
//     "fat": "4g",
//     "sodium": "193mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Cheese Corn Bread",
//     "calories": "336kcal",
//     "protein": "10g",
//     "fat": "13g",
//     "sodium": "860mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Cheese Crusted Tomatoes",
//     "calories": "159kcal",
//     "protein": "7g",
//     "fat": "8g",
//     "sodium": "272mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Cheese Dip with Onion and Celery",
//     "calories": "404kcal",
//     "protein": "5g",
//     "fat": "41g",
//     "sodium": "514mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Cheese Dressing",
//     "calories": "269kcal",
//     "protein": "4g",
//     "fat": "27g",
//     "sodium": "501mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Cheese Potato Gratin",
//     "calories": "588kcal",
//     "protein": "14g",
//     "fat": "44g",
//     "sodium": "610mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Cheese Potato Salad",
//     "calories": "437kcal",
//     "protein": "9g",
//     "fat": "29g",
//     "sodium": "620mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Cheese Shortbread Leaves with Cream Cheese-Chutney Roulade",
//     "calories": "258kcal",
//     "protein": "5g",
//     "fat": "17g",
//     "sodium": "258mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Cheese Souffles with Grape Syrup on Fig and Walnut Brioche",
//     "calories": "851kcal",
//     "protein": "18g",
//     "fat": "56g",
//     "sodium": "917mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Cheese Toasts",
//     "calories": "881kcal",
//     "protein": "34g",
//     "fat": "10g",
//     "sodium": "1914mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Cheese Vinaigrette",
//     "calories": "462kcal",
//     "protein": "6g",
//     "fat": "46g",
//     "sodium": "541mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Cheese with Rosemary Honey on Crackers",
//     "calories": "68kcal",
//     "protein": "2g",
//     "fat": "3g",
//     "sodium": "111mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Cheese, Port, and Walnut Spread",
//     "calories": "276kcal",
//     "protein": "10g",
//     "fat": "25g",
//     "sodium": "522mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Cheese-Bacon Focaccia",
//     "calories": "257kcal",
//     "protein": "8g",
//     "fat": "7g",
//     "sodium": "622mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Corn Bread",
//     "calories": "445kcal",
//     "protein": "7g",
//     "fat": "30g",
//     "sodium": "530mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Hill at Stone Barns Cure Mix",
//     "calories": "153kcal",
//     "protein": "3g",
//     "fat": "3g",
//     "sodium": "224mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue Lake Green Beans with Lemon and Thyme",
//     "calories": "61kcal",
//     "protein": "2g",
//     "fat": "3g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blue moki, flesh, raw",
//     "calories": "99.96kcal",
//     "protein": "20.88g",
//     "fat": "1.6g",
//     "sodium": "64mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberries in Gin Syrup",
//     "calories": "268kcal",
//     "protein": "2g",
//     "fat": "2g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry and Cinnamon Breakfast Oaty Muffins",
//     "calories": "111kcal",
//     "protein": "4g",
//     "fat": "2g",
//     "sodium": "91mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry and Corn Crisp",
//     "calories": "359kcal",
//     "protein": "4g",
//     "fat": "15g",
//     "sodium": "303mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry and Cream Cookies",
//     "calories": "263kcal",
//     "protein": "3g",
//     "fat": "11g",
//     "sodium": "123mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry and Nectarine Buckle",
//     "calories": "277kcal",
//     "protein": "3g",
//     "fat": "14g",
//     "sodium": "107mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry and Orange Layer Cake with Cream Cheese Frosting",
//     "calories": "802kcal",
//     "protein": "9g",
//     "fat": "32g",
//     "sodium": "317mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry Bishop",
//     "calories": "295kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry Blackberry Spice Syrup",
//     "calories": "272kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry Cheesecake",
//     "calories": "954kcal",
//     "protein": "14g",
//     "fat": "66g",
//     "sodium": "767mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry Compote",
//     "calories": "182kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry Corn Muffins",
//     "calories": "234kcal",
//     "protein": "3g",
//     "fat": "9g",
//     "sodium": "300mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry Crumble Pie",
//     "calories": "1174kcal",
//     "protein": "57g",
//     "fat": "21g",
//     "sodium": "233mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry Galette with Lemon Ice Cream",
//     "calories": "256kcal",
//     "protein": "4g",
//     "fat": "8g",
//     "sodium": "175mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry Ice Cream",
//     "calories": "273kcal",
//     "protein": "2g",
//     "fat": "17g",
//     "sodium": "49mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry Ice Cream Pie",
//     "calories": "441kcal",
//     "protein": "11g",
//     "fat": "33g",
//     "sodium": "15mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry Johnnycakes with Maple Syrup",
//     "calories": "429kcal",
//     "protein": "9g",
//     "fat": "16g",
//     "sodium": "406mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry Julep",
//     "calories": "138kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry Lemon Corn Muffins",
//     "calories": "853kcal",
//     "protein": "13g",
//     "fat": "31g",
//     "sodium": "315mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry Lemon Cream Tarts",
//     "calories": "230kcal",
//     "protein": "2g",
//     "fat": "16g",
//     "sodium": "206mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry Lemon Crumbles",
//     "calories": "165kcal",
//     "protein": "2g",
//     "fat": "8g",
//     "sodium": "53mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry Lemon Pound Cake",
//     "calories": "283kcal",
//     "protein": "4g",
//     "fat": "16g",
//     "sodium": "191mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry Muffins with Lemon Blackberry Glaze",
//     "calories": "403kcal",
//     "protein": "13g",
//     "fat": "29g",
//     "sodium": "83mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry Pie with Cornmeal Crust and Lemon Cream",
//     "calories": "795kcal",
//     "protein": "8g",
//     "fat": "29g",
//     "sodium": "233mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry Shrub",
//     "calories": "165kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry Sour Cream Pie",
//     "calories": "470kcal",
//     "protein": "5g",
//     "fat": "27g",
//     "sodium": "134mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry Streusel Cake",
//     "calories": "288kcal",
//     "protein": "4g",
//     "fat": "12g",
//     "sodium": "199mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry, frozen",
//     "calories": "52.64kcal",
//     "protein": "0.63g",
//     "fat": "0.4g",
//     "sodium": "2.1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry, frozen, unsweetened, Jersey",
//     "calories": "59.62kcal",
//     "protein": "0.69g",
//     "fat": "0.4g",
//     "sodium": "5.8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Blueberry, raw, composite",
//     "calories": "50.48kcal",
//     "protein": "0.63g",
//     "fat": "0.3g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bolo",
//     "calories": "235kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bolognese Sauce",
//     "calories": "228kcal",
//     "protein": "12g",
//     "fat": "17g",
//     "sodium": "347mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bombay Bhel",
//     "calories": "418kcal",
//     "protein": "10g",
//     "fat": "15g",
//     "sodium": "141mg",
//     "status": "false1"
//   },
//   {
//     "food": "Boneless Chicken Breasts with Red Chili Sauce",
//     "calories": "229kcal",
//     "protein": "34g",
//     "fat": "6g",
//     "sodium": "958mg",
//     "status": "false1"
//   },
//   {
//     "food": "Boneless Leg of Lamb Stuffed with Swiss Chard and Feta",
//     "calories": "1438kcal",
//     "protein": "118g",
//     "fat": "98g",
//     "sodium": "819mg",
//     "status": "false1"
//   },
//   {
//     "food": "Boneless Pork Chops with Ginger, Fig, and Lemon Compote",
//     "calories": "495kcal",
//     "protein": "37g",
//     "fat": "26g",
//     "sodium": "117mg",
//     "status": "false1"
//   },
//   {
//     "food": "Borracho Beans",
//     "calories": "259kcal",
//     "protein": "13g",
//     "fat": "6g",
//     "sodium": "458mg",
//     "status": "false1"
//   },
//   {
//     "food": "Borscht",
//     "calories": "303kcal",
//     "protein": "8g",
//     "fat": "7g",
//     "sodium": "529mg",
//     "status": "false1"
//   },
//   {
//     "food": "Boston Brown Bread",
//     "calories": "255kcal",
//     "protein": "6g",
//     "fat": "4g",
//     "sodium": "635mg",
//     "status": "false1"
//   },
//   {
//     "food": "Boston Cream Pie",
//     "calories": "299kcal",
//     "protein": "4g",
//     "fat": "16g",
//     "sodium": "198mg",
//     "status": "false1"
//   },
//   {
//     "food": "Boston Marathon Chili",
//     "calories": "448kcal",
//     "protein": "29g",
//     "fat": "29g",
//     "sodium": "391mg",
//     "status": "false1"
//   },
//   {
//     "food": "Boudin Blanc Terrine with Red Onion Confit",
//     "calories": "403kcal",
//     "protein": "18g",
//     "fat": "23g",
//     "sodium": "1439mg",
//     "status": "false1"
//   },
//   {
//     "food": "Boudin Blanc-Stuffed Turkey Breasts with Chestnuts",
//     "calories": "1006kcal",
//     "protein": "60g",
//     "fat": "62g",
//     "sodium": "6156mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bouillabaisse",
//     "calories": "999kcal",
//     "protein": "133g",
//     "fat": "36g",
//     "sodium": "2343mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bouillabaisse Linder",
//     "calories": "1925kcal",
//     "protein": "238g",
//     "fat": "72g",
//     "sodium": "5347mg",
//     "status": "false1"
//   },
//   {
//     "food": "Boulevardier",
//     "calories": "231kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bourbon and Brown Sugar Glazed Turkey",
//     "calories": "2612kcal",
//     "protein": "161g",
//     "fat": "207g",
//     "sodium": "5349mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bourbon and Dark Rum Eggnog",
//     "calories": "317kcal",
//     "protein": "5g",
//     "fat": "23g",
//     "sodium": "103mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bourbon Baby Back Ribs",
//     "calories": "1476kcal",
//     "protein": "68g",
//     "fat": "101g",
//     "sodium": "1896mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bourbon Barbecue Sauce",
//     "calories": "252kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "1317mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bourbon Butterscotch Sauce",
//     "calories": "585kcal",
//     "protein": "0g",
//     "fat": "20g",
//     "sodium": "5mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bourbon Cranberry Sauce",
//     "calories": "316kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bourbon Creamed Corn",
//     "calories": "414kcal",
//     "protein": "6g",
//     "fat": "30g",
//     "sodium": "29mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bourbon Eggnog",
//     "calories": "269kcal",
//     "protein": "4g",
//     "fat": "15g",
//     "sodium": "54mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bourbon Pecan Tarts",
//     "calories": "1124kcal",
//     "protein": "11g",
//     "fat": "73g",
//     "sodium": "307mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bourbon Pumpkin Cheesecake",
//     "calories": "551kcal",
//     "protein": "8g",
//     "fat": "41g",
//     "sodium": "450mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bourbon Sauce",
//     "calories": "995kcal",
//     "protein": "1g",
//     "fat": "60g",
//     "sodium": "313mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bourbon Sloe Gin Cocktail",
//     "calories": "188kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Chicken with Artichoke Hearts, Mushrooms, and Peppers",
//     "calories": "514kcal",
//     "protein": "32g",
//     "fat": "26g",
//     "sodium": "465mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Chicken with Artichokes and Peas",
//     "calories": "950kcal",
//     "protein": "63g",
//     "fat": "64g",
//     "sodium": "1142mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Chicken With Asparagus, Peas, and Melted Leeks",
//     "calories": "8275kcal",
//     "protein": "608g",
//     "fat": "618g",
//     "sodium": "4011mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Chicken with Celery Root and Garlic",
//     "calories": "889kcal",
//     "protein": "68g",
//     "fat": "58g",
//     "sodium": "1322mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Chicken With Chickpeas and Swiss Chard",
//     "calories": "776kcal",
//     "protein": "51g",
//     "fat": "50g",
//     "sodium": "674mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Chicken with Garlic and White Wine",
//     "calories": "996kcal",
//     "protein": "75g",
//     "fat": "70g",
//     "sodium": "283mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Chicken with Green Peppers and Tomatoes",
//     "calories": "520kcal",
//     "protein": "30g",
//     "fat": "38g",
//     "sodium": "149mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Chicken with Onions and Herbs",
//     "calories": "490kcal",
//     "protein": "50g",
//     "fat": "27g",
//     "sodium": "173mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Chicken with Shallots, Garlic, and Balsamic Vinegar",
//     "calories": "1086kcal",
//     "protein": "81g",
//     "fat": "71g",
//     "sodium": "485mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Chicken with Smoked Ham, Chestnuts, and Ginger",
//     "calories": "936kcal",
//     "protein": "70g",
//     "fat": "55g",
//     "sodium": "2805mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Lentils",
//     "calories": "408kcal",
//     "protein": "21g",
//     "fat": "14g",
//     "sodium": "372mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Meat with Butternut Squash",
//     "calories": "694kcal",
//     "protein": "59g",
//     "fat": "32g",
//     "sodium": "824mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Meatballs in Red-Wine Gravy",
//     "calories": "588kcal",
//     "protein": "32g",
//     "fat": "36g",
//     "sodium": "1588mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Onion Ribbons with Celery",
//     "calories": "193kcal",
//     "protein": "3g",
//     "fat": "9g",
//     "sodium": "48mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Onions with Orange and Balsamic Vinegar",
//     "calories": "155kcal",
//     "protein": "2g",
//     "fat": "9g",
//     "sodium": "11mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Orange Roughy with Leeks",
//     "calories": "290kcal",
//     "protein": "34g",
//     "fat": "12g",
//     "sodium": "157mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Orange-Ginger Short Ribs with Dried Apricots",
//     "calories": "16050kcal",
//     "protein": "592g",
//     "fat": "1480g",
//     "sodium": "2629mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Pheasant with Red Cabbage Wild Rice",
//     "calories": "1668kcal",
//     "protein": "123g",
//     "fat": "85g",
//     "sodium": "1380mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Pork Chops with Dill Sauce",
//     "calories": "485kcal",
//     "protein": "45g",
//     "fat": "29g",
//     "sodium": "163mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Pork Loin with Prunes",
//     "calories": "659kcal",
//     "protein": "22g",
//     "fat": "19g",
//     "sodium": "536mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Provencal Chicken with Butternut Squash and White Beans",
//     "calories": "647kcal",
//     "protein": "43g",
//     "fat": "46g",
//     "sodium": "222mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Rabbit with Egg Noodles",
//     "calories": "617kcal",
//     "protein": "43g",
//     "fat": "26g",
//     "sodium": "685mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Rabbit with Grainy Mustard Sauce",
//     "calories": "662kcal",
//     "protein": "70g",
//     "fat": "34g",
//     "sodium": "902mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Red Cabbage",
//     "calories": "91kcal",
//     "protein": "2g",
//     "fat": "6g",
//     "sodium": "32mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Red Cabbage with Vinegar",
//     "calories": "160kcal",
//     "protein": "4g",
//     "fat": "10g",
//     "sodium": "71mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Rotisserie Chicken With Bacon, Tomatoes, and Kale",
//     "calories": "370kcal",
//     "protein": "20g",
//     "fat": "29g",
//     "sodium": "502mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Short Rib of Beef",
//     "calories": "1909kcal",
//     "protein": "65g",
//     "fat": "165g",
//     "sodium": "1693mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Short Ribs",
//     "calories": "1420kcal",
//     "protein": "74g",
//     "fat": "109g",
//     "sodium": "964mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Short Ribs with Carrots and Onions",
//     "calories": "3684kcal",
//     "protein": "138g",
//     "fat": "334g",
//     "sodium": "1401mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Short Ribs with Chocolate and Rosemary",
//     "calories": "1916kcal",
//     "protein": "71g",
//     "fat": "170g",
//     "sodium": "410mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Short Ribs with Garbanzo Beans and Raisins",
//     "calories": "2894kcal",
//     "protein": "109g",
//     "fat": "235g",
//     "sodium": "1000mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Short Ribs with Red Wine and Pureed Vegetables",
//     "calories": "2085kcal",
//     "protein": "61g",
//     "fat": "152g",
//     "sodium": "2281mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Short Ribs with Red Wine Gravy",
//     "calories": "19576kcal",
//     "protein": "723g",
//     "fat": "1818g",
//     "sodium": "2950mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Shrimp and Creamy Endive",
//     "calories": "303kcal",
//     "protein": "22g",
//     "fat": "19g",
//     "sodium": "1686mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Spiced Pork with Cao Lau Noodles",
//     "calories": "1135kcal",
//     "protein": "28g",
//     "fat": "80g",
//     "sodium": "1312mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Spring Legumes",
//     "calories": "315kcal",
//     "protein": "19g",
//     "fat": "8g",
//     "sodium": "428mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Spring Vegetable Medley",
//     "calories": "478kcal",
//     "protein": "18g",
//     "fat": "18g",
//     "sodium": "1224mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Turnip Greens with Turnips and Apples",
//     "calories": "196kcal",
//     "protein": "14g",
//     "fat": "8g",
//     "sodium": "706mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Veal Breast with Herbs, Pernod, and Tomatoes",
//     "calories": "1454kcal",
//     "protein": "103g",
//     "fat": "96g",
//     "sodium": "1206mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Veal Breast with Potato-and-Onion Stuffing",
//     "calories": "1299kcal",
//     "protein": "90g",
//     "fat": "89g",
//     "sodium": "1491mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Veal Shanks with Bacon-Parmesan Crumbs",
//     "calories": "818kcal",
//     "protein": "95g",
//     "fat": "33g",
//     "sodium": "889mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Veal Shanks with Green Olives and Capers",
//     "calories": "563kcal",
//     "protein": "75g",
//     "fat": "23g",
//     "sodium": "656mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Veal Shanks with Mashed Potatoes and Tomato Onion Jus",
//     "calories": "1167kcal",
//     "protein": "105g",
//     "fat": "30g",
//     "sodium": "460mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Veal Shanks with White Bean Tomato Sauce",
//     "calories": "2726kcal",
//     "protein": "417g",
//     "fat": "91g",
//     "sodium": "1944mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Veal Shoulder with Gremolata and Tomato-Olive Salad",
//     "calories": "478kcal",
//     "protein": "57g",
//     "fat": "22g",
//     "sodium": "396mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised Veal with Gremolata",
//     "calories": "318kcal",
//     "protein": "42g",
//     "fat": "13g",
//     "sodium": "151mg",
//     "status": "false1"
//   },
//   {
//     "food": "Braised-Lamb Shank Shepherd's Pie with Creamed Spinach",
//     "calories": "1186kcal",
//     "protein": "86g",
//     "fat": "66g",
//     "sodium": "1010mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bran, oats, composite",
//     "calories": "356.98kcal",
//     "protein": "14.58g",
//     "fat": "5.1g",
//     "sodium": "3.89mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bran, wheat, composite",
//     "calories": "300.16kcal",
//     "protein": "14.95g",
//     "fat": "6.65g",
//     "sodium": "11.05mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bran, wheat, North Island",
//     "calories": "317.27kcal",
//     "protein": "14.51g",
//     "fat": "9.87g",
//     "sodium": "7.1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bran, wheat, South Island",
//     "calories": "283.06kcal",
//     "protein": "15.4g",
//     "fat": "3.44g",
//     "sodium": "15mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brandade de Morue Canapes",
//     "calories": "48kcal",
//     "protein": "3g",
//     "fat": "3g",
//     "sodium": "267mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brandied Apricot Beignets with Chocolate Dipping Sauce",
//     "calories": "162kcal",
//     "protein": "2g",
//     "fat": "13g",
//     "sodium": "42mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brandied Black Cherries",
//     "calories": "482kcal",
//     "protein": "2g",
//     "fat": "0g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brandied Date and Walnut Pie",
//     "calories": "537kcal",
//     "protein": "10g",
//     "fat": "23g",
//     "sodium": "402mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brandied Dried Cranberries and Cherries",
//     "calories": "251kcal",
//     "protein": "0g",
//     "fat": "1g",
//     "sodium": "5mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brandied Peach Compote Cake",
//     "calories": "349kcal",
//     "protein": "5g",
//     "fat": "9g",
//     "sodium": "212mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brandied Pear, Prune and Fig Pie",
//     "calories": "510kcal",
//     "protein": "5g",
//     "fat": "25g",
//     "sodium": "276mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brandied Sour Cherry and Pear Tartlets",
//     "calories": "305kcal",
//     "protein": "3g",
//     "fat": "16g",
//     "sodium": "151mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brandied Whipped Cream",
//     "calories": "235kcal",
//     "protein": "1g",
//     "fat": "22g",
//     "sodium": "23mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brandied-Peach Pork Chops",
//     "calories": "605kcal",
//     "protein": "43g",
//     "fat": "31g",
//     "sodium": "121mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brandied-Prune Ice Cream",
//     "calories": "152kcal",
//     "protein": "2g",
//     "fat": "5g",
//     "sodium": "36mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brandy Alexander",
//     "calories": "234kcal",
//     "protein": "0g",
//     "fat": "6g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brandy Alexander I",
//     "calories": "192kcal",
//     "protein": "0g",
//     "fat": "8g",
//     "sodium": "10mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brandy Alexander II",
//     "calories": "278kcal",
//     "protein": "1g",
//     "fat": "12g",
//     "sodium": "15mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brandy Alexander White Hot Chocolate",
//     "calories": "217kcal",
//     "protein": "7g",
//     "fat": "7g",
//     "sodium": "93mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brandy Bishop",
//     "calories": "344kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "17mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brandy Crusta",
//     "calories": "228kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brandy Milk Punch",
//     "calories": "262kcal",
//     "protein": "8g",
//     "fat": "8g",
//     "sodium": "105mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bratwurst with Creamy Apple Compote",
//     "calories": "842kcal",
//     "protein": "25g",
//     "fat": "66g",
//     "sodium": "1453mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brawn, raw",
//     "calories": "152.38kcal",
//     "protein": "12.44g",
//     "fat": "11.5g",
//     "sodium": "750mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brazen Hussy",
//     "calories": "155kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brazilian Banana and White Chocolate Ice Cream Torte",
//     "calories": "778kcal",
//     "protein": "11g",
//     "fat": "54g",
//     "sodium": "51mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brazilian Chicken and Rice with Olives",
//     "calories": "431kcal",
//     "protein": "20g",
//     "fat": "35g",
//     "sodium": "209mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brazilian Collard Greens",
//     "calories": "135kcal",
//     "protein": "7g",
//     "fat": "10g",
//     "sodium": "324mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brazilian Fish Stew (Moqueca Capixaba)",
//     "calories": "325kcal",
//     "protein": "40g",
//     "fat": "9g",
//     "sodium": "1004mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brazilian-Style Collard Greens",
//     "calories": "413kcal",
//     "protein": "22g",
//     "fat": "35g",
//     "sodium": "260mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread Dressing with Dried Apricots, Pistachios, and Mint",
//     "calories": "425kcal",
//     "protein": "10g",
//     "fat": "16g",
//     "sodium": "798mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread mix, gluten free, Simple Baking Mix, Healtheries, fortified",
//     "calories": "340.6kcal",
//     "protein": "4.17g",
//     "fat": "0.5g",
//     "sodium": "650mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread Pudding with Apple, Raisins and Figs",
//     "calories": "515kcal",
//     "protein": "12g",
//     "fat": "26g",
//     "sodium": "298mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread Pudding with Bourbon Sauce",
//     "calories": "1013kcal",
//     "protein": "15g",
//     "fat": "55g",
//     "sodium": "646mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread Pudding with Dried Apricots, Dried Cherries and Caramel Sauce",
//     "calories": "2129kcal",
//     "protein": "29g",
//     "fat": "115g",
//     "sodium": "1271mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread Pudding with Warm Bourbon Sauce",
//     "calories": "552kcal",
//     "protein": "12g",
//     "fat": "44g",
//     "sodium": "275mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread roll or bun, white, plain, ready to eat, commercial, fortified folate",
//     "calories": "247.69kcal",
//     "protein": "9.41g",
//     "fat": "2.1g",
//     "sodium": "540mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread roll or bun, wholemeal, ready to eat, commercial, fortified folate",
//     "calories": "229.61kcal",
//     "protein": "10.2g",
//     "fat": "2.6g",
//     "sodium": "550mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread roll, currant, commercial, composite",
//     "calories": "284.18kcal",
//     "protein": "7.45g",
//     "fat": "1.43g",
//     "sodium": "373mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread roll, currant, commercial, lower North Island",
//     "calories": "284.25kcal",
//     "protein": "7.47g",
//     "fat": "1.43g",
//     "sodium": "373mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread roll, currant, commercial, South Island",
//     "calories": "284.25kcal",
//     "protein": "7.47g",
//     "fat": "1.43g",
//     "sodium": "373mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread roll, currant, commercial, upper North Island",
//     "calories": "284.02kcal",
//     "protein": "7.41g",
//     "fat": "1.43g",
//     "sodium": "373mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread roll, mixed grain, commercial, lower North Island",
//     "calories": "271.43kcal",
//     "protein": "10.91g",
//     "fat": "2.51g",
//     "sodium": "440mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread roll, mixed grain, commercial, South Island",
//     "calories": "271.43kcal",
//     "protein": "10.91g",
//     "fat": "2.51g",
//     "sodium": "440mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread roll, mixed grain, commercial, upper North Island",
//     "calories": "271.56kcal",
//     "protein": "10.91g",
//     "fat": "2.52g",
//     "sodium": "440mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread roll, mixed grain, composite, commercial",
//     "calories": "271.47kcal",
//     "protein": "10.91g",
//     "fat": "2.51g",
//     "sodium": "440mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread roll, wholegrain, prepacked, composite",
//     "calories": "269.99kcal",
//     "protein": "9.91g",
//     "fat": "3.04g",
//     "sodium": "420mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread roll, wholegrain, prepacked, composite,  lower North Island",
//     "calories": "269.96kcal",
//     "protein": "9.91g",
//     "fat": "3.04g",
//     "sodium": "420mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread roll, wholegrain, prepacked, composite, South Island",
//     "calories": "269.96kcal",
//     "protein": "9.91g",
//     "fat": "3.04g",
//     "sodium": "420mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread roll, wholegrain, prepacked, composite, upper North Island",
//     "calories": "270.05kcal",
//     "protein": "9.91g",
//     "fat": "3.05g",
//     "sodium": "420mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread Stuffing with Crawfish, Bacon, and Collard Greens",
//     "calories": "388kcal",
//     "protein": "17g",
//     "fat": "24g",
//     "sodium": "534mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread Stuffing with Mushrooms and Bacon",
//     "calories": "319kcal",
//     "protein": "13g",
//     "fat": "15g",
//     "sodium": "807mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread, chapatti or roti, wholemeal, ready to eat, restaurant",
//     "calories": "261.67kcal",
//     "protein": "8.28g",
//     "fat": "4.9g",
//     "sodium": "320mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, ciabatta, Italian style, loaf, from white wheat flour, plain, as purchased, commercial, composite",
//     "calories": "248.79kcal",
//     "protein": "8.6g",
//     "fat": "3.1g",
//     "sodium": "480mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, ciabatta, Italian style, loaf, white wheat flour, plain, toasted, commercial, composite",
//     "calories": "285.97kcal",
//     "protein": "9.89g",
//     "fat": "3.56g",
//     "sodium": "551.75mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread, crumb, white, dried",
//     "calories": "358.81kcal",
//     "protein": "11.57g",
//     "fat": "1.9g",
//     "sodium": "760mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread, currant, sliced, prepacked, composite",
//     "calories": "284.88kcal",
//     "protein": "8.91g",
//     "fat": "1.39g",
//     "sodium": "343.67mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, currant, sliced, prepacked, composite, lower North Island",
//     "calories": "282.14kcal",
//     "protein": "8.84g",
//     "fat": "1.38g",
//     "sodium": "340mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, currant, sliced, prepacked, composite, upper North Island",
//     "calories": "290.37kcal",
//     "protein": "9.06g",
//     "fat": "1.42g",
//     "sodium": "351mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, currant, sliced, prepacked, Spicy Fruit, Tip Top & Natures Fresh, Quality Bakers, South Island",
//     "calories": "282.14kcal",
//     "protein": "8.84g",
//     "fat": "1.38g",
//     "sodium": "340mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread, currant, toasted",
//     "calories": "334.86kcal",
//     "protein": "8.44g",
//     "fat": "8.5g",
//     "sodium": "330mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, French, stick or loaf, from white wheat flour, plain, as purchased, commercial, composite",
//     "calories": "269.57kcal",
//     "protein": "10.29g",
//     "fat": "2.1g",
//     "sodium": "580mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, French, stick or loaf, white wheat flour, plain, toasted, commercial, composite",
//     "calories": "346.41kcal",
//     "protein": "13.22g",
//     "fat": "2.7g",
//     "sodium": "745.33mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, garlic, made with butter, Garlic Bread Traditional Style, La Famiglia & Garlic Bread Italian Style, Signature Range",
//     "calories": "380.02kcal",
//     "protein": "7.55g",
//     "fat": "19.63g",
//     "sodium": "460mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread, garlic, made with butter, pita, prepaked",
//     "calories": "317.33kcal",
//     "protein": "8.04g",
//     "fat": "13.59g",
//     "sodium": "504mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, garlic, made with margarine, Garlic Bread, Pams & Garlic Bread Traditional, Mamma Fiorelli's",
//     "calories": "396.82kcal",
//     "protein": "7.55g",
//     "fat": "21.53g",
//     "sodium": "460mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, gluten free, grain & seed, sliced, prepacked, Gluten Free Ancient Grain & Seeds, Burgen",
//     "calories": "252.07kcal",
//     "protein": "4.35g",
//     "fat": "8.7g",
//     "sodium": "500mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread, gluten free, mixed grain, sliced, prepacked, composite",
//     "calories": "226.68kcal",
//     "protein": "4.76g",
//     "fat": "4.7g",
//     "sodium": "370mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, gluten free, seed, sliced, prepacked, Gluten Free 6 Seed, Vogel's",
//     "calories": "226.55kcal",
//     "protein": "6.05g",
//     "fat": "7.9g",
//     "sodium": "410mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, gluten free, white, sliced & unsliced, prepacked, composite",
//     "calories": "219.9kcal",
//     "protein": "3.57g",
//     "fat": "3g",
//     "sodium": "370mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, gluten free, white, sliced, prepacked, Gluten Free White, Burgen",
//     "calories": "246.82kcal",
//     "protein": "2.3g",
//     "fat": "4.9g",
//     "sodium": "690mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, mixed grain & seed, sliced, prepacked, 9 Grain & Seed Toast, Tip Top, fortified vitamin E, folate & Fe",
//     "calories": "237.97kcal",
//     "protein": "12.24g",
//     "fat": "4g",
//     "sodium": "410mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, mixed grain & seed, sliced, prepacked, Mixed Grain & Toasted Sesame Toast, Vogel's",
//     "calories": "224.09kcal",
//     "protein": "9.42g",
//     "fat": "5.67g",
//     "sodium": "370mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, mixed grain & seed, sliced, prepacked, Soy & Linseed, Burgen & Vogel's, lower North Island",
//     "calories": "255.92kcal",
//     "protein": "13.41g",
//     "fat": "7.43g",
//     "sodium": "414mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, mixed grain & seed, sliced, prepacked, Soy & Linseed, Burgen & Vogel's, South Island",
//     "calories": "239.04kcal",
//     "protein": "13.47g",
//     "fat": "6.36g",
//     "sodium": "411mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, mixed grain & seed, sliced, prepacked, Soy & Linseed, Burgen & Vogel's, upper North Island",
//     "calories": "264.28kcal",
//     "protein": "12.94g",
//     "fat": "7.56g",
//     "sodium": "410mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, mixed grain & seed, sliced, prepacked, Soy & Linseed, Vogel's & Burgen",
//     "calories": "253.08kcal",
//     "protein": "13.27g",
//     "fat": "7.12g",
//     "sodium": "411.67mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, mixed grain & seed, sliced, prepacked, Station Seed & Grain, MacKenzie",
//     "calories": "230.16kcal",
//     "protein": "11.66g",
//     "fat": "4.83g",
//     "sodium": "420mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, mixed grain & seed, sliced, prepacked, Sunflower & Barley, Burgen & Vogel's, lower North Island",
//     "calories": "258.66kcal",
//     "protein": "9.75g",
//     "fat": "7.23g",
//     "sodium": "367mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, mixed grain & seed, sliced, prepacked, Sunflower & Barley, Burgen & Vogel's, South Island",
//     "calories": "249.75kcal",
//     "protein": "10.72g",
//     "fat": "5.71g",
//     "sodium": "374mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, mixed grain & seed, sliced, prepacked, Sunflower & Barley, Burgen & Vogel's, upper North Island",
//     "calories": "253.61kcal",
//     "protein": "9.92g",
//     "fat": "6.49g",
//     "sodium": "370mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, mixed grain & seed, sliced, prepacked, Sunflower & Barley, Vogel's & Burgen, composite",
//     "calories": "254.01kcal",
//     "protein": "10.13g",
//     "fat": "6.48g",
//     "sodium": "370.33mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread, mixed grain, heavy, sliced, prepacked, composite",
//     "calories": "241.69kcal",
//     "protein": "9.33g",
//     "fat": "2.3g",
//     "sodium": "370mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, mixed grain, heavy, sliced, prepacked, Mixed Grain, Burgen & Vogel's, lower North Island",
//     "calories": "218.56kcal",
//     "protein": "8.8g",
//     "fat": "2.04g",
//     "sodium": "363mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, mixed grain, heavy, sliced, prepacked, Mixed Grain, Burgen & Vogel's, South Island",
//     "calories": "226.46kcal",
//     "protein": "9.79g",
//     "fat": "2.62g",
//     "sodium": "365mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, mixed grain, heavy, sliced, prepacked, Mixed Grain, Vogel's & Burgen, upper North Island",
//     "calories": "226.9kcal",
//     "protein": "9.04g",
//     "fat": "2.23g",
//     "sodium": "370mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread, mixed grain, light, sliced, prepacked, composite",
//     "calories": "240.38kcal",
//     "protein": "9.91g",
//     "fat": "2.8g",
//     "sodium": "450mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, mixed grain, light, sliced, prepacked, composite, lower North Island",
//     "calories": "257.29kcal",
//     "protein": "9.74g",
//     "fat": "2.12g",
//     "sodium": "492mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, mixed grain, light, sliced, prepacked, composite, South Island",
//     "calories": "254.37kcal",
//     "protein": "9.74g",
//     "fat": "2.34g",
//     "sodium": "486mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, mixed grain, light, sliced, prepacked, composite, upper North Island",
//     "calories": "259.58kcal",
//     "protein": "10.14g",
//     "fat": "2.32g",
//     "sodium": "490mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread, mixed grain, sliced, prepacked, Ancient Grains, Vogel's",
//     "calories": "218.27kcal",
//     "protein": "9.69g",
//     "fat": "4g",
//     "sodium": "360mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, mixed grain, sliced, prepacked, Nature's Grain, River Mill, fortified folate",
//     "calories": "234.66kcal",
//     "protein": "9.97g",
//     "fat": "1.98g",
//     "sodium": "440mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, mixed grain, sliced, prepacked, Salba Traditional Wholegrain, Yarrows",
//     "calories": "225.55kcal",
//     "protein": "10.67g",
//     "fat": "3.19g",
//     "sodium": "340mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, mixed grain, sliced, prepacked, Swiss Bake Grains Plus, Molenberg, Quality Bakers",
//     "calories": "229.09kcal",
//     "protein": "11.37g",
//     "fat": "3.18g",
//     "sodium": "410mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, mixed grain, sliced, prepacked, Tuscan Mixed Grain, Freya's",
//     "calories": "231.64kcal",
//     "protein": "9.59g",
//     "fat": "2.7g",
//     "sodium": "410mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread, naan, white, plain, ready to eat, restaurant",
//     "calories": "262.79kcal",
//     "protein": "7.13g",
//     "fat": "5.3g",
//     "sodium": "580mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread, pita, white, composite",
//     "calories": "256.15kcal",
//     "protein": "10.43g",
//     "fat": "0.89g",
//     "sodium": "344mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, pizza base, thick, from white flour, no topping, as purchased, commercial, composite",
//     "calories": "261.02kcal",
//     "protein": "8.51g",
//     "fat": "4g",
//     "sodium": "420mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, pizza base, thin, from white flour, no topping, as purchased, commercial, composite",
//     "calories": "270.62kcal",
//     "protein": "8.13g",
//     "fat": "3.2g",
//     "sodium": "420mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread, plain, Panini, prepacked, composite",
//     "calories": "309.18kcal",
//     "protein": "9.35g",
//     "fat": "8.37g",
//     "sodium": "524mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread, wheat & oat, sliced",
//     "calories": "233.18kcal",
//     "protein": "9.62g",
//     "fat": "2.07g",
//     "sodium": "585mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, wheat & rye, sliced, prepacked, Salba Traditional European Rye, Yarrows",
//     "calories": "229.98kcal",
//     "protein": "11.34g",
//     "fat": "4g",
//     "sodium": "350mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, wheat, sliced, prepacked, Wheatmeal, Nature's Fresh, Quality Bakers, upper North Island",
//     "calories": "231.91kcal",
//     "protein": "8.54g",
//     "fat": "1.79g",
//     "sodium": "510mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, wheat, white, high fibre, sliced, prepacked, Mighty White, Tip Top & Fibre White, Natures Fresh, Quality Barkers, lower North Island",
//     "calories": "255.4kcal",
//     "protein": "8.27g",
//     "fat": "1.52g",
//     "sodium": "469mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, wheat, white, high fibre, sliced, prepacked, Mighty White, Tip Top & Fibre White, Natures Fresh, Quality Barkers, South Island",
//     "calories": "255.4kcal",
//     "protein": "8.27g",
//     "fat": "1.52g",
//     "sodium": "469mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, wheat, white, sliced, prepacked, composite, lower North Island",
//     "calories": "249.83kcal",
//     "protein": "8.27g",
//     "fat": "1.54g",
//     "sodium": "510mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread, wheat, white, sliced, prepacked, composite, South Island",
//     "calories": "250.98kcal",
//     "protein": "8.27g",
//     "fat": "1.54g",
//     "sodium": "510mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, wheat, white, sliced, prepacked, composite, upper North Island",
//     "calories": "250.02kcal",
//     "protein": "8.32g",
//     "fat": "1.54g",
//     "sodium": "510mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread, wheatmeal, sliced, prepacked, composite",
//     "calories": "229.64kcal",
//     "protein": "10.49g",
//     "fat": "2.9g",
//     "sodium": "430mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread, white wheat, sliced, prepacked, composite",
//     "calories": "240.51kcal",
//     "protein": "9.12g",
//     "fat": "2.4g",
//     "sodium": "460mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread, white, Maori, fried",
//     "calories": "315.42kcal",
//     "protein": "8.95g",
//     "fat": "11.37g",
//     "sodium": "570mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread, white, sliced, fried",
//     "calories": "501.56kcal",
//     "protein": "7.87g",
//     "fat": "32.2g",
//     "sodium": "550mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread, white, toasted",
//     "calories": "276.01kcal",
//     "protein": "8.04g",
//     "fat": "0.7g",
//     "sodium": "833mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread, wholemeal, pita, composite",
//     "calories": "245.98kcal",
//     "protein": "10.09g",
//     "fat": "2.24g",
//     "sodium": "324mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, wholemeal, sliced, prepacked, Wheatmeal, Nature's Fresh, Quality Bakers, lower North Island",
//     "calories": "234.54kcal",
//     "protein": "8.83g",
//     "fat": "1.55g",
//     "sodium": "532mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Bread, wholemeal, sliced, prepacked, Wheatmeal, Nature's Fresh, Quality Bakers, South Island",
//     "calories": "234.54kcal",
//     "protein": "8.89g",
//     "fat": "2.42g",
//     "sodium": "509mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bread, wholemeal, toasted",
//     "calories": "257.74kcal",
//     "protein": "9.44g",
//     "fat": "1.7g",
//     "sodium": "746mg",
//     "status": "false1"
//   },
//   {
//     "food": "Breaded Chicken Cutlets (aka Grandma Jody's Chicken)",
//     "calories": "326kcal",
//     "protein": "35g",
//     "fat": "16g",
//     "sodium": "157mg",
//     "status": "false1"
//   },
//   {
//     "food": "Breaded Chicken Cutlets with Chunky Vegetable Sauce",
//     "calories": "531kcal",
//     "protein": "66g",
//     "fat": "14g",
//     "sodium": "487mg",
//     "status": "false1"
//   },
//   {
//     "food": "Breaded Skinless Fish Fillets with Red Pepper Mayonnaise",
//     "calories": "750kcal",
//     "protein": "46g",
//     "fat": "31g",
//     "sodium": "1412mg",
//     "status": "false1"
//   },
//   {
//     "food": "Breadfruit, baked",
//     "calories": "87.95kcal",
//     "protein": "1.31g",
//     "fat": "0.6g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Breadfruit, boiled",
//     "calories": "65.56kcal",
//     "protein": "1.31g",
//     "fat": "0.9g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Breakfast Banh Mi Sandwich with Eggs and Sausage",
//     "calories": "874kcal",
//     "protein": "46g",
//     "fat": "56g",
//     "sodium": "1482mg",
//     "status": "false1"
//   },
//   {
//     "food": "Breakfast Bowl With Quinoa and Berries",
//     "calories": "173kcal",
//     "protein": "5g",
//     "fat": "7g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, corn flakes & peanut, ready to eat, Crunchy Nut Corn Flakes, Kellogg's, fortified vitamins B1, B2, B3, C & folate, & Fe",
//     "calories": "387.61kcal",
//     "protein": "7.7g",
//     "fat": "3.3g",
//     "sodium": "470mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, corn flakes, ready to eat, Frosties, Kellogg's, fortified vitamins B1, B2, B3, C, E & folate, Fe & Zn",
//     "calories": "385.65kcal",
//     "protein": "4.6g",
//     "fat": "0.1g",
//     "sodium": "420mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, corn, extruded, ready to eat, Crispix Honey, Kellogg's, fortified vitamins B1, B2, B3 & folate",
//     "calories": "358.61kcal",
//     "protein": "5.13g",
//     "fat": "1.84g",
//     "sodium": "460mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, cornflakes toasted, ready to eat, Skippy Cornflakes, Sanitarium, fortified vitamins B1, B2, B3 & folate & Fe",
//     "calories": "358.23kcal",
//     "protein": "7.5g",
//     "fat": "1.3g",
//     "sodium": "610mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, mixed grain & dried fruit, ready to eat, Special K, Forest Berries, Kellogg's, fortified vitamins B1, B2, B3, B6 & folate, Ca, Fe & Zn",
//     "calories": "375.31kcal",
//     "protein": "18.1g",
//     "fat": "0.9g",
//     "sodium": "335mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, mixed grain & oat bran, ready to eat, Weet-Bix Oat Bran, Sanitarium, fortified vitamins E & folate",
//     "calories": "391.84kcal",
//     "protein": "12.8g",
//     "fat": "2.5g",
//     "sodium": "304mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, mixed grain clusters & nuts, assorted flavours, ready to eat, Cluster Crisp, Sanitarium, composite, fortified vitamins B1, B2, B3 & folate, & Fe",
//     "calories": "384.51kcal",
//     "protein": "7.81g",
//     "fat": "12.65g",
//     "sodium": "250mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, mixed grain clusters & nuts, ready to eat, Cluster Crisp, Manuka Honey with Roasted Cashew, Sanitarium, fortified B1, B2, B3 & folate, & Fe",
//     "calories": "386.72kcal",
//     "protein": "7.81g",
//     "fat": "12.9g",
//     "sodium": "250mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, mixed grain clusters & nuts, ready to eat, Cluster Crisp, Vanilla Almond, Sanitarium, fortified vitamins, B1, B2, B3 & folate, & Fe",
//     "calories": "382.3kcal",
//     "protein": "7.81g",
//     "fat": "12.4g",
//     "sodium": "250mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, mixed grain flakes & dried fruit, assorted flavours, ready to eat, Light 'n' Tasty, Sanitarium, composite, fortified vitamins B1, B2, B3 & folate, Ca & Fe",
//     "calories": "353.32kcal",
//     "protein": "7.39g",
//     "fat": "3.1g",
//     "sodium": "280mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, mixed grain flakes & dried fruit, ready to eat, Light 'n' Tasty, Apricot, Sanitarium, fortified vitamins B1, B2, B3, E & folate, Ca & Fe",
//     "calories": "353.58kcal",
//     "protein": "7.39g",
//     "fat": "2.9g",
//     "sodium": "320mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, mixed grain flakes & dried fruit, ready to eat, Light 'n' Tasty, Berry, Sanitarium, fortified vitamins B1, B2, B3 & folate, Ca & Fe",
//     "calories": "349.71kcal",
//     "protein": "7.39g",
//     "fat": "2.6g",
//     "sodium": "230mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, mixed grain flakes & dried fruit, ready to eat, Light 'n' Tasty, Peach & Raspberry, Sanitarium, fortified vitamins B1, B2, B3, E & folate, Ca & Fe",
//     "calories": "352.19kcal",
//     "protein": "7.39g",
//     "fat": "3.8g",
//     "sodium": "260mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, mixed grain flakes, dried fruit, ready to eat, Just Right, Original Kellogg's, fortified vitamins B1, B2, B3 & folate, & Fe",
//     "calories": "378.39kcal",
//     "protein": "7.93g",
//     "fat": "2.1g",
//     "sodium": "30mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, mixed grain flakes, dried fruit, ready to eat, Sustain, Kellogg's, fortified vitamins B1, B2, B3, B6, C & folate, & Fe",
//     "calories": "351.97kcal",
//     "protein": "8.58g",
//     "fat": "2.8g",
//     "sodium": "97mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, mixed grain flakes, read to eat, Crunchy Nut Clusters, fortified vitamins B1, B2, C & folate, & Fe",
//     "calories": "411.79kcal",
//     "protein": "7.3g",
//     "fat": "7.3g",
//     "sodium": "340mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, mixed grain flakes, read to eat, Guardian, Kellogg's, fortified vitamins B1, B2, C & folate, & Fe",
//     "calories": "344.83kcal",
//     "protein": "9.3g",
//     "fat": "1.2g",
//     "sodium": "215mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, mixed grain, ready to eat, Froot Loops, Kellogg's, fortified vitamins B1, B2, B3, C & folate, Fe & Zn",
//     "calories": "391.63kcal",
//     "protein": "6.4g",
//     "fat": "1.5g",
//     "sodium": "470mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, muesli, ready to eat, Fruitful Breakfast, Hubbards",
//     "calories": "396.09kcal",
//     "protein": "8.75g",
//     "fat": "12g",
//     "sodium": "48mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, muesli, ready to eat, Simply Toasted Muesli Apricot, Hubbards",
//     "calories": "383.65kcal",
//     "protein": "8.81g",
//     "fat": "10.3g",
//     "sodium": "19mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, muesli, ready to eat, Toasted Muesli Golden Oats & Fruit, Sanitarium",
//     "calories": "426.45kcal",
//     "protein": "8.81g",
//     "fat": "14.4g",
//     "sodium": "270mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, muesli, ready to eat, Toasted Muesli Super Fruity, Sanitarium, fortified vitamin E",
//     "calories": "405.25kcal",
//     "protein": "8.81g",
//     "fat": "9.8g",
//     "sodium": "91mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, muesli, ready to eat, Toasted Strawberry and Rhubarb, Sanitarium",
//     "calories": "385.87kcal",
//     "protein": "8.81g",
//     "fat": "11.7g",
//     "sodium": "68mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, rice, puffed, cocoa coated, ready to eat, Coco Pops, Kellogg's, fortified vitamins B1, B2, B3, C & folate, Ca, Fe & Zn",
//     "calories": "378.03kcal",
//     "protein": "5.55g",
//     "fat": "1.1g",
//     "sodium": "430mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, rice, puffed, ready to eat, Rice Bubbles, Kellogg's, fortified vitamins B1, B2 & B3, C & folate, Fe & Zn",
//     "calories": "374.93kcal",
//     "protein": "6.67g",
//     "fat": "1.1g",
//     "sodium": "1030mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, rice, puffed, ready to eat, Ricies, Sanitarium, fortified vitamins B1, B2 & B3, & Fe",
//     "calories": "352.08kcal",
//     "protein": "5.95g",
//     "fat": "1.1g",
//     "sodium": "890mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, wheat bran flakes & dried fruit, assorted flavours, ready to eat, Sultana Bran, Kellogg's, fortified vitamins B1, B2, B3, B6 & folate, Fe & Zn",
//     "calories": "348.83kcal",
//     "protein": "9.22g",
//     "fat": "1.6g",
//     "sodium": "663mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, wheat bran flakes, read to eat, All Bran Wheat Flakes, Kellogg's, fortified vitamins B1, B2 & folate, Fe, Mg & Zn",
//     "calories": "387.08kcal",
//     "protein": "16.66g",
//     "fat": "1.5g",
//     "sodium": "330mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, wheat bran pellets, ready to eat, All Bran Original, Kellogg's, fortified vitamins B1, B2 & folate",
//     "calories": "315.84kcal",
//     "protein": "13.62g",
//     "fat": "3.3g",
//     "sodium": "330mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, wheat bran pellets, ready to eat, San Bran, Sanitarium",
//     "calories": "297.42kcal",
//     "protein": "12.4g",
//     "fat": "1.4g",
//     "sodium": "870mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, wheat grain puffed, ready to eat, Puffed Wheat, Sanitarium",
//     "calories": "389.21kcal",
//     "protein": "11.6g",
//     "fat": "1.4g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, whole grain wheat biscuit, ready to eat, Weet-Bix, Sanitarium, fortified, vitamins B1, B2, B3 & folate, & Fe",
//     "calories": "329.33kcal",
//     "protein": "12.53g",
//     "fat": "2.3g",
//     "sodium": "280mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, whole grain wheat, extruded, ready to eat, Mini-Wheats Blackcurrant Flavour, Kellogg's, fortified vitamins B1, B2, B3 & folate",
//     "calories": "361.53kcal",
//     "protein": "8.58g",
//     "fat": "1.1g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, whole wheat & wheat bran flakes, read to eat, All Bran Honey Almond, Kellogg's, fortified vitamins B1, B2 , B3, B6 & folate, Fe, & Zn",
//     "calories": "359.49kcal",
//     "protein": "11g",
//     "fat": "5g",
//     "sodium": "325mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereal, whole wheat flakes, ready to eat, Weeties, Sanitarium",
//     "calories": "331.93kcal",
//     "protein": "11.88g",
//     "fat": "2.1g",
//     "sodium": "460mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereals, mixed grain flakes, ready to eat, Special K, Original, Kellogg's, fortified vitamins B1, B2, B3, B6 & folate, & Fe",
//     "calories": "358.85kcal",
//     "protein": "18.41g",
//     "fat": "2g",
//     "sodium": "400mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereals, mixed grains extruded, ready to eat, Nutri-Grain, Kellogg's, fortified vitamins B1, B2, B3, B6, C & folate, Ca & Fe",
//     "calories": "394.04kcal",
//     "protein": "22.41g",
//     "fat": "2.7g",
//     "sodium": "520mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Breakfast cereals, rice puffed, cocoa coated, ready to eat, composite, fortified vitamins B1, B2, B3 & folate, & Fe",
//     "calories": "359.66kcal",
//     "protein": "5.55g",
//     "fat": "1g",
//     "sodium": "430mg",
//     "status": "false1"
//   },
//   {
//     "food": "Breakfast Cookies",
//     "calories": "134kcal",
//     "protein": "3g",
//     "fat": "6g",
//     "sodium": "190mg",
//     "status": "false1"
//   },
//   {
//     "food": "Breakfast Couscous with Dried-fruit compote",
//     "calories": "323kcal",
//     "protein": "7g",
//     "fat": "9g",
//     "sodium": "15mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broccoli Slaw with Miso-Ginger Dressing",
//     "calories": "97kcal",
//     "protein": "4g",
//     "fat": "5g",
//     "sodium": "466mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broccoli Soup with Cheddar Cheese",
//     "calories": "667kcal",
//     "protein": "22g",
//     "fat": "58g",
//     "sodium": "400mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broccoli Spears with Garlic Sauce",
//     "calories": "74kcal",
//     "protein": "3g",
//     "fat": "4g",
//     "sodium": "287mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broccoli with Cheddar Vinaigrette",
//     "calories": "216kcal",
//     "protein": "10g",
//     "fat": "17g",
//     "sodium": "223mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broccoli with Fennel and Red Bell Pepper",
//     "calories": "260kcal",
//     "protein": "13g",
//     "fat": "11g",
//     "sodium": "177mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broccoli with Garlic and Parmesan Cheese",
//     "calories": "185kcal",
//     "protein": "12g",
//     "fat": "11g",
//     "sodium": "258mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Broccoli, inflorescent vegetable, boiled, drained, no salt added",
//     "calories": "30.36kcal",
//     "protein": "3.03g",
//     "fat": "0.5g",
//     "sodium": "4.9mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Broccoli, inflorescent vegetable, floret, frozen, boiled, drained, no salt added",
//     "calories": "27.17kcal",
//     "protein": "2.28g",
//     "fat": "0.6g",
//     "sodium": "12.05mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Broccoli, inflorescent vegetable, floret, frozen, steamed or microwaved, no salt added",
//     "calories": "34.54kcal",
//     "protein": "3.43g",
//     "fat": "0.7g",
//     "sodium": "14.3mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Broccoli, inflorescent vegetable, floret, frozen, unprepared, composite",
//     "calories": "25.88kcal",
//     "protein": "2.54g",
//     "fat": "0.6g",
//     "sodium": "10.9mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broccoli, inflorescent vegetable, microwaved",
//     "calories": "35.57kcal",
//     "protein": "4.31g",
//     "fat": "0.5g",
//     "sodium": "6.9mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broccoli, inflorescent vegetable, raw",
//     "calories": "33.43kcal",
//     "protein": "3.78g",
//     "fat": "0.5g",
//     "sodium": "7.4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broccoli, Red Pepper, and Cheddar Chowder",
//     "calories": "616kcal",
//     "protein": "24g",
//     "fat": "30g",
//     "sodium": "914mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broccoli-Cheddar Dip",
//     "calories": "259kcal",
//     "protein": "14g",
//     "fat": "20g",
//     "sodium": "358mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broccoli-Cheese Soup",
//     "calories": "339kcal",
//     "protein": "13g",
//     "fat": "19g",
//     "sodium": "1230mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broccolini-Cheddar Melts",
//     "calories": "452kcal",
//     "protein": "17g",
//     "fat": "37g",
//     "sodium": "612mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broccoli-Parmesan Gratin",
//     "calories": "287kcal",
//     "protein": "16g",
//     "fat": "15g",
//     "sodium": "473mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broccoli-Quinoa Salad with Buttermilk Dressing",
//     "calories": "433kcal",
//     "protein": "16g",
//     "fat": "21g",
//     "sodium": "168mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Arctic Char with Basil Sauce and Tomato",
//     "calories": "784kcal",
//     "protein": "36g",
//     "fat": "70g",
//     "sodium": "394mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Bluefish Fillets with Fennel Mayonnaise",
//     "calories": "389kcal",
//     "protein": "46g",
//     "fat": "21g",
//     "sodium": "803mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Bluefish with Tomato and Herbs",
//     "calories": "431kcal",
//     "protein": "46g",
//     "fat": "25g",
//     "sodium": "543mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Chicken Wings with Spicy Apricot Sauce",
//     "calories": "1208kcal",
//     "protein": "90g",
//     "fat": "71g",
//     "sodium": "1770mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Chicken with Bacon Over Egg Fried Rice",
//     "calories": "1016kcal",
//     "protein": "53g",
//     "fat": "67g",
//     "sodium": "480mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Chicken with Mango, Ginger and Cilantro",
//     "calories": "385kcal",
//     "protein": "37g",
//     "fat": "21g",
//     "sodium": "112mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Chicken with Rosemary and Garlic",
//     "calories": "739kcal",
//     "protein": "64g",
//     "fat": "51g",
//     "sodium": "820mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Chicken with Thyme, Fennel and Peppers",
//     "calories": "337kcal",
//     "protein": "14g",
//     "fat": "13g",
//     "sodium": "346mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Chicken, Romaine, and Tomato Bruschetta",
//     "calories": "856kcal",
//     "protein": "40g",
//     "fat": "67g",
//     "sodium": "988mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Cod With Fennel and Orange",
//     "calories": "476kcal",
//     "protein": "40g",
//     "fat": "20g",
//     "sodium": "703mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Duck Breasts with Orange Chipotle Sauce",
//     "calories": "356kcal",
//     "protein": "46g",
//     "fat": "10g",
//     "sodium": "1129mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Eggplant Rolls with Goat Cheese and Tomato",
//     "calories": "263kcal",
//     "protein": "8g",
//     "fat": "20g",
//     "sodium": "1707mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Eggplant with Cilantro Vinaigrette",
//     "calories": "70kcal",
//     "protein": "0g",
//     "fat": "8g",
//     "sodium": "48mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Fennel and Red Bell Pepper Salad",
//     "calories": "246kcal",
//     "protein": "2g",
//     "fat": "21g",
//     "sodium": "82mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Figs with Oranges and Sherry Cream",
//     "calories": "401kcal",
//     "protein": "4g",
//     "fat": "32g",
//     "sodium": "29mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Fish Fillets with Basil Butter",
//     "calories": "296kcal",
//     "protein": "31g",
//     "fat": "18g",
//     "sodium": "95mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Grouper Fillets with Romesco Sauce",
//     "calories": "421kcal",
//     "protein": "37g",
//     "fat": "27g",
//     "sodium": "422mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Ham Steaks with Rhubarb Chutney",
//     "calories": "657kcal",
//     "protein": "53g",
//     "fat": "16g",
//     "sodium": "4991mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Lamb Chops with Lemon Caper Sauce",
//     "calories": "477kcal",
//     "protein": "17g",
//     "fat": "45g",
//     "sodium": "98mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Lamb Chops with Mint Chimichurri",
//     "calories": "6361kcal",
//     "protein": "382g",
//     "fat": "519g",
//     "sodium": "1491mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Lamb Chops with Rosemary-Mint Sauce",
//     "calories": "981kcal",
//     "protein": "33g",
//     "fat": "83g",
//     "sodium": "1301mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Lemon Thyme Pollock",
//     "calories": "333kcal",
//     "protein": "32g",
//     "fat": "23g",
//     "sodium": "467mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Mackerel with Ginger and Garlic",
//     "calories": "514kcal",
//     "protein": "43g",
//     "fat": "35g",
//     "sodium": "1112mg",
//     "status": "false1"
//   },
//   {
//     "food": "Broiled Mustard Chicken Wings",
//     "calories": "782kcal",
//     "protein": "62g",
//     "fat": "56g",
//     "sodium": "550mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brown Rice and Barley",
//     "calories": "284kcal",
//     "protein": "7g",
//     "fat": "2g",
//     "sodium": "10mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brown Rice Salad with Crunchy Sprouts and Seeds",
//     "calories": "527kcal",
//     "protein": "23g",
//     "fat": "26g",
//     "sodium": "333mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brown Rice, Corn and Grilled Vegetable Salad",
//     "calories": "480kcal",
//     "protein": "9g",
//     "fat": "24g",
//     "sodium": "834mg",
//     "status": "false1"
//   },
//   {
//     "food": "Brown Rice, Tomato and Basil Salad",
//     "calories": "176kcal",
//     "protein": "3g",
//     "fat": "6g",
//     "sodium": "645mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bun, burger, Big Mac, McDonald's",
//     "calories": "300.37kcal",
//     "protein": "9.57g",
//     "fat": "4.36g",
//     "sodium": "508mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bun, burger, McDonald's",
//     "calories": "291.31kcal",
//     "protein": "9.8g",
//     "fat": "3.15g",
//     "sodium": "481mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bun, currant, composite",
//     "calories": "304.65kcal",
//     "protein": "7.64g",
//     "fat": "7.5g",
//     "sodium": "230mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bun, spiced",
//     "calories": "252.2kcal",
//     "protein": "8.84g",
//     "fat": "1.15g",
//     "sodium": "380mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bunuelos de Chorizo",
//     "calories": "68kcal",
//     "protein": "3g",
//     "fat": "4g",
//     "sodium": "120mg",
//     "status": "false1"
//   },
//   {
//     "food": "Bunuelos with Anise Syrup",
//     "calories": "303kcal",
//     "protein": "5g",
//     "fat": "5g",
//     "sodium": "88mg",
//     "status": "false1"
//   },
//   {
//     "food": "Burger, Big Mac, McDonald's",
//     "calories": "272.19kcal",
//     "protein": "13.13g",
//     "fat": "15.6g",
//     "sodium": "444mg",
//     "status": "false1"
//   },
//   {
//     "food": "Burger, cheeseburger, composite",
//     "calories": "262.47kcal",
//     "protein": "13.63g",
//     "fat": "13.3g",
//     "sodium": "760mg",
//     "status": "false1"
//   },
//   {
//     "food": "Burger, cheeseburger, McDonald's",
//     "calories": "260.4kcal",
//     "protein": "15.13g",
//     "fat": "10.7g",
//     "sodium": "513mg",
//     "status": "false1"
//   },
//   {
//     "food": "Burger, egg",
//     "calories": "238.63kcal",
//     "protein": "12.38g",
//     "fat": "11.8g",
//     "sodium": "600mg",
//     "status": "false1"
//   },
//   {
//     "food": "Burger, Filet-o-Fish, McDonald's",
//     "calories": "291.87kcal",
//     "protein": "11.88g",
//     "fat": "15.5g",
//     "sodium": "447mg",
//     "status": "false1"
//   },
//   {
//     "food": "Burger, hamburger, composite",
//     "calories": "226.96kcal",
//     "protein": "10.69g",
//     "fat": "10.2g",
//     "sodium": "660mg",
//     "status": "false1"
//   },
//   {
//     "food": "Burger, hamburger, McDonald's",
//     "calories": "254.54kcal",
//     "protein": "13.31g",
//     "fat": "9.86g",
//     "sodium": "349mg",
//     "status": "false1"
//   },
//   {
//     "food": "Burger, McFeast, McDonald's",
//     "calories": "242.07kcal",
//     "protein": "15.5g",
//     "fat": "12.2g",
//     "sodium": "351mg",
//     "status": "false1"
//   },
//   {
//     "food": "Burger, Quarter Pounder with cheese, McDonald's",
//     "calories": "272.77kcal",
//     "protein": "17.5g",
//     "fat": "14.8g",
//     "sodium": "513mg",
//     "status": "false1"
//   },
//   {
//     "food": "Burger, Quarter Pounder, McDonald's",
//     "calories": "272.26kcal",
//     "protein": "16.19g",
//     "fat": "13.5g",
//     "sodium": "408mg",
//     "status": "false1"
//   },
//   {
//     "food": "Burgers with Artichokes, Gorgonzola, and Tomatoes",
//     "calories": "651kcal",
//     "protein": "37g",
//     "fat": "43g",
//     "sodium": "1068mg",
//     "status": "false1"
//   },
//   {
//     "food": "Burgers with Mozzarella and Spinach-Arugula Pesto",
//     "calories": "676kcal",
//     "protein": "35g",
//     "fat": "47g",
//     "sodium": "875mg",
//     "status": "false1"
//   },
//   {
//     "food": "Burmese Gin Thoke Melon Salad",
//     "calories": "821kcal",
//     "protein": "22g",
//     "fat": "55g",
//     "sodium": "993mg",
//     "status": "false1"
//   },
//   {
//     "food": "Burnt Caramel Ice Cream",
//     "calories": "224kcal",
//     "protein": "4g",
//     "fat": "13g",
//     "sodium": "64mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Burnt Carrots with Goat Cheese, Parsley, Arugula, and Crispy Garlic Chips",
//     "calories": "456kcal",
//     "protein": "11g",
//     "fat": "22g",
//     "sodium": "513mg",
//     "status": "false1"
//   },
//   {
//     "food": "Burnt Orange Panna Cotta",
//     "calories": "346kcal",
//     "protein": "3g",
//     "fat": "28g",
//     "sodium": "89mg",
//     "status": "false1"
//   },
//   {
//     "food": "Burnt-Caramel Custards",
//     "calories": "548kcal",
//     "protein": "4g",
//     "fat": "47g",
//     "sodium": "66mg",
//     "status": "false1"
//   },
//   {
//     "food": "Burrata Cheese with Tomato Salsa and Olive Salsa",
//     "calories": "414kcal",
//     "protein": "14g",
//     "fat": "39g",
//     "sodium": "609mg",
//     "status": "false1"
//   },
//   {
//     "food": "Burrata, Japanese Tomatoes, Panzanella, Wild Arugula",
//     "calories": "543kcal",
//     "protein": "17g",
//     "fat": "47g",
//     "sodium": "456mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butter Braised Oysters on Greens",
//     "calories": "355kcal",
//     "protein": "8g",
//     "fat": "16g",
//     "sodium": "49mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butter Cake",
//     "calories": "508kcal",
//     "protein": "6g",
//     "fat": "26g",
//     "sodium": "315mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butter Lettuce and Radish Salad with Fresh Spring Herbs",
//     "calories": "372kcal",
//     "protein": "4g",
//     "fat": "36g",
//     "sodium": "87mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butter Lettuce and Radish Salad with Lemon-Garlic Vinaigrette",
//     "calories": "155kcal",
//     "protein": "6g",
//     "fat": "13g",
//     "sodium": "290mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Butter Lettuce Salad with Bacon, Dried Cherries, and Roquefort Vinaigrette",
//     "calories": "399kcal",
//     "protein": "7g",
//     "fat": "36g",
//     "sodium": "483mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butter Lettuce with Apples, Walnuts, and Pomegranate Seeds",
//     "calories": "384kcal",
//     "protein": "7g",
//     "fat": "30g",
//     "sodium": "191mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butter Lettuce, Persimmon, Feta, and Hazelnut Salad",
//     "calories": "273kcal",
//     "protein": "5g",
//     "fat": "27g",
//     "sodium": "196mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butter Mandu (Butter Dumplings)",
//     "calories": "1434kcal",
//     "protein": "40g",
//     "fat": "140g",
//     "sodium": "1591mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butter Pastry Dough",
//     "calories": "187kcal",
//     "protein": "3g",
//     "fat": "12g",
//     "sodium": "227mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Butter Pecan Shortcakes with Ice Cream and Caramelized Pineapple and Bananas",
//     "calories": "624kcal",
//     "protein": "8g",
//     "fat": "28g",
//     "sodium": "380mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butter Pie Crust",
//     "calories": "1407kcal",
//     "protein": "17g",
//     "fat": "94g",
//     "sodium": "890mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butter Pie Crust Dough",
//     "calories": "1435kcal",
//     "protein": "19g",
//     "fat": "95g",
//     "sodium": "1227mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butter Shortbread Cookies",
//     "calories": "300kcal",
//     "protein": "3g",
//     "fat": "16g",
//     "sodium": "216mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butter, cultured",
//     "calories": "741.46kcal",
//     "protein": "0.57g",
//     "fat": "83.23g",
//     "sodium": "6.4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butter, salted, composite",
//     "calories": "730.33kcal",
//     "protein": "0.45g",
//     "fat": "82.1g",
//     "sodium": "546.67mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butter, salted, Fonterra",
//     "calories": "731.89kcal",
//     "protein": "0.41g",
//     "fat": "82.3g",
//     "sodium": "530mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butter, salted, Westland, Autumn",
//     "calories": "728.79kcal",
//     "protein": "0.41g",
//     "fat": "81.95g",
//     "sodium": "570mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butter, salted, Westland, Spring",
//     "calories": "730.31kcal",
//     "protein": "0.51g",
//     "fat": "82.05g",
//     "sodium": "540mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butter, semisoft",
//     "calories": "731.62kcal",
//     "protein": "0.48g",
//     "fat": "82.3g",
//     "sodium": "470mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butter, unsalted",
//     "calories": "743.03kcal",
//     "protein": "0.32g",
//     "fat": "83.55g",
//     "sodium": "6.9mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butter-Braised Root Vegetables and Green Beans",
//     "calories": "334kcal",
//     "protein": "9g",
//     "fat": "10g",
//     "sodium": "1172mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttered Beets with Spring Herbs",
//     "calories": "74kcal",
//     "protein": "2g",
//     "fat": "4g",
//     "sodium": "67mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttered Egg Noodles",
//     "calories": "271kcal",
//     "protein": "8g",
//     "fat": "8g",
//     "sodium": "13mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttered Haricots Verts",
//     "calories": "43kcal",
//     "protein": "1g",
//     "fat": "3g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttered New Potatoes with Chives",
//     "calories": "277kcal",
//     "protein": "5g",
//     "fat": "12g",
//     "sodium": "15mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttered Polenta",
//     "calories": "213kcal",
//     "protein": "3g",
//     "fat": "8g",
//     "sodium": "612mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butterfish, flesh, raw",
//     "calories": "81.68kcal",
//     "protein": "17.88g",
//     "fat": "0.9g",
//     "sodium": "90mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butterflied Leg of Lamb with Rosemary",
//     "calories": "910kcal",
//     "protein": "64g",
//     "fat": "68g",
//     "sodium": "350mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butterflied Trout with Spicy Lettuce, Celery, and Herbs",
//     "calories": "416kcal",
//     "protein": "46g",
//     "fat": "21g",
//     "sodium": "707mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butterflied Turkey with Fennel, Sausage, and Ricotta Stuffing",
//     "calories": "1587kcal",
//     "protein": "190g",
//     "fat": "71g",
//     "sodium": "2993mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk Cabbage Soup With Black Walnut \"Pesto",
//     "calories": "200kcal",
//     "protein": "9g",
//     "fat": "11g",
//     "sodium": "1195mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Buttermilk Cake with Lemon-and Thyme-Glazed Pear Compote and Greek Yogurt Ice Cream",
//     "calories": "326kcal",
//     "protein": "4g",
//     "fat": "8g",
//     "sodium": "242mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk Corn Bread",
//     "calories": "193kcal",
//     "protein": "5g",
//     "fat": "8g",
//     "sodium": "370mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk Corn Bread with Bacon",
//     "calories": "260kcal",
//     "protein": "7g",
//     "fat": "10g",
//     "sodium": "498mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk Cornbread with Monterey Jack Cheese",
//     "calories": "2063kcal",
//     "protein": "57g",
//     "fat": "78g",
//     "sodium": "3875mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk Cornmeal Pancakes",
//     "calories": "586kcal",
//     "protein": "16g",
//     "fat": "22g",
//     "sodium": "954mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk Doughnuts",
//     "calories": "383kcal",
//     "protein": "5g",
//     "fat": "18g",
//     "sodium": "481mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk Fried Chicken",
//     "calories": "2184kcal",
//     "protein": "93g",
//     "fat": "161g",
//     "sodium": "8023mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk Fried Chicken with Spinach Tomato Salad",
//     "calories": "1814kcal",
//     "protein": "78g",
//     "fat": "151g",
//     "sodium": "1673mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk Fried Shrimp",
//     "calories": "898kcal",
//     "protein": "33g",
//     "fat": "52g",
//     "sodium": "2277mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk Fruitcake",
//     "calories": "586kcal",
//     "protein": "8g",
//     "fat": "23g",
//     "sodium": "172mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk Green Goddess Dressing",
//     "calories": "436kcal",
//     "protein": "3g",
//     "fat": "45g",
//     "sodium": "582mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk Ice Cream",
//     "calories": "537kcal",
//     "protein": "7g",
//     "fat": "47g",
//     "sodium": "201mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk Pancakes with Blueberry Compote",
//     "calories": "162kcal",
//     "protein": "4g",
//     "fat": "8g",
//     "sodium": "382mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk Pancakes with Caramelized Bananas",
//     "calories": "199kcal",
//     "protein": "3g",
//     "fat": "14g",
//     "sodium": "242mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk Panna Cotta with Berries and Vanilla Sabayon",
//     "calories": "281kcal",
//     "protein": "7g",
//     "fat": "15g",
//     "sodium": "139mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk Panna Cotta with Rhubarb-Strawberry Jelly",
//     "calories": "210kcal",
//     "protein": "3g",
//     "fat": "13g",
//     "sodium": "156mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk Panna Cotta with Tropical Fruit",
//     "calories": "170kcal",
//     "protein": "4g",
//     "fat": "7g",
//     "sodium": "172mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk Pie Crust Dough",
//     "calories": "259kcal",
//     "protein": "4g",
//     "fat": "15g",
//     "sodium": "252mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk Rye Crepes",
//     "calories": "292kcal",
//     "protein": "8g",
//     "fat": "16g",
//     "sodium": "253mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk Slaw",
//     "calories": "186kcal",
//     "protein": "3g",
//     "fat": "15g",
//     "sodium": "206mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk Spoon Bread",
//     "calories": "1401kcal",
//     "protein": "40g",
//     "fat": "76g",
//     "sodium": "2388mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk-Blue Cheese Dip",
//     "calories": "209kcal",
//     "protein": "9g",
//     "fat": "16g",
//     "sodium": "520mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk-Herb Pancakes Topped with Caviar",
//     "calories": "111kcal",
//     "protein": "3g",
//     "fat": "7g",
//     "sodium": "154mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk-Lemon Chess Pie",
//     "calories": "626kcal",
//     "protein": "9g",
//     "fat": "33g",
//     "sodium": "360mg",
//     "status": "false1"
//   },
//   {
//     "food": "Buttermilk-Spinach Spaetzle",
//     "calories": "451kcal",
//     "protein": "10g",
//     "fat": "22g",
//     "sodium": "533mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butternut Squash & Apple Soup",
//     "calories": "230kcal",
//     "protein": "6g",
//     "fat": "9g",
//     "sodium": "308mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butternut Squash & Apple Soup with Melted Blue Cheese",
//     "calories": "468kcal",
//     "protein": "9g",
//     "fat": "29g",
//     "sodium": "2630mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butternut Squash and Apple Soup",
//     "calories": "163kcal",
//     "protein": "3g",
//     "fat": "3g",
//     "sodium": "31mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butternut Squash Latkes with Sage and Pine Nut Yogurt Sauce",
//     "calories": "118kcal",
//     "protein": "1g",
//     "fat": "9g",
//     "sodium": "95mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butternut Squash Polenta",
//     "calories": "386kcal",
//     "protein": "10g",
//     "fat": "21g",
//     "sodium": "891mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butternut Squash Vegducken With Mushroom-Cranberry Stuffing",
//     "calories": "618kcal",
//     "protein": "21g",
//     "fat": "27g",
//     "sodium": "1396mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butternut Squash with Hominy, Corn and Bell Peppers",
//     "calories": "162kcal",
//     "protein": "3g",
//     "fat": "7g",
//     "sodium": "250mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butternut Squash with Shallots and Sage",
//     "calories": "199kcal",
//     "protein": "4g",
//     "fat": "7g",
//     "sodium": "375mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butternut Squash with Tangerine and Sage Glaze",
//     "calories": "146kcal",
//     "protein": "2g",
//     "fat": "4g",
//     "sodium": "11mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butternut Squash, Bacon, and Rosemary Phyllo Pizza",
//     "calories": "455kcal",
//     "protein": "15g",
//     "fat": "29g",
//     "sodium": "515mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butternut Squash, Kale, and Crunchy Pepitas Taco",
//     "calories": "124kcal",
//     "protein": "4g",
//     "fat": "9g",
//     "sodium": "695mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butternut Squash, Parmesan, and Sage Pizzas",
//     "calories": "281kcal",
//     "protein": "11g",
//     "fat": "4g",
//     "sodium": "565mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butternut Squash, Ricotta, and Sage Crostini",
//     "calories": "129kcal",
//     "protein": "4g",
//     "fat": "6g",
//     "sodium": "78mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butternut Squash, Rosemary, and Blue Cheese Risotto",
//     "calories": "961kcal",
//     "protein": "31g",
//     "fat": "35g",
//     "sodium": "808mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Butternut Squash, Sage, and Goat Cheese Ravioli with Hazelnut Brown-Butter Sauce",
//     "calories": "530kcal",
//     "protein": "13g",
//     "fat": "24g",
//     "sodium": "532mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butternut Squash-Parsnip Soup with Thyme",
//     "calories": "262kcal",
//     "protein": "7g",
//     "fat": "12g",
//     "sodium": "80mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butternut-Corn Chowder with Goat Cheese Croutons",
//     "calories": "299kcal",
//     "protein": "10g",
//     "fat": "14g",
//     "sodium": "735mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butter-Rum Baked Apples",
//     "calories": "240kcal",
//     "protein": "1g",
//     "fat": "7g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Butterscotch Blondie Bars With Peanut-Pretzel Caramel",
//     "calories": "255kcal",
//     "protein": "6g",
//     "fat": "13g",
//     "sodium": "171mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cabbage and Tomato Slaw with Sherry-Mustard Viniagrette",
//     "calories": "234kcal",
//     "protein": "3g",
//     "fat": "19g",
//     "sodium": "56mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cabbage and White Bean Soup",
//     "calories": "983kcal",
//     "protein": "81g",
//     "fat": "41g",
//     "sodium": "2562mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cabbage Packages Filled with Creamed Onions, Bacon and Sage",
//     "calories": "215kcal",
//     "protein": "6g",
//     "fat": "17g",
//     "sodium": "1096mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cabbage Salad with Mustard Vinaigrette",
//     "calories": "167kcal",
//     "protein": "4g",
//     "fat": "12g",
//     "sodium": "375mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cabbage Slaw",
//     "calories": "27kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "389mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cabbage Soup with Apples and Thyme",
//     "calories": "303kcal",
//     "protein": "10g",
//     "fat": "15g",
//     "sodium": "139mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cabbage with Shredded Pork-Chinese Style",
//     "calories": "288kcal",
//     "protein": "26g",
//     "fat": "16g",
//     "sodium": "1101mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cabbage, Fresh Fennel, and Carrot Slaw",
//     "calories": "169kcal",
//     "protein": "1g",
//     "fat": "16g",
//     "sodium": "132mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cabbage, leafy vegetable, cooked, Chinese",
//     "calories": "17.28kcal",
//     "protein": "2.31g",
//     "fat": "0.1g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Cabbage, leafy vegetable, inner leaves, boiled, drained, no salt added, savoy",
//     "calories": "13.76kcal",
//     "protein": "1.31g",
//     "fat": "0.1g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cabbage, leafy vegetable, inner leaves, raw, savoy",
//     "calories": "33.33kcal",
//     "protein": "3.31g",
//     "fat": "0.1g",
//     "sodium": "23mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cabbage, leafy vegetable, leaves & stem, raw, bok choy",
//     "calories": "20.06kcal",
//     "protein": "1.95g",
//     "fat": "0.2g",
//     "sodium": "15.2mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Cabbage, leafy vegetable, leaves, boiled, drained, no salt added, green drumhead",
//     "calories": "24.74kcal",
//     "protein": "1.13g",
//     "fat": "0.19g",
//     "sodium": "6.62mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cabbage, leafy vegetable, leaves, raw, green drumhead",
//     "calories": "25.91kcal",
//     "protein": "1.19g",
//     "fat": "0.2g",
//     "sodium": "7.3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cabbage, leafy vegetable, leaves, steamed, green drumhead",
//     "calories": "25.42kcal",
//     "protein": "1.17g",
//     "fat": "0.2g",
//     "sodium": "7.16mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cabbage, leafy vegetable, raw, Chinese",
//     "calories": "12.25kcal",
//     "protein": "1.1g",
//     "fat": "0g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cabbage, leafy vegetable, raw, choy sum",
//     "calories": "13.17kcal",
//     "protein": "1.95g",
//     "fat": "0.2g",
//     "sodium": "12.6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cabbage, leafy vegetable, raw, tat soi",
//     "calories": "17.25kcal",
//     "protein": "2.6g",
//     "fat": "0.3g",
//     "sodium": "5.8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cabbage, leafy vegetable, red",
//     "calories": "28.9kcal",
//     "protein": "1.69g",
//     "fat": "0.3g",
//     "sodium": "32mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cabernet-Cranberry Sauce with Figs",
//     "calories": "265kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caesar Mayonnaise Dressing",
//     "calories": "172kcal",
//     "protein": "2g",
//     "fat": "18g",
//     "sodium": "210mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caesar Pasta Salad",
//     "calories": "497kcal",
//     "protein": "15g",
//     "fat": "22g",
//     "sodium": "196mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caesar Potato Salad with Grilled Red Onion",
//     "calories": "332kcal",
//     "protein": "7g",
//     "fat": "19g",
//     "sodium": "302mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caesar Salad",
//     "calories": "323kcal",
//     "protein": "6g",
//     "fat": "31g",
//     "sodium": "525mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cake, Eccles, baked",
//     "calories": "415.55kcal",
//     "protein": "2.93g",
//     "fat": "22.41g",
//     "sodium": "154.85mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cake, gingerbread, baked",
//     "calories": "354.96kcal",
//     "protein": "4.85g",
//     "fat": "11.46g",
//     "sodium": "163.25mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cake, Madeira",
//     "calories": "333.84kcal",
//     "protein": "4.81g",
//     "fat": "12.55g",
//     "sodium": "340mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cake, sponge, fat added, baked",
//     "calories": "422.98kcal",
//     "protein": "5.64g",
//     "fat": "23.9g",
//     "sodium": "249.6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cake, sponge, jam filled",
//     "calories": "311.48kcal",
//     "protein": "4.22g",
//     "fat": "4.9g",
//     "sodium": "420mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cake, sponge, no fat added, baked",
//     "calories": "274.72kcal",
//     "protein": "9.09g",
//     "fat": "4.35g",
//     "sodium": "71.41mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Cake, sponge, plain, unfilled, uniced,  ready to eat, commercial, composite",
//     "calories": "294.74kcal",
//     "protein": "6.44g",
//     "fat": "4.3g",
//     "sodium": "310mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cake, tea-cake, toasted",
//     "calories": "332.58kcal",
//     "protein": "8.89g",
//     "fat": "8.3g",
//     "sodium": "300mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cake, Welsh cheesecake, baked",
//     "calories": "361.09kcal",
//     "protein": "5.11g",
//     "fat": "16.59g",
//     "sodium": "208.85mg",
//     "status": "false1"
//   },
//   {
//     "food": "Calabaza, Corn, and Coconut Soup",
//     "calories": "392kcal",
//     "protein": "6g",
//     "fat": "26g",
//     "sodium": "680mg",
//     "status": "false1"
//   },
//   {
//     "food": "Calabrian Chile Butter",
//     "calories": "348kcal",
//     "protein": "1g",
//     "fat": "38g",
//     "sodium": "643mg",
//     "status": "false1"
//   },
//   {
//     "food": "Calabrian Chile Oil",
//     "calories": "181kcal",
//     "protein": "0g",
//     "fat": "20g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Calamari Fritti with Creamy Ponzu Dipping Sauce",
//     "calories": "535kcal",
//     "protein": "20g",
//     "fat": "43g",
//     "sodium": "465mg",
//     "status": "false1"
//   },
//   {
//     "food": "Calamari Salad with Passion-Fruit Dressing",
//     "calories": "92kcal",
//     "protein": "12g",
//     "fat": "1g",
//     "sodium": "291mg",
//     "status": "false1"
//   },
//   {
//     "food": "Calamari with Roasted Tomato Sauce",
//     "calories": "1591kcal",
//     "protein": "106g",
//     "fat": "74g",
//     "sodium": "3711mg",
//     "status": "false1"
//   },
//   {
//     "food": "Calamari-Olive Salad",
//     "calories": "174kcal",
//     "protein": "18g",
//     "fat": "9g",
//     "sodium": "93mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cal-Asian Seared Tuna Sandwiches",
//     "calories": "681kcal",
//     "protein": "49g",
//     "fat": "37g",
//     "sodium": "643mg",
//     "status": "false1"
//   },
//   {
//     "food": "Calcutta Lobster in Spinach and Yogurt Sauce",
//     "calories": "274kcal",
//     "protein": "33g",
//     "fat": "11g",
//     "sodium": "1295mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caldo Tlalpeno",
//     "calories": "274kcal",
//     "protein": "21g",
//     "fat": "11g",
//     "sodium": "453mg",
//     "status": "false1"
//   },
//   {
//     "food": "Calf's Liver with Apples and Onions",
//     "calories": "490kcal",
//     "protein": "41g",
//     "fat": "25g",
//     "sodium": "278mg",
//     "status": "false1"
//   },
//   {
//     "food": "California Date Shakes",
//     "calories": "265kcal",
//     "protein": "4g",
//     "fat": "9g",
//     "sodium": "71mg",
//     "status": "false1"
//   },
//   {
//     "food": "California Vegetable and Chickpea Chili",
//     "calories": "931kcal",
//     "protein": "35g",
//     "fat": "40g",
//     "sodium": "2881mg",
//     "status": "false1"
//   },
//   {
//     "food": "Calvados Applesauce",
//     "calories": "281kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Calvados Tarte Tatin",
//     "calories": "312kcal",
//     "protein": "2g",
//     "fat": "15g",
//     "sodium": "47mg",
//     "status": "false1"
//   },
//   {
//     "food": "Calzones with Cheese, Sausage and Roasted Red Pepper",
//     "calories": "1662kcal",
//     "protein": "86g",
//     "fat": "92g",
//     "sodium": "2764mg",
//     "status": "false1"
//   },
//   {
//     "food": "Calzones With Chorizo and Kale",
//     "calories": "693kcal",
//     "protein": "33g",
//     "fat": "33g",
//     "sodium": "1763mg",
//     "status": "false1"
//   },
//   {
//     "food": "Camembert Fondue with Truffle Essence",
//     "calories": "336kcal",
//     "protein": "8g",
//     "fat": "32g",
//     "sodium": "287mg",
//     "status": "false1"
//   },
//   {
//     "food": "Camembert with Blue Cheese, Figs and Port Sauce",
//     "calories": "473kcal",
//     "protein": "19g",
//     "fat": "26g",
//     "sodium": "840mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cameron's Kick",
//     "calories": "134kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Campanelle with White Beans, Lemon, and Burrata",
//     "calories": "484kcal",
//     "protein": "24g",
//     "fat": "10g",
//     "sodium": "380mg",
//     "status": "false1"
//   },
//   {
//     "food": "Campari Affogato With Lemon Sorbet",
//     "calories": "178kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Campari and Grapefruit Ice Pops",
//     "calories": "310kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "22mg",
//     "status": "false1"
//   },
//   {
//     "food": "Campari Champagne Cocktail",
//     "calories": "185kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Campari Citrus Cooler",
//     "calories": "177kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "23mg",
//     "status": "false1"
//   },
//   {
//     "food": "Canal House Teriyaki Sauce",
//     "calories": "202kcal",
//     "protein": "5g",
//     "fat": "0g",
//     "sodium": "1844mg",
//     "status": "false1"
//   },
//   {
//     "food": "Candied Butternut Squash",
//     "calories": "226kcal",
//     "protein": "2g",
//     "fat": "6g",
//     "sodium": "202mg",
//     "status": "false1"
//   },
//   {
//     "food": "Candied Carrot Coins",
//     "calories": "74kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "42mg",
//     "status": "false1"
//   },
//   {
//     "food": "Candied Carrot Curls",
//     "calories": "201kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "15mg",
//     "status": "false1"
//   },
//   {
//     "food": "Candied Cashews",
//     "calories": "230kcal",
//     "protein": "6g",
//     "fat": "18g",
//     "sodium": "124mg",
//     "status": "false1"
//   },
//   {
//     "food": "Candied Citrus Peel",
//     "calories": "135kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Candied Fig, Hazelnut and Orange Cheesecake with Port Sauce",
//     "calories": "704kcal",
//     "protein": "10g",
//     "fat": "44g",
//     "sodium": "341mg",
//     "status": "false1"
//   },
//   {
//     "food": "Candied Ginger-Cardamom Bars",
//     "calories": "149kcal",
//     "protein": "2g",
//     "fat": "8g",
//     "sodium": "53mg",
//     "status": "false1"
//   },
//   {
//     "food": "Candied Grapefruit Zest",
//     "calories": "357kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "17mg",
//     "status": "false1"
//   },
//   {
//     "food": "Candied Kumquats",
//     "calories": "234kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "11mg",
//     "status": "false1"
//   },
//   {
//     "food": "Candied Lemon Peel Ice Cream with Strawberry Compote",
//     "calories": "882kcal",
//     "protein": "10g",
//     "fat": "74g",
//     "sodium": "134mg",
//     "status": "false1"
//   },
//   {
//     "food": "Candied Lemon Peels",
//     "calories": "976kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Candied Nuts with Smoked Almonds",
//     "calories": "355kcal",
//     "protein": "3g",
//     "fat": "31g",
//     "sodium": "56mg",
//     "status": "false1"
//   },
//   {
//     "food": "Candied Orange Zest",
//     "calories": "260kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Candied Sweet Potatoes",
//     "calories": "250kcal",
//     "protein": "3g",
//     "fat": "4g",
//     "sodium": "398mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cantaloupe and Prosciutto with Basil Oil",
//     "calories": "309kcal",
//     "protein": "19g",
//     "fat": "23g",
//     "sodium": "1552mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cantaloupe Aqua Fresca with Beet Swirl",
//     "calories": "105kcal",
//     "protein": "2g",
//     "fat": "0g",
//     "sodium": "47mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cantaloupe Basil Salsa",
//     "calories": "93kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "188mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cantaloupe Conserve",
//     "calories": "130kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "20mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cantaloupe Granita",
//     "calories": "160kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "19mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cantaloupe Raspberry Shake",
//     "calories": "234kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "54mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cantaloupe Salad with Lime, Mint, and Ginger",
//     "calories": "66kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "14mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cantaloupe Sherbet",
//     "calories": "234kcal",
//     "protein": "3g",
//     "fat": "3g",
//     "sodium": "50mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cantaloupe Sorbet with Melon Confetti Compote",
//     "calories": "209kcal",
//     "protein": "2g",
//     "fat": "0g",
//     "sodium": "36mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cantaloupe Soup",
//     "calories": "101kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "38mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cantaloupe-Basil Agua Fresca",
//     "calories": "118kcal",
//     "protein": "3g",
//     "fat": "1g",
//     "sodium": "53mg",
//     "status": "false1"
//   },
//   {
//     "food": "Canton Ginger Kick",
//     "calories": "191kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "38mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cape Codder",
//     "calories": "209kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Capellini with Fresh Ricotta, Roasted Garlic, Corn, and Herbs",
//     "calories": "429kcal",
//     "protein": "15g",
//     "fat": "22g",
//     "sodium": "182mg",
//     "status": "false1"
//   },
//   {
//     "food": "Capellini with Salmon and Lemon-Dill-Vodka Sauce",
//     "calories": "468kcal",
//     "protein": "13g",
//     "fat": "16g",
//     "sodium": "727mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caper, Raisin, and Lemon Pesto",
//     "calories": "452kcal",
//     "protein": "3g",
//     "fat": "41g",
//     "sodium": "811mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caper-Saffron Mayonnaise",
//     "calories": "155kcal",
//     "protein": "0g",
//     "fat": "17g",
//     "sodium": "226mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caponata",
//     "calories": "295kcal",
//     "protein": "2g",
//     "fat": "28g",
//     "sodium": "789mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caponatina Toasts",
//     "calories": "176kcal",
//     "protein": "0g",
//     "fat": "19g",
//     "sodium": "68mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cappuccino Brownies",
//     "calories": "323kcal",
//     "protein": "3g",
//     "fat": "20g",
//     "sodium": "100mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cappuccino Brownies with White Chocolate-Espresso Sauce",
//     "calories": "1359kcal",
//     "protein": "17g",
//     "fat": "85g",
//     "sodium": "109mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cappuccino Cheesecake",
//     "calories": "531kcal",
//     "protein": "8g",
//     "fat": "39g",
//     "sodium": "325mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cappuccino Creams",
//     "calories": "274kcal",
//     "protein": "4g",
//     "fat": "20g",
//     "sodium": "91mg",
//     "status": "false1"
//   },
//   {
//     "food": "Capsicum, fruit vegetable, boiled, red",
//     "calories": "37.95kcal",
//     "protein": "1.1g",
//     "fat": "0.4g",
//     "sodium": "70mg",
//     "status": "false1"
//   },
//   {
//     "food": "Capsicum, fruit vegetable, stalk & seeds removed, raw, green",
//     "calories": "20.25kcal",
//     "protein": "0.94g",
//     "fat": "0.2g",
//     "sodium": "0mg",
//     "status": "false1"
//   },
//   {
//     "food": "Capsicum, fruit vegetable, stalk & seeds removed, raw, orange",
//     "calories": "28.38kcal",
//     "protein": "0.94g",
//     "fat": "0.2g",
//     "sodium": "0mg",
//     "status": "false1"
//   },
//   {
//     "food": "Capsicum, fruit vegetable, stalk & seeds removed, raw, red",
//     "calories": "28.79kcal",
//     "protein": "0.94g",
//     "fat": "0.2g",
//     "sodium": "0mg",
//     "status": "false1"
//   },
//   {
//     "food": "Capsicum, fruit vegetable, stalk & seeds removed, raw, yellow",
//     "calories": "28.38kcal",
//     "protein": "0.94g",
//     "fat": "0.2g",
//     "sodium": "0mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Capsicum, red, fruit vegetable, sliced, frozen, pan-fried with olive oil, no salt added",
//     "calories": "62.74kcal",
//     "protein": "1.4g",
//     "fat": "3.9g",
//     "sodium": "10.37mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Capsicum, red, fruit vegetable, sliced, frozen, unprepared, composite",
//     "calories": "23.35kcal",
//     "protein": "0.98g",
//     "fat": "0.19g",
//     "sodium": "7.4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Capucine",
//     "calories": "187kcal",
//     "protein": "1g",
//     "fat": "9g",
//     "sodium": "26mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramel Apple Pastis",
//     "calories": "347kcal",
//     "protein": "4g",
//     "fat": "14g",
//     "sodium": "81mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramel Apple Shortcakes",
//     "calories": "509kcal",
//     "protein": "5g",
//     "fat": "21g",
//     "sodium": "198mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramel Chocolate Ganache",
//     "calories": "261kcal",
//     "protein": "2g",
//     "fat": "17g",
//     "sodium": "9mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramel Corn Blondies",
//     "calories": "271kcal",
//     "protein": "8g",
//     "fat": "19g",
//     "sodium": "71mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramel Custards with Ginger (Cremes Caramels au Gingembre)",
//     "calories": "361kcal",
//     "protein": "10g",
//     "fat": "11g",
//     "sodium": "98mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramel Macadamia Nut Crunch",
//     "calories": "223kcal",
//     "protein": "2g",
//     "fat": "19g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramel Mousse Napoleon with Caramel Sauce and Berries",
//     "calories": "1993kcal",
//     "protein": "16g",
//     "fat": "154g",
//     "sodium": "302mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramel Nut Tart",
//     "calories": "931kcal",
//     "protein": "14g",
//     "fat": "63g",
//     "sodium": "20mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramel Pears",
//     "calories": "482kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramel Pecan Cakes",
//     "calories": "451kcal",
//     "protein": "4g",
//     "fat": "15g",
//     "sodium": "242mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramel Sauce",
//     "calories": "407kcal",
//     "protein": "1g",
//     "fat": "10g",
//     "sodium": "34mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramel, White Chocolate and Rum Bread Pudding",
//     "calories": "394kcal",
//     "protein": "7g",
//     "fat": "13g",
//     "sodium": "205mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramel-Apple Tartlets with Cinnamon-Rum Ice Cream",
//     "calories": "772kcal",
//     "protein": "7g",
//     "fat": "38g",
//     "sodium": "300mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramel-Dipped Popovers with Chocolate Mousse",
//     "calories": "338kcal",
//     "protein": "6g",
//     "fat": "17g",
//     "sodium": "354mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramel-Glazed Walnut Cake",
//     "calories": "332kcal",
//     "protein": "8g",
//     "fat": "10g",
//     "sodium": "243mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized Apple and Pear Pie",
//     "calories": "3358029kcal",
//     "protein": "58324g",
//     "fat": "186642g",
//     "sodium": "3449373mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized Apples",
//     "calories": "405kcal",
//     "protein": "1g",
//     "fat": "24g",
//     "sodium": "14mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized Banana with Rum Sauce",
//     "calories": "279kcal",
//     "protein": "2g",
//     "fat": "8g",
//     "sodium": "102mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized Bananas",
//     "calories": "185kcal",
//     "protein": "1g",
//     "fat": "6g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized Bananas and Vanilla Cream in Phyllo Cups",
//     "calories": "524kcal",
//     "protein": "7g",
//     "fat": "23g",
//     "sodium": "182mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized Chestnuts",
//     "calories": "98kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "0mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized Chipotle Chicken",
//     "calories": "1305kcal",
//     "protein": "100g",
//     "fat": "89g",
//     "sodium": "820mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Caramelized Figs with Vanilla Ice Cream and Aged Balsamic Vinegar",
//     "calories": "191kcal",
//     "protein": "2g",
//     "fat": "7g",
//     "sodium": "57mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized Fresh Pineapple Tiramisu",
//     "calories": "372kcal",
//     "protein": "9g",
//     "fat": "20g",
//     "sodium": "280mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized Garlic, Spinach, and Cheddar Tart",
//     "calories": "562kcal",
//     "protein": "23g",
//     "fat": "44g",
//     "sodium": "412mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized Nut Tart",
//     "calories": "419kcal",
//     "protein": "5g",
//     "fat": "24g",
//     "sodium": "68mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized Nuts",
//     "calories": "238kcal",
//     "protein": "5g",
//     "fat": "17g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized Onion and Chestnut Stuffing",
//     "calories": "325kcal",
//     "protein": "8g",
//     "fat": "13g",
//     "sodium": "361mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized Onion and Goat Cheese Tarts",
//     "calories": "197kcal",
//     "protein": "5g",
//     "fat": "14g",
//     "sodium": "105mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Caramelized Onion and Portobello Mushroom Soup with Goat Cheese Croutons",
//     "calories": "356kcal",
//     "protein": "15g",
//     "fat": "15g",
//     "sodium": "1620mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized Onion and Roasted Red Pepper Linguine",
//     "calories": "584kcal",
//     "protein": "20g",
//     "fat": "17g",
//     "sodium": "229mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized Onion and Sour Cream Spread",
//     "calories": "432kcal",
//     "protein": "12g",
//     "fat": "25g",
//     "sodium": "350mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized Onions",
//     "calories": "114kcal",
//     "protein": "1g",
//     "fat": "7g",
//     "sodium": "721mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized Onions with Barbecue Sauce",
//     "calories": "154kcal",
//     "protein": "1g",
//     "fat": "7g",
//     "sodium": "590mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized Pineapple Sundaes with Chocolate-Coconut Sauce",
//     "calories": "556kcal",
//     "protein": "5g",
//     "fat": "27g",
//     "sodium": "112mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized Pineapple with Brown Sugar-Ginger Ice Cream",
//     "calories": "239kcal",
//     "protein": "1g",
//     "fat": "2g",
//     "sodium": "27mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized Pistachio, Walnut, and Almond Tart",
//     "calories": "599kcal",
//     "protein": "8g",
//     "fat": "44g",
//     "sodium": "253mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized Plums with Lemon-Gingersnap Yogurt",
//     "calories": "123kcal",
//     "protein": "3g",
//     "fat": "2g",
//     "sodium": "41mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized Potatoes",
//     "calories": "137kcal",
//     "protein": "2g",
//     "fat": "3g",
//     "sodium": "492mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized Walnuts",
//     "calories": "178kcal",
//     "protein": "2g",
//     "fat": "7g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized-Honey Nut and Seed Tart",
//     "calories": "278kcal",
//     "protein": "5g",
//     "fat": "19g",
//     "sodium": "126mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized-Nectarine and Ginger Shortcakes with Sour Cream",
//     "calories": "607kcal",
//     "protein": "8g",
//     "fat": "30g",
//     "sodium": "350mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized-Onion and Parmesan Cream Scones",
//     "calories": "296kcal",
//     "protein": "9g",
//     "fat": "12g",
//     "sodium": "769mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Caramelized-Onion and Wine-Braised Brisket with Glazed Vegetables",
//     "calories": "1351kcal",
//     "protein": "84g",
//     "fat": "85g",
//     "sodium": "496mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized-Onion Dip with Cilantro-Garlic Pita Crisps",
//     "calories": "223kcal",
//     "protein": "3g",
//     "fat": "16g",
//     "sodium": "113mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized-Onion Pizza with Mushrooms",
//     "calories": "632kcal",
//     "protein": "16g",
//     "fat": "24g",
//     "sodium": "724mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized-Onion Tartlets",
//     "calories": "184kcal",
//     "protein": "1g",
//     "fat": "11g",
//     "sodium": "220mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized-Onion, Rosemary, and Pine Nut Topping",
//     "calories": "164kcal",
//     "protein": "2g",
//     "fat": "14g",
//     "sodium": "198mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramelized-Shallot Mashed Potatoes",
//     "calories": "275kcal",
//     "protein": "5g",
//     "fat": "13g",
//     "sodium": "30mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caramel-Nut Tart",
//     "calories": "572kcal",
//     "protein": "8g",
//     "fat": "38g",
//     "sodium": "163mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cardamom Ambrosia Salad with Blue Cheese Dressing",
//     "calories": "297kcal",
//     "protein": "6g",
//     "fat": "9g",
//     "sodium": "546mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cardamom and Lemon Rice Pudding",
//     "calories": "821kcal",
//     "protein": "16g",
//     "fat": "23g",
//     "sodium": "124mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cardamom Apple Almond Cake",
//     "calories": "320kcal",
//     "protein": "8g",
//     "fat": "13g",
//     "sodium": "191mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cardamom Chai",
//     "calories": "47kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "58mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cardamom Crescents",
//     "calories": "84kcal",
//     "protein": "1g",
//     "fat": "5g",
//     "sodium": "20mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cardamom Pound Cake",
//     "calories": "442kcal",
//     "protein": "7g",
//     "fat": "24g",
//     "sodium": "276mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cardamom Rice Pudding (Payasam)",
//     "calories": "417kcal",
//     "protein": "11g",
//     "fat": "14g",
//     "sodium": "162mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cardamom Spice Blend",
//     "calories": "49kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "117mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cardamom Yogurt Pudding with Orange and Cinnamon Honey Syrup",
//     "calories": "293kcal",
//     "protein": "7g",
//     "fat": "4g",
//     "sodium": "62mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cardamom-Almond Custard",
//     "calories": "403kcal",
//     "protein": "10g",
//     "fat": "28g",
//     "sodium": "58mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cardamom-Scented Grass-Fed Rib Steak with Herb Vinaigrette",
//     "calories": "419kcal",
//     "protein": "23g",
//     "fat": "33g",
//     "sodium": "934mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cardinal fish, flesh, raw",
//     "calories": "91.88kcal",
//     "protein": "18.75g",
//     "fat": "1.65g",
//     "sodium": "92mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cargamanto and Green-Bean Salad with Chimichurri Dressing",
//     "calories": "199kcal",
//     "protein": "2g",
//     "fat": "18g",
//     "sodium": "24mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caribbean Chicken Breasts",
//     "calories": "761kcal",
//     "protein": "40g",
//     "fat": "43g",
//     "sodium": "499mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caribbean Christmas Pudding with Brandy Butter",
//     "calories": "624kcal",
//     "protein": "9g",
//     "fat": "28g",
//     "sodium": "405mg",
//     "status": "false1"
//   },
//   {
//     "food": "Carom Seeds Poori",
//     "calories": "219kcal",
//     "protein": "6g",
//     "fat": "10g",
//     "sodium": "184mg",
//     "status": "false1"
//   },
//   {
//     "food": "Carp Fish Cakes with Citrus \"Tartar\" Sauce",
//     "calories": "169kcal",
//     "protein": "7g",
//     "fat": "15g",
//     "sodium": "338mg",
//     "status": "false1"
//   },
//   {
//     "food": "Carp, grass, flesh, raw",
//     "calories": "95.97kcal",
//     "protein": "17.88g",
//     "fat": "2.5g",
//     "sodium": "65mg",
//     "status": "false1"
//   },
//   {
//     "food": "Carp, kio, flesh, raw",
//     "calories": "118.96kcal",
//     "protein": "16.69g",
//     "fat": "5.63g",
//     "sodium": "56mg",
//     "status": "false1"
//   },
//   {
//     "food": "Carp, silver, flesh, raw",
//     "calories": "179.45kcal",
//     "protein": "17.75g",
//     "fat": "11.98g",
//     "sodium": "50mg",
//     "status": "false1"
//   },
//   {
//     "food": "Carrot and Beet Salad with Ginger Vinaigrette",
//     "calories": "226kcal",
//     "protein": "2g",
//     "fat": "19g",
//     "sodium": "242mg",
//     "status": "false1"
//   },
//   {
//     "food": "Carrot and Beet Slaw with Pistachios and Raisins",
//     "calories": "319kcal",
//     "protein": "6g",
//     "fat": "19g",
//     "sodium": "118mg",
//     "status": "false1"
//   },
//   {
//     "food": "Carrot and Bell Pepper Slaw",
//     "calories": "155kcal",
//     "protein": "2g",
//     "fat": "12g",
//     "sodium": "160mg",
//     "status": "false1"
//   },
//   {
//     "food": "Carrot and Cranberry Salad with Fresh Ginger Dressing",
//     "calories": "57kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "43mg",
//     "status": "false1"
//   },
//   {
//     "food": "Carrots with Shallots, Sage, and Thyme",
//     "calories": "156kcal",
//     "protein": "3g",
//     "fat": "7g",
//     "sodium": "191mg",
//     "status": "false1"
//   },
//   {
//     "food": "Carrot-Walnut Bundt Cake with Lemon Cream Cheese Icing",
//     "calories": "426kcal",
//     "protein": "5g",
//     "fat": "24g",
//     "sodium": "311mg",
//     "status": "false1"
//   },
//   {
//     "food": "Carroty Mac and Cheese",
//     "calories": "524kcal",
//     "protein": "22g",
//     "fat": "36g",
//     "sodium": "829mg",
//     "status": "false1"
//   },
//   {
//     "food": "Caruso",
//     "calories": "203kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cashew Mousse",
//     "calories": "355kcal",
//     "protein": "6g",
//     "fat": "22g",
//     "sodium": "215mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cashew Orange Biscotti",
//     "calories": "52kcal",
//     "protein": "1g",
//     "fat": "2g",
//     "sodium": "36mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cashew Soup",
//     "calories": "189kcal",
//     "protein": "7g",
//     "fat": "15g",
//     "sodium": "320mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cashew-Coconut Tart in Chocolate Crust",
//     "calories": "495kcal",
//     "protein": "6g",
//     "fat": "30g",
//     "sodium": "202mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cassata Cake",
//     "calories": "330kcal",
//     "protein": "4g",
//     "fat": "18g",
//     "sodium": "87mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Cassava, root vegetable, root tuber, baked in traditional Papua New Guinea oven",
//     "calories": "157.01kcal",
//     "protein": "0.7g",
//     "fat": "0.2g",
//     "sodium": "7.1mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Cassava, root vegetable, root tuber, peeled, boiled, drained, no salt added",
//     "calories": "143.53kcal",
//     "protein": "0.5g",
//     "fat": "0.17g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cassava, root vegetable, root tuber, peeled, raw",
//     "calories": "143.53kcal",
//     "protein": "0.5g",
//     "fat": "0.2g",
//     "sodium": "7.2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Casserole of Turkey with Rice",
//     "calories": "502kcal",
//     "protein": "30g",
//     "fat": "13g",
//     "sodium": "1797mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cassis-Spiked Cranberry Sauce",
//     "calories": "214kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "31mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cassoulet",
//     "calories": "1165kcal",
//     "protein": "68g",
//     "fat": "71g",
//     "sodium": "1517mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cassoulet in the Style of Toulouse (Cassoulet de Toulouse)",
//     "calories": "1335kcal",
//     "protein": "81g",
//     "fat": "85g",
//     "sodium": "3032mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cassoulet Soup",
//     "calories": "849kcal",
//     "protein": "44g",
//     "fat": "48g",
//     "sodium": "480mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Castellane Pasta with Sausage, Peppers, Cherry Tomaotes, and Marjoram",
//     "calories": "900kcal",
//     "protein": "36g",
//     "fat": "48g",
//     "sodium": "1010mg",
//     "status": "false1"
//   },
//   {
//     "food": "Catalan Spinach",
//     "calories": "319kcal",
//     "protein": "6g",
//     "fat": "22g",
//     "sodium": "82mg",
//     "status": "false1"
//   },
//   {
//     "food": "Catfish and Okra with Pecan Butter Sauce",
//     "calories": "686kcal",
//     "protein": "40g",
//     "fat": "49g",
//     "sodium": "527mg",
//     "status": "false1"
//   },
//   {
//     "food": "Catfish in Spicy Tomato Sauce",
//     "calories": "217kcal",
//     "protein": "23g",
//     "fat": "11g",
//     "sodium": "777mg",
//     "status": "false1"
//   },
//   {
//     "food": "Catfish with Green Olives",
//     "calories": "307kcal",
//     "protein": "26g",
//     "fat": "21g",
//     "sodium": "635mg",
//     "status": "false1"
//   },
//   {
//     "food": "Catfish with Herbed Lemon Cream",
//     "calories": "473kcal",
//     "protein": "28g",
//     "fat": "31g",
//     "sodium": "765mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cauliflower \"Bistecche\" with Pancetta and Caper Berries",
//     "calories": "1062kcal",
//     "protein": "27g",
//     "fat": "95g",
//     "sodium": "1781mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cauliflower \"Couscous\" With Dried Fruit and Almonds",
//     "calories": "162kcal",
//     "protein": "5g",
//     "fat": "7g",
//     "sodium": "315mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cauliflower \"Mac 'n' Cheese\" Casserole",
//     "calories": "563kcal",
//     "protein": "30g",
//     "fat": "42g",
//     "sodium": "1414mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cauliflower \"Rice\" Tabbouleh",
//     "calories": "218kcal",
//     "protein": "5g",
//     "fat": "18g",
//     "sodium": "64mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Cauliflower and Brussels Sprout Gratin with Pine Nut-Breadcrumb Topping",
//     "calories": "796kcal",
//     "protein": "21g",
//     "fat": "74g",
//     "sodium": "579mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cauliflower and Caramelized Onion Tart",
//     "calories": "404kcal",
//     "protein": "12g",
//     "fat": "32g",
//     "sodium": "528mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cauliflower and Chickpea Curry",
//     "calories": "324kcal",
//     "protein": "14g",
//     "fat": "11g",
//     "sodium": "317mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cauliflower and Leek Risotto",
//     "calories": "236kcal",
//     "protein": "8g",
//     "fat": "8g",
//     "sodium": "169mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cauliflower and Spinach Vinaigrette",
//     "calories": "296kcal",
//     "protein": "9g",
//     "fat": "23g",
//     "sodium": "283mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cauliflower Caraway Potato Soup",
//     "calories": "129kcal",
//     "protein": "5g",
//     "fat": "1g",
//     "sodium": "51mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cauliflower Cheddar Gratin with Horseradish Crumbs",
//     "calories": "250kcal",
//     "protein": "11g",
//     "fat": "16g",
//     "sodium": "445mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cauliflower Fritters",
//     "calories": "19kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "78mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cauliflower Maque Choux",
//     "calories": "437kcal",
//     "protein": "6g",
//     "fat": "38g",
//     "sodium": "408mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cauliflower Pizzas With Mozzarella, Kale, and Lemon",
//     "calories": "461kcal",
//     "protein": "27g",
//     "fat": "33g",
//     "sodium": "525mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cauliflower, White Bean, and Feta Salad",
//     "calories": "250kcal",
//     "protein": "9g",
//     "fat": "15g",
//     "sodium": "1044mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cauliflower-Leek Kugel with Almond-Herb Crust",
//     "calories": "206kcal",
//     "protein": "6g",
//     "fat": "14g",
//     "sodium": "508mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Celery Root, Radish, and Watercress Salad with Mustard Seed Dressing",
//     "calories": "229kcal",
//     "protein": "3g",
//     "fat": "19g",
//     "sodium": "133mg",
//     "status": "false1"
//   },
//   {
//     "food": "Celery Salad",
//     "calories": "550kcal",
//     "protein": "2g",
//     "fat": "58g",
//     "sodium": "417mg",
//     "status": "false1"
//   },
//   {
//     "food": "Celery Salad With Celery Root And Horseradish",
//     "calories": "215kcal",
//     "protein": "2g",
//     "fat": "19g",
//     "sodium": "181mg",
//     "status": "false1"
//   },
//   {
//     "food": "Celery Seed Dressing",
//     "calories": "184kcal",
//     "protein": "0g",
//     "fat": "18g",
//     "sodium": "161mg",
//     "status": "false1"
//   },
//   {
//     "food": "Celery Stuffed with Smoked Gouda and Sun-Dried Tomatoes",
//     "calories": "187kcal",
//     "protein": "5g",
//     "fat": "17g",
//     "sodium": "296mg",
//     "status": "false1"
//   },
//   {
//     "food": "Celery, Apple, and Fennel Slaw",
//     "calories": "148kcal",
//     "protein": "2g",
//     "fat": "10g",
//     "sodium": "57mg",
//     "status": "false1"
//   },
//   {
//     "food": "Celery, Radish, and Olive Salad",
//     "calories": "192kcal",
//     "protein": "4g",
//     "fat": "12g",
//     "sodium": "662mg",
//     "status": "false1"
//   },
//   {
//     "food": "Celery, Radishes, and Endive with Anchovy Dressing",
//     "calories": "202kcal",
//     "protein": "1g",
//     "fat": "21g",
//     "sodium": "396mg",
//     "status": "false1"
//   },
//   {
//     "food": "Celery, stem vegetable, stalk, raw, green, American Green",
//     "calories": "11.95kcal",
//     "protein": "0.54g",
//     "fat": "0.2g",
//     "sodium": "30mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Celery, stem vegetable, stalk, stir fried, green, American Green",
//     "calories": "34.88kcal",
//     "protein": "0.68g",
//     "fat": "2.5g",
//     "sodium": "37.62mg",
//     "status": "false1"
//   },
//   {
//     "food": "Champagne Americana",
//     "calories": "136kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "5mg",
//     "status": "false1"
//   },
//   {
//     "food": "Champagne Black Raspberry Punch",
//     "calories": "551kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "30mg",
//     "status": "false1"
//   },
//   {
//     "food": "Champagne Vinaigrette",
//     "calories": "749kcal",
//     "protein": "1g",
//     "fat": "73g",
//     "sodium": "937mg",
//     "status": "false1"
//   },
//   {
//     "food": "Champagne Zabaglione with Fresh Fruit Compote",
//     "calories": "306kcal",
//     "protein": "4g",
//     "fat": "10g",
//     "sodium": "20mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chandon Brut Mojito",
//     "calories": "150kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "12mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chanterelle Mushroom Gravy",
//     "calories": "203kcal",
//     "protein": "4g",
//     "fat": "12g",
//     "sodium": "591mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chanticleer",
//     "calories": "258kcal",
//     "protein": "3g",
//     "fat": "0g",
//     "sodium": "48mg",
//     "status": "false1"
//   },
//   {
//     "food": "Charcoal-Grilled Corn with Cream, Cheese, and Chile",
//     "calories": "176kcal",
//     "protein": "5g",
//     "fat": "12g",
//     "sodium": "107mg",
//     "status": "false1"
//   },
//   {
//     "food": "Char-Grilled Beef Tenderloin with Three-Herb Chimichurri",
//     "calories": "745kcal",
//     "protein": "41g",
//     "fat": "60g",
//     "sodium": "1146mg",
//     "status": "false1"
//   },
//   {
//     "food": "Charmoula",
//     "calories": "208kcal",
//     "protein": "1g",
//     "fat": "23g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Charred Eggplant and Tahini Spread",
//     "calories": "183kcal",
//     "protein": "2g",
//     "fat": "16g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Charred Green Beans with Lemon Verbena Pesto",
//     "calories": "827kcal",
//     "protein": "15g",
//     "fat": "75g",
//     "sodium": "219mg",
//     "status": "false1"
//   },
//   {
//     "food": "Charred Tomatillo Salsa Verde",
//     "calories": "83kcal",
//     "protein": "2g",
//     "fat": "5g",
//     "sodium": "15mg",
//     "status": "false1"
//   },
//   {
//     "food": "Charred Tomato Mint Salsa",
//     "calories": "38kcal",
//     "protein": "2g",
//     "fat": "0g",
//     "sodium": "130mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chawan Mushi with Shrimp and Spring Peas",
//     "calories": "87kcal",
//     "protein": "7g",
//     "fat": "3g",
//     "sodium": "133mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chayote Slaw",
//     "calories": "213kcal",
//     "protein": "1g",
//     "fat": "20g",
//     "sodium": "9mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chayote Soup with Lemongrass and Ginger",
//     "calories": "115kcal",
//     "protein": "7g",
//     "fat": "2g",
//     "sodium": "93mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheddar Chicken Tenders with Wilted Spinach",
//     "calories": "606kcal",
//     "protein": "30g",
//     "fat": "43g",
//     "sodium": "1230mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheddar Chutney Tea Sandwiches",
//     "calories": "144kcal",
//     "protein": "4g",
//     "fat": "8g",
//     "sodium": "165mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheddar Chutney Toasts",
//     "calories": "162kcal",
//     "protein": "6g",
//     "fat": "6g",
//     "sodium": "289mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheddar Corn Bread",
//     "calories": "369kcal",
//     "protein": "13g",
//     "fat": "16g",
//     "sodium": "730mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheddar, Turkey and Cranberry on Sourdough",
//     "calories": "577kcal",
//     "protein": "37g",
//     "fat": "28g",
//     "sodium": "817mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheddar, Vegetable and Sausage Strata",
//     "calories": "499kcal",
//     "protein": "25g",
//     "fat": "33g",
//     "sodium": "984mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheddar-Chive Scones",
//     "calories": "228kcal",
//     "protein": "5g",
//     "fat": "14g",
//     "sodium": "334mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheddar-Stuffed Mushrooms",
//     "calories": "62kcal",
//     "protein": "2g",
//     "fat": "5g",
//     "sodium": "70mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese and Hominy Quesadillas with Tropical Salsa",
//     "calories": "508kcal",
//     "protein": "22g",
//     "fat": "25g",
//     "sodium": "939mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese and Potato Soup",
//     "calories": "427kcal",
//     "protein": "21g",
//     "fat": "24g",
//     "sodium": "591mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Cheese- and Shrimp-Stuffed Roasted Poblanos with Red Bell Pepper Sauce",
//     "calories": "116kcal",
//     "protein": "12g",
//     "fat": "5g",
//     "sodium": "364mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese Blintzes",
//     "calories": "195kcal",
//     "protein": "14g",
//     "fat": "8g",
//     "sodium": "388mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese Blintzes with Blueberry Sauce",
//     "calories": "261kcal",
//     "protein": "9g",
//     "fat": "11g",
//     "sodium": "402mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese Blintzes with Strawberry-Rhubarb Compote",
//     "calories": "515kcal",
//     "protein": "11g",
//     "fat": "28g",
//     "sodium": "241mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese Blintzes with Three-Berry Compote",
//     "calories": "433kcal",
//     "protein": "15g",
//     "fat": "21g",
//     "sodium": "538mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese Bread Zuder",
//     "calories": "299kcal",
//     "protein": "14g",
//     "fat": "15g",
//     "sodium": "417mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese Crisps",
//     "calories": "163kcal",
//     "protein": "10g",
//     "fat": "13g",
//     "sodium": "252mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese, cottage",
//     "calories": "94.64kcal",
//     "protein": "13.65g",
//     "fat": "3.5g",
//     "sodium": "394mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese, Danish blue type",
//     "calories": "343.74kcal",
//     "protein": "20.1g",
//     "fat": "29.6g",
//     "sodium": "1260mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese, Edam, Alpine & Rolling Meadow, composite",
//     "calories": "341.66kcal",
//     "protein": "28.07g",
//     "fat": "25.7g",
//     "sodium": "770mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese, Edam, Anchor",
//     "calories": "359.36kcal",
//     "protein": "28.07g",
//     "fat": "27.7g",
//     "sodium": "780mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese, edam, composite",
//     "calories": "351.84kcal",
//     "protein": "28.07g",
//     "fat": "26.85g",
//     "sodium": "767.5mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese, Edam, Mainland",
//     "calories": "350.51kcal",
//     "protein": "28.07g",
//     "fat": "26.7g",
//     "sodium": "780mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese, Edam, Valumetric",
//     "calories": "355.82kcal",
//     "protein": "28.07g",
//     "fat": "27.3g",
//     "sodium": "740mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese, Egmont",
//     "calories": "377.93kcal",
//     "protein": "25.46g",
//     "fat": "31g",
//     "sodium": "608mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Cheese, feta, from cows' milk, soft, reduced fat, salt-cured, composite, New Zealand",
//     "calories": "104.81kcal",
//     "protein": "19.25g",
//     "fat": "2.4g",
//     "sodium": "1270mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Cheese, feta, from cows' milk, soft, traditional, salt-cured, composite, New Zealand",
//     "calories": "280.23kcal",
//     "protein": "16.88g",
//     "fat": "23.4g",
//     "sodium": "970mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Cheese, feta, from goats' milk, soft, salt-cured, composite, New Zealand",
//     "calories": "240.95kcal",
//     "protein": "14.6g",
//     "fat": "20.1g",
//     "sodium": "1100mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese, Gouda",
//     "calories": "370.22kcal",
//     "protein": "25.2g",
//     "fat": "29.81g",
//     "sodium": "813mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese, Gruyere",
//     "calories": "407.44kcal",
//     "protein": "29.79g",
//     "fat": "32.34g",
//     "sodium": "336mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese, haloumi, from cows' milk, soft, composite, New Zealand",
//     "calories": "322.09kcal",
//     "protein": "20.02g",
//     "fat": "26.5g",
//     "sodium": "960mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese, Herb, and Sun-Dried Tomato Phyllo Rolls",
//     "calories": "106kcal",
//     "protein": "6g",
//     "fat": "7g",
//     "sodium": "248mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese, mozzarella",
//     "calories": "270.41kcal",
//     "protein": "27.56g",
//     "fat": "17.84g",
//     "sodium": "527mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Cheese, parmesan, from cows' milk, hard, ungrated, composite, New Zealand",
//     "calories": "361.98kcal",
//     "protein": "32.63g",
//     "fat": "25.9g",
//     "sodium": "690mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese, parmesan, powder, composite",
//     "calories": "442.61kcal",
//     "protein": "44.92g",
//     "fat": "29.32g",
//     "sodium": "1300mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese, processed",
//     "calories": "338.29kcal",
//     "protein": "21.18g",
//     "fat": "28.21g",
//     "sodium": "1140mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese, processed, sliced, reduced fat, composite",
//     "calories": "208.39kcal",
//     "protein": "22.52g",
//     "fat": "11.38g",
//     "sodium": "1690mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese, ricotta, from cows' milk, original, composite",
//     "calories": "168.52kcal",
//     "protein": "10.28g",
//     "fat": "12.8g",
//     "sodium": "168mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese, spread",
//     "calories": "273.65kcal",
//     "protein": "13.46g",
//     "fat": "22.8g",
//     "sodium": "1060mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese, Stilton",
//     "calories": "407.01kcal",
//     "protein": "22.71g",
//     "fat": "35.5g",
//     "sodium": "930mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese, Swiss",
//     "calories": "381.42kcal",
//     "protein": "28.39g",
//     "fat": "30g",
//     "sodium": "415mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheeseburgers with Charred Green Chiles and Onions",
//     "calories": "567kcal",
//     "protein": "42g",
//     "fat": "30g",
//     "sodium": "1118mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheesecake Fruit Tart",
//     "calories": "458kcal",
//     "protein": "4g",
//     "fat": "24g",
//     "sodium": "327mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheesecake Mousse with Rum-Poached Plums",
//     "calories": "488kcal",
//     "protein": "4g",
//     "fat": "26g",
//     "sodium": "172mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheesecake with Ginger-Lime Candied Raspberries",
//     "calories": "662kcal",
//     "protein": "5g",
//     "fat": "55g",
//     "sodium": "420mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese-Stuffed Poblanos with Tomato Sauce",
//     "calories": "1686kcal",
//     "protein": "25g",
//     "fat": "166g",
//     "sodium": "433mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Cheese-Stuffed Potatoes with Yogurt-Spice Paste and Sesame Seed Crust",
//     "calories": "383kcal",
//     "protein": "13g",
//     "fat": "18g",
//     "sodium": "533mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cheese-Stuffed Smoked Pork Chops on Warm Cabbage Caraway Slaw",
//     "calories": "1758kcal",
//     "protein": "198g",
//     "fat": "98g",
//     "sodium": "1019mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Cheese-Stuffed Squash Blossoms with Shaved Baby Squash and Toasted Pumpkin Seeds",
//     "calories": "3177kcal",
//     "protein": "9g",
//     "fat": "342g",
//     "sodium": "874mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry Compote",
//     "calories": "256kcal",
//     "protein": "2g",
//     "fat": "0g",
//     "sodium": "5mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry Newtons and Vanilla Milkshakes",
//     "calories": "904kcal",
//     "protein": "11g",
//     "fat": "33g",
//     "sodium": "419mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry Smash",
//     "calories": "443kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "9mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry Tomato Polenta Tartlets with Basil Mayonnaise",
//     "calories": "98kcal",
//     "protein": "1g",
//     "fat": "9g",
//     "sodium": "159mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry Tomato, Ricotta, and Olive Galettes",
//     "calories": "526kcal",
//     "protein": "16g",
//     "fat": "28g",
//     "sodium": "1191mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry Tomatoes Stuffed With Avocado",
//     "calories": "126kcal",
//     "protein": "2g",
//     "fat": "11g",
//     "sodium": "208mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry Tortoni",
//     "calories": "397kcal",
//     "protein": "4g",
//     "fat": "22g",
//     "sodium": "220mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry, cooking, flesh & skin, raw",
//     "calories": "56.09kcal",
//     "protein": "0.88g",
//     "fat": "0.2g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry, cooking, stewed",
//     "calories": "48.02kcal",
//     "protein": "0.81g",
//     "fat": "0.13g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry, cooking, stewed with sugar",
//     "calories": "89.11kcal",
//     "protein": "0.69g",
//     "fat": "0.15g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry, flesh & skin, raw",
//     "calories": "65.31kcal",
//     "protein": "0.94g",
//     "fat": "0.25g",
//     "sodium": "3.35mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry, flesh & skin, raw, Bing",
//     "calories": "60.55kcal",
//     "protein": "0.81g",
//     "fat": "0.2g",
//     "sodium": "3.4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry, flesh & skin, raw, Dawson",
//     "calories": "72.24kcal",
//     "protein": "1.06g",
//     "fat": "0.31g",
//     "sodium": "3.27mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry, Pistachio & Coconut Cake",
//     "calories": "304kcal",
//     "protein": "6g",
//     "fat": "20g",
//     "sodium": "118mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry-Almond Bars",
//     "calories": "130kcal",
//     "protein": "1g",
//     "fat": "6g",
//     "sodium": "15mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry-Almond Clafouti",
//     "calories": "243kcal",
//     "protein": "8g",
//     "fat": "9g",
//     "sodium": "106mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry-Almond Crisp",
//     "calories": "417kcal",
//     "protein": "6g",
//     "fat": "11g",
//     "sodium": "43mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry-Almond Ice Cream Cake with Milk Chocolate Sauce",
//     "calories": "363kcal",
//     "protein": "5g",
//     "fat": "17g",
//     "sodium": "129mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry-Almond Sundaes",
//     "calories": "268kcal",
//     "protein": "4g",
//     "fat": "7g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry-Almond Trifle",
//     "calories": "1030kcal",
//     "protein": "14g",
//     "fat": "59g",
//     "sodium": "202mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry-Apple Sauce",
//     "calories": "708kcal",
//     "protein": "3g",
//     "fat": "2g",
//     "sodium": "30mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry-Apricot Cobbler",
//     "calories": "352kcal",
//     "protein": "6g",
//     "fat": "4g",
//     "sodium": "139mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry-Apricot Compote",
//     "calories": "296kcal",
//     "protein": "3g",
//     "fat": "1g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry-Apricot Cream Cheese Tart",
//     "calories": "445kcal",
//     "protein": "6g",
//     "fat": "21g",
//     "sodium": "163mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry-Apricot Yogurt Sundaes",
//     "calories": "146kcal",
//     "protein": "4g",
//     "fat": "3g",
//     "sodium": "39mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry-Berry Lattice Pie",
//     "calories": "490kcal",
//     "protein": "6g",
//     "fat": "22g",
//     "sodium": "162mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry-Bourbon Ice Cream",
//     "calories": "132kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "0mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry-Bourbon Pie",
//     "calories": "502kcal",
//     "protein": "6g",
//     "fat": "16g",
//     "sodium": "247mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry-Chocolate Chunk Ice Cream",
//     "calories": "233kcal",
//     "protein": "3g",
//     "fat": "12g",
//     "sodium": "54mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry-Chocolate Shortcakes with Kirsch Whipped Cream",
//     "calories": "509kcal",
//     "protein": "7g",
//     "fat": "23g",
//     "sodium": "312mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Cherry-Fudge Brownies with Chocolate Sauce and Chocolate-Dipped Cherries",
//     "calories": "658kcal",
//     "protein": "6g",
//     "fat": "40g",
//     "sodium": "142mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry-Topped Almond Panna Cotta",
//     "calories": "308kcal",
//     "protein": "4g",
//     "fat": "21g",
//     "sodium": "32mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry-Vanilla Bean Ice Cream with Cherry Sauce",
//     "calories": "445kcal",
//     "protein": "5g",
//     "fat": "15g",
//     "sodium": "41mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cherry-Vanilla Tea Cake with Vanilla Sugar",
//     "calories": "303kcal",
//     "protein": "4g",
//     "fat": "13g",
//     "sodium": "182mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chestnut and Sausage Stuffing",
//     "calories": "712kcal",
//     "protein": "27g",
//     "fat": "36g",
//     "sodium": "1272mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chestnut and Sherry Soup with Truffle Garnish",
//     "calories": "470kcal",
//     "protein": "7g",
//     "fat": "21g",
//     "sodium": "651mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chestnut and Wild Mushroom Stuffing",
//     "calories": "306kcal",
//     "protein": "8g",
//     "fat": "12g",
//     "sodium": "799mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chestnut Cake with Maple Icing",
//     "calories": "258kcal",
//     "protein": "2g",
//     "fat": "10g",
//     "sodium": "103mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chestnut Cheesecake",
//     "calories": "599kcal",
//     "protein": "8g",
//     "fat": "38g",
//     "sodium": "355mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chestnut Fennel Soup",
//     "calories": "447kcal",
//     "protein": "12g",
//     "fat": "14g",
//     "sodium": "106mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chestnut Ice Cream",
//     "calories": "255kcal",
//     "protein": "2g",
//     "fat": "20g",
//     "sodium": "22mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chestnut Risotto with Butternut Squash",
//     "calories": "432kcal",
//     "protein": "13g",
//     "fat": "13g",
//     "sodium": "206mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chestnut Soup",
//     "calories": "258kcal",
//     "protein": "6g",
//     "fat": "10g",
//     "sodium": "91mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chestnut Stuffing",
//     "calories": "281kcal",
//     "protein": "5g",
//     "fat": "11g",
//     "sodium": "195mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chestnut, Bacon, Dried Apple, and Corn Bread Stuffing",
//     "calories": "317kcal",
//     "protein": "8g",
//     "fat": "13g",
//     "sodium": "313mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chestnut, Onion, and Currant Stuffing",
//     "calories": "295kcal",
//     "protein": "8g",
//     "fat": "11g",
//     "sodium": "250mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chestnut, Prune, and Pancetta Stuffing",
//     "calories": "601kcal",
//     "protein": "17g",
//     "fat": "27g",
//     "sodium": "1112mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chestnut, Wild Rice, and Pistachio Dressing",
//     "calories": "314kcal",
//     "protein": "6g",
//     "fat": "13g",
//     "sodium": "98mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Bell Pepper Pizza with Barbecue Sauce",
//     "calories": "710kcal",
//     "protein": "35g",
//     "fat": "25g",
//     "sodium": "1613mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Bell Pepper with Onion Confit",
//     "calories": "1014kcal",
//     "protein": "58g",
//     "fat": "71g",
//     "sodium": "115mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Biscuits",
//     "calories": "917kcal",
//     "protein": "54g",
//     "fat": "58g",
//     "sodium": "473mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Broccoli Alfredo",
//     "calories": "1058kcal",
//     "protein": "87g",
//     "fat": "45g",
//     "sodium": "819mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Broccoli Stir-Fry",
//     "calories": "214kcal",
//     "protein": "23g",
//     "fat": "10g",
//     "sodium": "742mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Caraway Schnitzel with Buttermilk Spaetzle",
//     "calories": "1242kcal",
//     "protein": "52g",
//     "fat": "56g",
//     "sodium": "1403mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Cashew Stir-Fry",
//     "calories": "477kcal",
//     "protein": "24g",
//     "fat": "37g",
//     "sodium": "825mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Celery Pot Stickers",
//     "calories": "51kcal",
//     "protein": "2g",
//     "fat": "2g",
//     "sodium": "153mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Cilantro Bites",
//     "calories": "71kcal",
//     "protein": "4g",
//     "fat": "5g",
//     "sodium": "150mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Corn Chowder with Thyme",
//     "calories": "897kcal",
//     "protein": "38g",
//     "fat": "51g",
//     "sodium": "494mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Corn Stew with Corn Wafers",
//     "calories": "744kcal",
//     "protein": "57g",
//     "fat": "43g",
//     "sodium": "698mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Couscous with a Punchy Relish",
//     "calories": "1419kcal",
//     "protein": "97g",
//     "fat": "87g",
//     "sodium": "728mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Cucumber Salad with Yogurt Dressing",
//     "calories": "366kcal",
//     "protein": "35g",
//     "fat": "20g",
//     "sodium": "361mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Mango Salad with Ginger-Orange Dressing",
//     "calories": "514kcal",
//     "protein": "34g",
//     "fat": "35g",
//     "sodium": "100mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Chicken and Mashed Potatoes with Herb-Roasted Tomatoes and Olive Broth",
//     "calories": "551kcal",
//     "protein": "41g",
//     "fat": "38g",
//     "sodium": "332mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Mixed Vegetable Stew",
//     "calories": "1395kcal",
//     "protein": "91g",
//     "fat": "88g",
//     "sodium": "1109mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Mushroom Enchiladas",
//     "calories": "566kcal",
//     "protein": "37g",
//     "fat": "38g",
//     "sodium": "1143mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Mushroom Marsala",
//     "calories": "1113kcal",
//     "protein": "121g",
//     "fat": "63g",
//     "sodium": "421mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Mushroom Pie with Phyllo-Parmesan Crust",
//     "calories": "749kcal",
//     "protein": "39g",
//     "fat": "49g",
//     "sodium": "1112mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Nectarine Salad with Toasted Cumin Mayonnaise",
//     "calories": "593kcal",
//     "protein": "47g",
//     "fat": "40g",
//     "sodium": "318mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Pork Stew with Plantains and Potatoes",
//     "calories": "894kcal",
//     "protein": "43g",
//     "fat": "56g",
//     "sodium": "1013mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Root Vegetable Stew",
//     "calories": "1212kcal",
//     "protein": "73g",
//     "fat": "74g",
//     "sodium": "456mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Sausage Jambalaya",
//     "calories": "1117kcal",
//     "protein": "56g",
//     "fat": "70g",
//     "sodium": "1632mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Sausage Maque Choux",
//     "calories": "772kcal",
//     "protein": "47g",
//     "fat": "53g",
//     "sodium": "484mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Shiitake Stir-Fry with Peas and Pea Tendrils",
//     "calories": "409kcal",
//     "protein": "37g",
//     "fat": "13g",
//     "sodium": "1281mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Spelt Soup with Greens",
//     "calories": "1029kcal",
//     "protein": "78g",
//     "fat": "57g",
//     "sodium": "341mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Swiss Chard Enchilada Casserole",
//     "calories": "686kcal",
//     "protein": "29g",
//     "fat": "61g",
//     "sodium": "863mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken and Vegetable Pot Pies with Cream Cheese Crust",
//     "calories": "347kcal",
//     "protein": "14g",
//     "fat": "25g",
//     "sodium": "136mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Breasts with Horseradish-Scallion Crust",
//     "calories": "770kcal",
//     "protein": "51g",
//     "fat": "52g",
//     "sodium": "614mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Breasts with Leeks and Mushrooms",
//     "calories": "491kcal",
//     "protein": "40g",
//     "fat": "25g",
//     "sodium": "276mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Breasts with Poblano Chile Strips and Cream",
//     "calories": "1381kcal",
//     "protein": "145g",
//     "fat": "79g",
//     "sodium": "454mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Breasts with Rock-Shrimp Sauce",
//     "calories": "1240kcal",
//     "protein": "131g",
//     "fat": "72g",
//     "sodium": "1491mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Chicken Breasts with Scallions, Shiitake Mushrooms, and Tomatoes",
//     "calories": "260kcal",
//     "protein": "22g",
//     "fat": "14g",
//     "sodium": "153mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Breasts with Sun-Dried Tomato and Garlic Crust",
//     "calories": "989kcal",
//     "protein": "80g",
//     "fat": "50g",
//     "sodium": "797mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Breasts with Sun-Dried Tomato-Cream Sauce",
//     "calories": "538kcal",
//     "protein": "55g",
//     "fat": "31g",
//     "sodium": "156mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Breasts with Tomatoes and Capers",
//     "calories": "279kcal",
//     "protein": "33g",
//     "fat": "10g",
//     "sodium": "886mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Breasts with Wild Mushrooms, Marjoram, and Marsala",
//     "calories": "610kcal",
//     "protein": "73g",
//     "fat": "26g",
//     "sodium": "172mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Burgers with Lemon and Tarragon",
//     "calories": "445kcal",
//     "protein": "24g",
//     "fat": "38g",
//     "sodium": "662mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Burritos with Poblano Chiles and Corn",
//     "calories": "563kcal",
//     "protein": "41g",
//     "fat": "25g",
//     "sodium": "674mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Cacciatora",
//     "calories": "1092kcal",
//     "protein": "82g",
//     "fat": "75g",
//     "sodium": "1301mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Cacciatora with Fusilli",
//     "calories": "1483kcal",
//     "protein": "94g",
//     "fat": "76g",
//     "sodium": "414mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Cacciatore with Harissa, Bacon, and Rosemary",
//     "calories": "851kcal",
//     "protein": "54g",
//     "fat": "36g",
//     "sodium": "907mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Caesar Salad With Crispy Kale",
//     "calories": "790kcal",
//     "protein": "53g",
//     "fat": "60g",
//     "sodium": "307mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Cheddar Quesadillas with Tomato and Corn Salsa",
//     "calories": "649kcal",
//     "protein": "29g",
//     "fat": "43g",
//     "sodium": "1274mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Chili Verde",
//     "calories": "478kcal",
//     "protein": "25g",
//     "fat": "29g",
//     "sodium": "176mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Clemenceau",
//     "calories": "383kcal",
//     "protein": "33g",
//     "fat": "12g",
//     "sodium": "1738mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Crepes with Asparagus and Mushrooms",
//     "calories": "427kcal",
//     "protein": "20g",
//     "fat": "29g",
//     "sodium": "315mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Curry Soup with Coconut and Lime",
//     "calories": "562kcal",
//     "protein": "59g",
//     "fat": "28g",
//     "sodium": "153mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Curry with Green Apple and Coconut Chutney",
//     "calories": "1133kcal",
//     "protein": "69g",
//     "fat": "76g",
//     "sodium": "917mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Curry with Pineapple",
//     "calories": "1076kcal",
//     "protein": "77g",
//     "fat": "75g",
//     "sodium": "434mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Curry with Sweet Potatoes",
//     "calories": "591kcal",
//     "protein": "54g",
//     "fat": "21g",
//     "sodium": "1735mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Cutlets with Fried Capers, Parsley, and Lemon",
//     "calories": "172kcal",
//     "protein": "6g",
//     "fat": "16g",
//     "sodium": "121mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Divan",
//     "calories": "374kcal",
//     "protein": "36g",
//     "fat": "18g",
//     "sodium": "344mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Empanada with Chorizo, Raisins, and Olives",
//     "calories": "365kcal",
//     "protein": "18g",
//     "fat": "21g",
//     "sodium": "601mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Enchiladas",
//     "calories": "532kcal",
//     "protein": "25g",
//     "fat": "32g",
//     "sodium": "1329mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Escalopes with Watercress-Green Onion Mayonnaise",
//     "calories": "587kcal",
//     "protein": "36g",
//     "fat": "48g",
//     "sodium": "333mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken in Lemongrass Sauce",
//     "calories": "455kcal",
//     "protein": "39g",
//     "fat": "23g",
//     "sodium": "1430mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Chicken in Red Wine Sauce with Root Vegetables and Wilted Greens",
//     "calories": "1227kcal",
//     "protein": "80g",
//     "fat": "83g",
//     "sodium": "659mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken in Riesling",
//     "calories": "1272kcal",
//     "protein": "83g",
//     "fat": "82g",
//     "sodium": "393mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken in Riesling with Prunes and Cabbage",
//     "calories": "1588kcal",
//     "protein": "92g",
//     "fat": "110g",
//     "sodium": "432mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken in Spicy Coconut Sauce",
//     "calories": "649kcal",
//     "protein": "35g",
//     "fat": "52g",
//     "sodium": "791mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Key Lime Curry",
//     "calories": "999kcal",
//     "protein": "76g",
//     "fat": "67g",
//     "sodium": "351mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Laap",
//     "calories": "272kcal",
//     "protein": "25g",
//     "fat": "13g",
//     "sodium": "429mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Liver Mousse",
//     "calories": "199kcal",
//     "protein": "7g",
//     "fat": "14g",
//     "sodium": "399mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Roasted with Onions and Soy Sauce",
//     "calories": "498kcal",
//     "protein": "49g",
//     "fat": "27g",
//     "sodium": "1167mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Roasted with Tomatoes, Potatoes, and Olives",
//     "calories": "890kcal",
//     "protein": "58g",
//     "fat": "43g",
//     "sodium": "506mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Salad Sandwiches with Blue Cheese",
//     "calories": "344kcal",
//     "protein": "22g",
//     "fat": "17g",
//     "sodium": "789mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Satay Bites",
//     "calories": "37kcal",
//     "protein": "2g",
//     "fat": "2g",
//     "sodium": "34mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Soup",
//     "calories": "499kcal",
//     "protein": "47g",
//     "fat": "31g",
//     "sodium": "1278mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Soup Verde",
//     "calories": "399kcal",
//     "protein": "34g",
//     "fat": "17g",
//     "sodium": "728mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Soup with Loads of Vegetables",
//     "calories": "353kcal",
//     "protein": "25g",
//     "fat": "19g",
//     "sodium": "859mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Tetrazzini",
//     "calories": "878kcal",
//     "protein": "75g",
//     "fat": "46g",
//     "sodium": "559mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Thighs with Creole Mustard-Orange Sauce",
//     "calories": "1701kcal",
//     "protein": "116g",
//     "fat": "125g",
//     "sodium": "924mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken Tikka",
//     "calories": "345kcal",
//     "protein": "53g",
//     "fat": "12g",
//     "sodium": "474mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken with Bell Peppers and Olives",
//     "calories": "512kcal",
//     "protein": "38g",
//     "fat": "32g",
//     "sodium": "264mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken with Bell Peppers, Onions and Capers",
//     "calories": "1098kcal",
//     "protein": "82g",
//     "fat": "75g",
//     "sodium": "1125mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken with Bok Choy and Baby Corn",
//     "calories": "469kcal",
//     "protein": "26g",
//     "fat": "28g",
//     "sodium": "1085mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken with Carrots, Prunes and Rice",
//     "calories": "1187kcal",
//     "protein": "67g",
//     "fat": "55g",
//     "sodium": "603mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken with Chestnuts",
//     "calories": "726kcal",
//     "protein": "43g",
//     "fat": "49g",
//     "sodium": "723mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken with Coconut Curry Sauce",
//     "calories": "246kcal",
//     "protein": "12g",
//     "fat": "21g",
//     "sodium": "50mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken with Cranberry and Mustard Sauce",
//     "calories": "201kcal",
//     "protein": "6g",
//     "fat": "12g",
//     "sodium": "119mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken with Cranberry-Mustard Sauce",
//     "calories": "552kcal",
//     "protein": "72g",
//     "fat": "20g",
//     "sodium": "168mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken with Creamy Mushroom Sauce",
//     "calories": "525kcal",
//     "protein": "59g",
//     "fat": "22g",
//     "sodium": "137mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken with Dumplings",
//     "calories": "563kcal",
//     "protein": "54g",
//     "fat": "27g",
//     "sodium": "1275mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken with Endive, Radicchio and Balsamic Vinegar Glaze",
//     "calories": "445kcal",
//     "protein": "55g",
//     "fat": "17g",
//     "sodium": "124mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken with Figs in Ras-el-Hanout and Couscous",
//     "calories": "4520kcal",
//     "protein": "338g",
//     "fat": "336g",
//     "sodium": "1772mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken with Ginger-Cilantro Pesto",
//     "calories": "609kcal",
//     "protein": "38g",
//     "fat": "49g",
//     "sodium": "120mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, breast, flesh, lean, raw",
//     "calories": "109.6kcal",
//     "protein": "22.31g",
//     "fat": "2.13g",
//     "sodium": "60.6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, breast, flesh, roasted",
//     "calories": "148.28kcal",
//     "protein": "25.25g",
//     "fat": "5.15g",
//     "sodium": "76.4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, drumstick, flesh, grilled",
//     "calories": "167.46kcal",
//     "protein": "26.38g",
//     "fat": "6.8g",
//     "sodium": "109mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, drumstick, flesh, raw",
//     "calories": "117.03kcal",
//     "protein": "18.94g",
//     "fat": "4.52g",
//     "sodium": "105mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, drumstick, flesh, roasted",
//     "calories": "162.71kcal",
//     "protein": "25.69g",
//     "fat": "6.58g",
//     "sodium": "110mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, flesh, roasted",
//     "calories": "159.46kcal",
//     "protein": "24.63g",
//     "fat": "6.7g",
//     "sodium": "78.8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, Mushroom, and Bok Choy Kebabs",
//     "calories": "486kcal",
//     "protein": "23g",
//     "fat": "39g",
//     "sodium": "868mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, nugget, battered, baked, composite",
//     "calories": "271.72kcal",
//     "protein": "14.83g",
//     "fat": "15.87g",
//     "sodium": "345.62mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, nugget, battered, baked, Ingham's",
//     "calories": "264.03kcal",
//     "protein": "14.65g",
//     "fat": "16.72g",
//     "sodium": "246.24mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, nugget, battered, baked, Tegal",
//     "calories": "279.41kcal",
//     "protein": "15.01g",
//     "fat": "15.02g",
//     "sodium": "445mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, nugget, battered, fried, composite",
//     "calories": "258.87kcal",
//     "protein": "14.08g",
//     "fat": "15.39g",
//     "sodium": "415mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, nugget, battered, fried, Ingham's",
//     "calories": "268.92kcal",
//     "protein": "14.59g",
//     "fat": "17.64g",
//     "sodium": "270mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, nugget, battered, fried, Tegal",
//     "calories": "248.82kcal",
//     "protein": "13.57g",
//     "fat": "13.14g",
//     "sodium": "560mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, nugget, battered, raw, Ingham's",
//     "calories": "223.03kcal",
//     "protein": "12.38g",
//     "fat": "14.12g",
//     "sodium": "260mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, nugget, battered, raw, Tegel",
//     "calories": "239.71kcal",
//     "protein": "12.8g",
//     "fat": "12.83g",
//     "sodium": "475mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, nugget, cheesy, baked, Tegal",
//     "calories": "280.87kcal",
//     "protein": "13.35g",
//     "fat": "16.34g",
//     "sodium": "521.04mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, nugget, cheesy, fried, Tegal",
//     "calories": "275.33kcal",
//     "protein": "14.53g",
//     "fat": "15.98g",
//     "sodium": "740mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, nugget, cheesy, raw, Tegal",
//     "calories": "241.5kcal",
//     "protein": "11.48g",
//     "fat": "14.05g",
//     "sodium": "560mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, nugget, crumbed, baked, composite",
//     "calories": "260.79kcal",
//     "protein": "15.79g",
//     "fat": "14.23g",
//     "sodium": "456.09mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, nugget, crumbed, deep fried, composite",
//     "calories": "252.38kcal",
//     "protein": "15.79g",
//     "fat": "14.42g",
//     "sodium": "590mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, nugget, crumbed, raw",
//     "calories": "224.14kcal",
//     "protein": "13.57g",
//     "fat": "12.23g",
//     "sodium": "490mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, nugget, deep fried, ready to eat, McDonald's",
//     "calories": "288.75kcal",
//     "protein": "17.63g",
//     "fat": "18.2g",
//     "sodium": "731mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, Onion, and Raisin Stew",
//     "calories": "460kcal",
//     "protein": "18g",
//     "fat": "29g",
//     "sodium": "104mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, patty, McDonald's",
//     "calories": "211.91kcal",
//     "protein": "15g",
//     "fat": "11.2g",
//     "sodium": "948mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Chicken, Potato, and Carrot Enchiladas with Ancho-Guajillo Chile Sauce",
//     "calories": "815kcal",
//     "protein": "31g",
//     "fat": "69g",
//     "sodium": "612mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, Red Pepper, and Green Bean Stir-Fry",
//     "calories": "435kcal",
//     "protein": "28g",
//     "fat": "31g",
//     "sodium": "1397mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, Rice, and Mango in Lettuce Wraps",
//     "calories": "969kcal",
//     "protein": "31g",
//     "fat": "67g",
//     "sodium": "1238mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, Sausage, and Okra Gumbo",
//     "calories": "821kcal",
//     "protein": "69g",
//     "fat": "52g",
//     "sodium": "641mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, Scallion, and Red Pepper Cylinders",
//     "calories": "23kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "95mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, separable fat, raw",
//     "calories": "502.42kcal",
//     "protein": "7.81g",
//     "fat": "53.17g",
//     "sodium": "41.5mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, separable fat, roasted",
//     "calories": "482.79kcal",
//     "protein": "9.13g",
//     "fat": "50.35g",
//     "sodium": "58.1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, Shrimp and Beef Sates with Peanut Sauce",
//     "calories": "540kcal",
//     "protein": "41g",
//     "fat": "31g",
//     "sodium": "1907mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, Shrimp and Sausage Stew",
//     "calories": "795kcal",
//     "protein": "52g",
//     "fat": "54g",
//     "sodium": "1529mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, skin crisp",
//     "calories": "206.48kcal",
//     "protein": "15g",
//     "fat": "14g",
//     "sodium": "480mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, skin, cooked",
//     "calories": "456.24kcal",
//     "protein": "18.38g",
//     "fat": "43.1g",
//     "sodium": "90mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, skin, raw",
//     "calories": "393.82kcal",
//     "protein": "10.19g",
//     "fat": "39.81g",
//     "sodium": "55.1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, skin, roasted",
//     "calories": "480.57kcal",
//     "protein": "15g",
//     "fat": "47.4g",
//     "sodium": "90mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, skin, roasted in oven bag",
//     "calories": "424.84kcal",
//     "protein": "12.38g",
//     "fat": "42.31g",
//     "sodium": "55.8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, thigh, flesh, raw",
//     "calories": "116.63kcal",
//     "protein": "19.19g",
//     "fat": "4.36g",
//     "sodium": "92.1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, thigh, flesh, roasted",
//     "calories": "182.87kcal",
//     "protein": "22.94g",
//     "fat": "10.12g",
//     "sodium": "95.1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chicken, Vegetable, and Dumpling Soup",
//     "calories": "983kcal",
//     "protein": "92g",
//     "fat": "54g",
//     "sodium": "557mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chick-Pea Walnut Burgers",
//     "calories": "378kcal",
//     "protein": "13g",
//     "fat": "14g",
//     "sodium": "580mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilaquiles",
//     "calories": "543kcal",
//     "protein": "19g",
//     "fat": "17g",
//     "sodium": "506mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chili Vinegar",
//     "calories": "44kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "5mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chili-Baked Ribs",
//     "calories": "1593kcal",
//     "protein": "81g",
//     "fat": "123g",
//     "sodium": "949mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chili-Braised Boneless Short Ribs",
//     "calories": "645kcal",
//     "protein": "42g",
//     "fat": "44g",
//     "sodium": "1332mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chili-Glazed Shrimp with Tomatillo-Cilantro Sauce",
//     "calories": "120kcal",
//     "protein": "6g",
//     "fat": "8g",
//     "sodium": "184mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chili-Lime Cream Sauce",
//     "calories": "607kcal",
//     "protein": "2g",
//     "fat": "61g",
//     "sodium": "23mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chili-Lime Dressing",
//     "calories": "194kcal",
//     "protein": "3g",
//     "fat": "14g",
//     "sodium": "1762mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chili-Lime Sauce",
//     "calories": "75kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "1425mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chili-Roasted Chicken with Roasted Garlic Gravy",
//     "calories": "1283kcal",
//     "protein": "99g",
//     "fat": "90g",
//     "sodium": "480mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled Beet Soup with Sour Cream",
//     "calories": "125kcal",
//     "protein": "3g",
//     "fat": "6g",
//     "sodium": "703mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled Blueberry Soup",
//     "calories": "148kcal",
//     "protein": "2g",
//     "fat": "2g",
//     "sodium": "21mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled Celery, Watercress and Fennel Soup",
//     "calories": "183kcal",
//     "protein": "7g",
//     "fat": "13g",
//     "sodium": "159mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled Herbed Tomato Soup with Citrus and Spice",
//     "calories": "196kcal",
//     "protein": "5g",
//     "fat": "6g",
//     "sodium": "154mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Chilled Honey-Roasted Peach and Cardamom Soup with Vanilla Cream",
//     "calories": "307kcal",
//     "protein": "5g",
//     "fat": "4g",
//     "sodium": "155mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled Indian-Spiced Tomato Soup with Crabmeat",
//     "calories": "226kcal",
//     "protein": "14g",
//     "fat": "12g",
//     "sodium": "432mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled Japanese Noodles with Grilled Chicken and Vegetables",
//     "calories": "624kcal",
//     "protein": "49g",
//     "fat": "19g",
//     "sodium": "1920mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled Lemon Souffles with Caramel Sauce",
//     "calories": "141kcal",
//     "protein": "5g",
//     "fat": "5g",
//     "sodium": "57mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled Lime-Coconut Pie with Macadamia-Coconut Crust",
//     "calories": "457kcal",
//     "protein": "4g",
//     "fat": "28g",
//     "sodium": "105mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled Mango and Cucumber Soup",
//     "calories": "220kcal",
//     "protein": "4g",
//     "fat": "1g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled Minted Zucchini Soup",
//     "calories": "70kcal",
//     "protein": "5g",
//     "fat": "2g",
//     "sodium": "55mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled Pea Broth with Lemon Cream",
//     "calories": "6kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "40mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled Radish Buttermilk Soup",
//     "calories": "146kcal",
//     "protein": "10g",
//     "fat": "2g",
//     "sodium": "1676mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled Raspberry Sabayon",
//     "calories": "394kcal",
//     "protein": "6g",
//     "fat": "18g",
//     "sodium": "25mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled Red Pepper Soup with Basil and Croutons",
//     "calories": "522kcal",
//     "protein": "15g",
//     "fat": "23g",
//     "sodium": "614mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled Seafood Salad with Herbed Olive Oil and Sea Salt",
//     "calories": "213kcal",
//     "protein": "16g",
//     "fat": "15g",
//     "sodium": "478mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled Tarragon Tomato Soup with Vegetable Confetti",
//     "calories": "79kcal",
//     "protein": "4g",
//     "fat": "1g",
//     "sodium": "24mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled Tomatillo and Cucumber Soup",
//     "calories": "228kcal",
//     "protein": "6g",
//     "fat": "20g",
//     "sodium": "65mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled Tomato Soup with Chipotle Cream",
//     "calories": "198kcal",
//     "protein": "4g",
//     "fat": "15g",
//     "sodium": "479mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled Tomato, Roasted Garlic, and Basil Soup",
//     "calories": "63kcal",
//     "protein": "3g",
//     "fat": "1g",
//     "sodium": "17mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled Tomato-Tarragon Soup with Croutons",
//     "calories": "576kcal",
//     "protein": "16g",
//     "fat": "31g",
//     "sodium": "164mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled Watercress Soup",
//     "calories": "330kcal",
//     "protein": "9g",
//     "fat": "22g",
//     "sodium": "109mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled Watercress Soup with Onion Cream",
//     "calories": "161kcal",
//     "protein": "3g",
//     "fat": "13g",
//     "sodium": "61mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled Watermelon-Mint Soup",
//     "calories": "1561kcal",
//     "protein": "30g",
//     "fat": "10g",
//     "sodium": "210mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilled White Bean Salsa Soup",
//     "calories": "137kcal",
//     "protein": "4g",
//     "fat": "4g",
//     "sodium": "22mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Chilled Zucchini Soup with Lemon-Cumin Shrimp and Cilantro Cream",
//     "calories": "323kcal",
//     "protein": "24g",
//     "fat": "15g",
//     "sodium": "551mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Chilli con carne, with beef mince and red kidney beans, Mexican-style, cooked, no salt added, home-made",
//     "calories": "97.19kcal",
//     "protein": "10.95g",
//     "fat": "2.8g",
//     "sodium": "109.01mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chilli Oil",
//     "calories": "411kcal",
//     "protein": "0g",
//     "fat": "46g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chimichurri",
//     "calories": "129kcal",
//     "protein": "0g",
//     "fat": "14g",
//     "sodium": "217mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chimichurri Rojo",
//     "calories": "149kcal",
//     "protein": "1g",
//     "fat": "14g",
//     "sodium": "244mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chimichurri Sauce",
//     "calories": "513kcal",
//     "protein": "1g",
//     "fat": "55g",
//     "sodium": "453mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chineasy Cucumber Salad",
//     "calories": "130kcal",
//     "protein": "3g",
//     "fat": "10g",
//     "sodium": "244mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese Barbecued Pork",
//     "calories": "218kcal",
//     "protein": "24g",
//     "fat": "5g",
//     "sodium": "399mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese Barbecued Pork with Garlic Sauce",
//     "calories": "145kcal",
//     "protein": "19g",
//     "fat": "4g",
//     "sodium": "809mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese Barbecued Spareribs",
//     "calories": "998kcal",
//     "protein": "55g",
//     "fat": "80g",
//     "sodium": "2027mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese Beef Noodle Soup",
//     "calories": "308kcal",
//     "protein": "11g",
//     "fat": "24g",
//     "sodium": "306mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese Black Rice, Orange, and Avocado Salad",
//     "calories": "546kcal",
//     "protein": "14g",
//     "fat": "14g",
//     "sodium": "20mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese Braised Pork with Cellophane Noodles",
//     "calories": "310kcal",
//     "protein": "25g",
//     "fat": "14g",
//     "sodium": "1810mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese Broccoli with Crabmeat",
//     "calories": "135kcal",
//     "protein": "11g",
//     "fat": "6g",
//     "sodium": "626mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese Cabbage Salad",
//     "calories": "62kcal",
//     "protein": "3g",
//     "fat": "0g",
//     "sodium": "737mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese Celery Strips",
//     "calories": "47kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "473mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese Char Siu Grilled Lamb Chops",
//     "calories": "900kcal",
//     "protein": "34g",
//     "fat": "78g",
//     "sodium": "890mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese Chicken Breast with Peanuts",
//     "calories": "240kcal",
//     "protein": "12g",
//     "fat": "19g",
//     "sodium": "405mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese Chicken Noodle Soup with Sesame and Green Onions",
//     "calories": "510kcal",
//     "protein": "36g",
//     "fat": "16g",
//     "sodium": "627mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese Chicken Noodle Soup with Spinach and Garlic Chives",
//     "calories": "301kcal",
//     "protein": "24g",
//     "fat": "18g",
//     "sodium": "114mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese Curry Chicken",
//     "calories": "554kcal",
//     "protein": "55g",
//     "fat": "28g",
//     "sodium": "1394mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese Egg Noodles with Smoked Duck and Snow Peas",
//     "calories": "511kcal",
//     "protein": "38g",
//     "fat": "36g",
//     "sodium": "758mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese Egg Rolls",
//     "calories": "236kcal",
//     "protein": "13g",
//     "fat": "14g",
//     "sodium": "359mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese Fried Rice Deluxe",
//     "calories": "500kcal",
//     "protein": "17g",
//     "fat": "25g",
//     "sodium": "1086mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese Orange Chicken",
//     "calories": "642kcal",
//     "protein": "27g",
//     "fat": "44g",
//     "sodium": "343mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese Peanut Sauce",
//     "calories": "244kcal",
//     "protein": "9g",
//     "fat": "19g",
//     "sodium": "513mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese Pineapple Chicken",
//     "calories": "1099kcal",
//     "protein": "75g",
//     "fat": "73g",
//     "sodium": "1093mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese Scallion Lamb",
//     "calories": "857kcal",
//     "protein": "9g",
//     "fat": "89g",
//     "sodium": "708mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese Style Steamed Fish",
//     "calories": "223kcal",
//     "protein": "36g",
//     "fat": "6g",
//     "sodium": "694mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese Trinidadian Stir-Fried Shrimp with Rum",
//     "calories": "344kcal",
//     "protein": "36g",
//     "fat": "7g",
//     "sodium": "2374mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Chinese-Flavored Fried Chicken with Green Onion-Ginger Dipping Sauce",
//     "calories": "2161kcal",
//     "protein": "103g",
//     "fat": "173g",
//     "sodium": "3169mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese-Hawaiian \"Barbecued\" Ribs",
//     "calories": "640kcal",
//     "protein": "45g",
//     "fat": "37g",
//     "sodium": "1582mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese-Style Rice",
//     "calories": "322kcal",
//     "protein": "6g",
//     "fat": "1g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese-Style Roast Chicken Thighs",
//     "calories": "544kcal",
//     "protein": "39g",
//     "fat": "38g",
//     "sodium": "1355mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chinese-Style Spinach and Mushroom Soup",
//     "calories": "152kcal",
//     "protein": "12g",
//     "fat": "9g",
//     "sodium": "1305mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chioggia Beet Borani with Feta and Toasted Sesame Seeds",
//     "calories": "288kcal",
//     "protein": "9g",
//     "fat": "25g",
//     "sodium": "553mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chipotle Sauce",
//     "calories": "70kcal",
//     "protein": "3g",
//     "fat": "2g",
//     "sodium": "23mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chipotle Tartar Sauce",
//     "calories": "161kcal",
//     "protein": "0g",
//     "fat": "18g",
//     "sodium": "174mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Almond Bars",
//     "calories": "207kcal",
//     "protein": "3g",
//     "fat": "12g",
//     "sodium": "100mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Chestnut Torte",
//     "calories": "298kcal",
//     "protein": "4g",
//     "fat": "20g",
//     "sodium": "61mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Chestnut Torte with Chocolate Cognac Mousse",
//     "calories": "1508kcal",
//     "protein": "14g",
//     "fat": "101g",
//     "sodium": "499mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Chunks with Cherries and Pistachios",
//     "calories": "459kcal",
//     "protein": "7g",
//     "fat": "33g",
//     "sodium": "113mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Coconut Almond Sprinkles",
//     "calories": "174kcal",
//     "protein": "2g",
//     "fat": "11g",
//     "sodium": "42mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Coconut Rum Cake",
//     "calories": "2821kcal",
//     "protein": "35g",
//     "fat": "181g",
//     "sodium": "1718mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Chocolate Fondue with Candied Orange Peel, Raspberries, and Almond Macaroons",
//     "calories": "1020kcal",
//     "protein": "15g",
//     "fat": "53g",
//     "sodium": "923mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Frosting",
//     "calories": "245kcal",
//     "protein": "1g",
//     "fat": "12g",
//     "sodium": "5mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Fudge-Almond",
//     "calories": "256kcal",
//     "protein": "8g",
//     "fat": "18g",
//     "sodium": "60mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Ganache and Raspberry Tart",
//     "calories": "480kcal",
//     "protein": "5g",
//     "fat": "34g",
//     "sodium": "20mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Gelato Hotel Cipriani",
//     "calories": "245kcal",
//     "protein": "6g",
//     "fat": "9g",
//     "sodium": "34mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Glaze",
//     "calories": "247kcal",
//     "protein": "1g",
//     "fat": "6g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Grand Marnier Cake",
//     "calories": "582kcal",
//     "protein": "6g",
//     "fat": "43g",
//     "sodium": "100mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Hazelnut Cake",
//     "calories": "941kcal",
//     "protein": "13g",
//     "fat": "64g",
//     "sodium": "67mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Hazelnut Cake with Praline Chocolate Crunch",
//     "calories": "1144kcal",
//     "protein": "18g",
//     "fat": "78g",
//     "sodium": "162mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Hazelnut Spiced Cookies",
//     "calories": "110kcal",
//     "protein": "2g",
//     "fat": "7g",
//     "sodium": "101mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Hazelnut Torte",
//     "calories": "275kcal",
//     "protein": "4g",
//     "fat": "19g",
//     "sodium": "136mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Icing",
//     "calories": "274kcal",
//     "protein": "2g",
//     "fat": "21g",
//     "sodium": "13mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Kahlua Fantasy Cake",
//     "calories": "357kcal",
//     "protein": "3g",
//     "fat": "28g",
//     "sodium": "20mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Kumquat Spring Rolls",
//     "calories": "243kcal",
//     "protein": "3g",
//     "fat": "21g",
//     "sodium": "48mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Layer Cake with Chocolate Glaze",
//     "calories": "4889kcal",
//     "protein": "86g",
//     "fat": "201g",
//     "sodium": "2873mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Layer Cake with Chocolate-Raspberry Frosting",
//     "calories": "653kcal",
//     "protein": "9g",
//     "fat": "23g",
//     "sodium": "519mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Leaves",
//     "calories": "74kcal",
//     "protein": "1g",
//     "fat": "4g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Lovers' Butterscotch Chiffon Tart",
//     "calories": "562kcal",
//     "protein": "7g",
//     "fat": "36g",
//     "sodium": "157mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Macadamia Nut Sauce",
//     "calories": "538kcal",
//     "protein": "3g",
//     "fat": "42g",
//     "sodium": "25mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Marquise",
//     "calories": "1554kcal",
//     "protein": "17g",
//     "fat": "109g",
//     "sodium": "371mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Marshmallow Eggs",
//     "calories": "68kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "5mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Marshmallow Frosting",
//     "calories": "279kcal",
//     "protein": "2g",
//     "fat": "9g",
//     "sodium": "18mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Mascarpone Mousse with Bananas",
//     "calories": "259kcal",
//     "protein": "2g",
//     "fat": "19g",
//     "sodium": "78mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Meringue and Mint Chip Ice Cream Cake",
//     "calories": "290kcal",
//     "protein": "5g",
//     "fat": "11g",
//     "sodium": "84mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Meringue Parfait with Chocolate Sauce",
//     "calories": "438kcal",
//     "protein": "6g",
//     "fat": "15g",
//     "sodium": "118mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Mint Chip Parfait",
//     "calories": "459kcal",
//     "protein": "4g",
//     "fat": "25g",
//     "sodium": "38mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Mint Layer Cake with Mint Cream Cheese Frosting",
//     "calories": "1023kcal",
//     "protein": "11g",
//     "fat": "54g",
//     "sodium": "528mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Mousse Cake with Cinnamon Cream",
//     "calories": "258kcal",
//     "protein": "4g",
//     "fat": "19g",
//     "sodium": "36mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Mousse Pie",
//     "calories": "1246kcal",
//     "protein": "11g",
//     "fat": "114g",
//     "sodium": "234mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Nut Cookies",
//     "calories": "87kcal",
//     "protein": "2g",
//     "fat": "4g",
//     "sodium": "28mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Orange Cheesecake with Orange-Tangerine Glaze",
//     "calories": "768kcal",
//     "protein": "12g",
//     "fat": "47g",
//     "sodium": "664mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Raspberry Turnovers",
//     "calories": "112kcal",
//     "protein": "2g",
//     "fat": "7g",
//     "sodium": "44mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Roll with Cappuccino Cream",
//     "calories": "224kcal",
//     "protein": "4g",
//     "fat": "12g",
//     "sodium": "92mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Rum Pudding",
//     "calories": "706kcal",
//     "protein": "9g",
//     "fat": "53g",
//     "sodium": "82mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Sabayon",
//     "calories": "179kcal",
//     "protein": "4g",
//     "fat": "8g",
//     "sodium": "78mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Sambuca Crinkle Cookies",
//     "calories": "128kcal",
//     "protein": "2g",
//     "fat": "6g",
//     "sodium": "82mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Sauce",
//     "calories": "966kcal",
//     "protein": "9g",
//     "fat": "91g",
//     "sodium": "67mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Semifreddo with Chile-Chocolate Sauce",
//     "calories": "352kcal",
//     "protein": "9g",
//     "fat": "28g",
//     "sodium": "44mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Sheet Cake with Sour Cream Frosting",
//     "calories": "389kcal",
//     "protein": "5g",
//     "fat": "25g",
//     "sodium": "166mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Sorbet",
//     "calories": "264kcal",
//     "protein": "2g",
//     "fat": "12g",
//     "sodium": "32mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Walnut Biscotti",
//     "calories": "38kcal",
//     "protein": "1g",
//     "fat": "2g",
//     "sodium": "42mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Walnut Biscotti with Chocolate Custard Swirls",
//     "calories": "58kcal",
//     "protein": "1g",
//     "fat": "3g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Wontons with Ginger Ice Cream",
//     "calories": "3489kcal",
//     "protein": "22g",
//     "fat": "327g",
//     "sodium": "667mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Yogurt Cake",
//     "calories": "281kcal",
//     "protein": "6g",
//     "fat": "10g",
//     "sodium": "320mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate Zucchini Mini-Muffins",
//     "calories": "166kcal",
//     "protein": "2g",
//     "fat": "9g",
//     "sodium": "138mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate, Almond, and Dried Cranberry Biscotti",
//     "calories": "81kcal",
//     "protein": "2g",
//     "fat": "3g",
//     "sodium": "85mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate, block & slab, Original, Peanut, Whittaker's",
//     "calories": "544.67kcal",
//     "protein": "14.84g",
//     "fat": "32.9g",
//     "sodium": "47mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Chocolate, caramel & nougat whip, bar & bite size, Moro, Cadbury",
//     "calories": "385.82kcal",
//     "protein": "4.41g",
//     "fat": "14.6g",
//     "sodium": "260mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate, caramel, chocolate coated, composite",
//     "calories": "450.59kcal",
//     "protein": "5.31g",
//     "fat": "18.9g",
//     "sodium": "150mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate, Cherry and Marsala Cassata",
//     "calories": "1082kcal",
//     "protein": "15g",
//     "fat": "69g",
//     "sodium": "361mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate, Cinnamon, and Hazelnut Thumbprints",
//     "calories": "185kcal",
//     "protein": "2g",
//     "fat": "11g",
//     "sodium": "57mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate, compound, composite",
//     "calories": "524.65kcal",
//     "protein": "2.85g",
//     "fat": "27.5g",
//     "sodium": "12mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate, Cranberry and Ginger Trifle",
//     "calories": "463kcal",
//     "protein": "4g",
//     "fat": "14g",
//     "sodium": "152mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate, dark",
//     "calories": "530.73kcal",
//     "protein": "5.1g",
//     "fat": "28.5g",
//     "sodium": "55mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate, fancy & filled",
//     "calories": "469.93kcal",
//     "protein": "4.13g",
//     "fat": "18.8g",
//     "sodium": "60mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Chocolate, milk chocolate with caramel, Cadbury Caramello, bite size",
//     "calories": "472.49kcal",
//     "protein": "7.25g",
//     "fat": "22.69g",
//     "sodium": "150mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Chocolate, milk chocolate with caramel, slab, Caramello, Cadbury",
//     "calories": "468.22kcal",
//     "protein": "6.81g",
//     "fat": "22.66g",
//     "sodium": "150mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Chocolate, milk chocolate with coconut centre, bar, Bounty, Mars",
//     "calories": "490.48kcal",
//     "protein": "4.81g",
//     "fat": "26.1g",
//     "sodium": "180mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Chocolate, milk chocolate with golden honeycomb pieces, bar & block, Dairy Milk with Crunchie, Cadbury",
//     "calories": "483.68kcal",
//     "protein": "6.81g",
//     "fat": "23.8g",
//     "sodium": "131mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Chocolate, milk chocolate with sultanas & almond, bar & block, Dairy Milk Fruit & Nut, Cadbury",
//     "calories": "473.88kcal",
//     "protein": "8.47g",
//     "fat": "25.2g",
//     "sodium": "60mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate, milk chocolate, Dairy Milk, Cadbury",
//     "calories": "506.89kcal",
//     "protein": "9.09g",
//     "fat": "27.07g",
//     "sodium": "82mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate, Orange and Honey Cake",
//     "calories": "623kcal",
//     "protein": "7g",
//     "fat": "37g",
//     "sodium": "220mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate, white",
//     "calories": "531.77kcal",
//     "protein": "8g",
//     "fat": "30.9g",
//     "sodium": "110mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate, white chocolate, Milky Bar, Nestle",
//     "calories": "555.75kcal",
//     "protein": "8.97g",
//     "fat": "34.13g",
//     "sodium": "100mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Almond Cupcakes with Fluffy Coconut Frosting",
//     "calories": "664kcal",
//     "protein": "10g",
//     "fat": "43g",
//     "sodium": "413mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Almond Iced Coffee",
//     "calories": "228kcal",
//     "protein": "5g",
//     "fat": "14g",
//     "sodium": "26mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Almond Pie",
//     "calories": "3358273kcal",
//     "protein": "58334g",
//     "fat": "186660g",
//     "sodium": "3449512mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Cherry Ice Cream Pie with Hot Fudge Sauce",
//     "calories": "658kcal",
//     "protein": "7g",
//     "fat": "39g",
//     "sodium": "209mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Cherry Tart",
//     "calories": "608kcal",
//     "protein": "7g",
//     "fat": "31g",
//     "sodium": "286mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Cherry, Pistachio, and Raspberry Ice Cream Cake",
//     "calories": "587kcal",
//     "protein": "7g",
//     "fat": "26g",
//     "sodium": "172mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Chicory Sauce",
//     "calories": "260kcal",
//     "protein": "2g",
//     "fat": "22g",
//     "sodium": "17mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Chip Ice-Cream-Sandwich Cake with Butterscotch Sauce",
//     "calories": "856kcal",
//     "protein": "8g",
//     "fat": "48g",
//     "sodium": "329mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Chunk Caramel Cookies",
//     "calories": "109kcal",
//     "protein": "1g",
//     "fat": "6g",
//     "sodium": "80mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Chocolate-Chunk Cookies with Pecans, Dried Apricots, and Tart Cherries",
//     "calories": "186kcal",
//     "protein": "2g",
//     "fat": "10g",
//     "sodium": "118mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Cinnamon Coffee Cake",
//     "calories": "265kcal",
//     "protein": "5g",
//     "fat": "11g",
//     "sodium": "140mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Coconut Pound Cake",
//     "calories": "471kcal",
//     "protein": "7g",
//     "fat": "24g",
//     "sodium": "342mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Coffee Gingerbread with Hazelnut Poached Pears",
//     "calories": "789kcal",
//     "protein": "8g",
//     "fat": "30g",
//     "sodium": "495mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Cognac Cream",
//     "calories": "257kcal",
//     "protein": "3g",
//     "fat": "24g",
//     "sodium": "21mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Cognac Profiteroles with Raspberry Sauce",
//     "calories": "261kcal",
//     "protein": "9g",
//     "fat": "17g",
//     "sodium": "148mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Covered Fruitcake Balls",
//     "calories": "40kcal",
//     "protein": "0g",
//     "fat": "2g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Covered Gingerbread Cake",
//     "calories": "522kcal",
//     "protein": "5g",
//     "fat": "29g",
//     "sodium": "202mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Covered Mint Ice Cream Terrine",
//     "calories": "389kcal",
//     "protein": "5g",
//     "fat": "22g",
//     "sodium": "38mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Chocolate-Covered Poached Pears with Apricot-Pecan Stuffing and Chile Sabayon",
//     "calories": "705kcal",
//     "protein": "6g",
//     "fat": "26g",
//     "sodium": "17mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Cranberry Torte",
//     "calories": "1154kcal",
//     "protein": "11g",
//     "fat": "74g",
//     "sodium": "234mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Dipped Cherries",
//     "calories": "41kcal",
//     "protein": "0g",
//     "fat": "2g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Dipped Cherry-Hazelnut Biscotti",
//     "calories": "242kcal",
//     "protein": "4g",
//     "fat": "13g",
//     "sodium": "87mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Dipped Coconut Macaroons",
//     "calories": "112kcal",
//     "protein": "1g",
//     "fat": "4g",
//     "sodium": "67mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Dipped Macaroons",
//     "calories": "71kcal",
//     "protein": "1g",
//     "fat": "4g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Dipped Orange and Ginger Florentines",
//     "calories": "134kcal",
//     "protein": "1g",
//     "fat": "6g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Dipped Orange Peel",
//     "calories": "306kcal",
//     "protein": "2g",
//     "fat": "8g",
//     "sodium": "197mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Frangelico Cheesecake",
//     "calories": "376kcal",
//     "protein": "6g",
//     "fat": "27g",
//     "sodium": "229mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Orange Carrot Cake",
//     "calories": "1807kcal",
//     "protein": "16g",
//     "fat": "117g",
//     "sodium": "920mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Orange Decadence",
//     "calories": "916kcal",
//     "protein": "9g",
//     "fat": "51g",
//     "sodium": "95mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Orange Easter-Egg Truffles",
//     "calories": "217kcal",
//     "protein": "1g",
//     "fat": "18g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Orange Fruitcake with Pecans",
//     "calories": "827kcal",
//     "protein": "9g",
//     "fat": "49g",
//     "sodium": "359mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Tequila Sundaes",
//     "calories": "875kcal",
//     "protein": "10g",
//     "fat": "58g",
//     "sodium": "96mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolate-Walnut Brownies",
//     "calories": "215kcal",
//     "protein": "3g",
//     "fat": "14g",
//     "sodium": "63mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chocolatines",
//     "calories": "235kcal",
//     "protein": "3g",
//     "fat": "12g",
//     "sodium": "99mg",
//     "status": "false1"
//   },
//   {
//     "food": "Choko, fruit vegetable, flesh, cooked",
//     "calories": "23.3kcal",
//     "protein": "0.63g",
//     "fat": "0.2g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cholay",
//     "calories": "215kcal",
//     "protein": "10g",
//     "fat": "6g",
//     "sodium": "260mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chop Suey",
//     "calories": "198kcal",
//     "protein": "19g",
//     "fat": "8g",
//     "sodium": "1033mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chop suey, chicken, lean & fat, stir fried",
//     "calories": "108.15kcal",
//     "protein": "6.94g",
//     "fat": "5.97g",
//     "sodium": "167mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chop suey, chicken, ready to eat",
//     "calories": "96.82kcal",
//     "protein": "8.13g",
//     "fat": "6.5g",
//     "sodium": "230mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chop suey, pork, ready to eat",
//     "calories": "125.34kcal",
//     "protein": "8.81g",
//     "fat": "8.8g",
//     "sodium": "550mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chopped Arabic Salad",
//     "calories": "150kcal",
//     "protein": "3g",
//     "fat": "11g",
//     "sodium": "460mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chopped Arugula Salad",
//     "calories": "93kcal",
//     "protein": "2g",
//     "fat": "7g",
//     "sodium": "115mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chow mein, prawn, ready to eat",
//     "calories": "149.53kcal",
//     "protein": "5.63g",
//     "fat": "10.9g",
//     "sodium": "330mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chowders",
//     "calories": "268kcal",
//     "protein": "6g",
//     "fat": "16g",
//     "sodium": "604mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chris Lilly's Flank Steak and Shiitake Yakitori",
//     "calories": "194kcal",
//     "protein": "17g",
//     "fat": "6g",
//     "sodium": "932mg",
//     "status": "false1"
//   },
//   {
//     "food": "Christmas Cheesecake with English Toffee Filling",
//     "calories": "749kcal",
//     "protein": "10g",
//     "fat": "53g",
//     "sodium": "456mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Christmas Cranberry, Pear and Walnut Torte with Cream Cheese-Orange Frosting",
//     "calories": "479kcal",
//     "protein": "7g",
//     "fat": "27g",
//     "sodium": "204mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Christmas Croissant Pudding with Sour Cream and Brown Sugar Sauce",
//     "calories": "551kcal",
//     "protein": "11g",
//     "fat": "30g",
//     "sodium": "338mg",
//     "status": "false1"
//   },
//   {
//     "food": "Christmas Eggnog",
//     "calories": "308kcal",
//     "protein": "8g",
//     "fat": "9g",
//     "sodium": "100mg",
//     "status": "false1"
//   },
//   {
//     "food": "Christmas Fruitcake",
//     "calories": "345kcal",
//     "protein": "5g",
//     "fat": "15g",
//     "sodium": "91mg",
//     "status": "false1"
//   },
//   {
//     "food": "Christmas Glazed Apple Cake (Weihnachten Gedeckter Apfelkuchen)",
//     "calories": "6929kcal",
//     "protein": "56g",
//     "fat": "140g",
//     "sodium": "837mg",
//     "status": "false1"
//   },
//   {
//     "food": "Christmas Lane Cake",
//     "calories": "1347kcal",
//     "protein": "16g",
//     "fat": "79g",
//     "sodium": "408mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chunky Almond Oil",
//     "calories": "128kcal",
//     "protein": "2g",
//     "fat": "13g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chunky Beef and Vegetable Soup",
//     "calories": "372kcal",
//     "protein": "44g",
//     "fat": "11g",
//     "sodium": "798mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chunky Clam and Bacon Dip with Pita Toasts",
//     "calories": "479kcal",
//     "protein": "30g",
//     "fat": "35g",
//     "sodium": "522mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chunky Date, Coconut and Almond Granola",
//     "calories": "269kcal",
//     "protein": "5g",
//     "fat": "13g",
//     "sodium": "14mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chunky Gazpacho",
//     "calories": "163kcal",
//     "protein": "3g",
//     "fat": "11g",
//     "sodium": "80mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chunky Guacamole",
//     "calories": "233kcal",
//     "protein": "3g",
//     "fat": "20g",
//     "sodium": "212mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chunky Orange and Pomegranate Marmalade",
//     "calories": "346kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "10mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chunky Red Chili",
//     "calories": "451kcal",
//     "protein": "32g",
//     "fat": "23g",
//     "sodium": "1021mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chunky Sweet-Potato Soup",
//     "calories": "392kcal",
//     "protein": "21g",
//     "fat": "22g",
//     "sodium": "201mg",
//     "status": "false1"
//   },
//   {
//     "food": "Chunky Two-Cheese Potatoes with Garlic and Pesto",
//     "calories": "302kcal",
//     "protein": "11g",
//     "fat": "16g",
//     "sodium": "181mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Chutney-Glazed Cornish Hens with Hazelnuts and Dried-Fruit Stuffing",
//     "calories": "1647kcal",
//     "protein": "104g",
//     "fat": "106g",
//     "sodium": "573mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ciabatta Pizza with Gorgonzola, Walnut Pesto, and Pears",
//     "calories": "946kcal",
//     "protein": "32g",
//     "fat": "61g",
//     "sodium": "1709mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cider Bishop",
//     "calories": "164kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cider Cup",
//     "calories": "64kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "11mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cider Mini-Doughnuts",
//     "calories": "166kcal",
//     "protein": "2g",
//     "fat": "8g",
//     "sodium": "150mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cider Punch",
//     "calories": "449kcal",
//     "protein": "0g",
//     "fat": "1g",
//     "sodium": "48mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cider Sauce",
//     "calories": "329kcal",
//     "protein": "1g",
//     "fat": "23g",
//     "sodium": "9mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cider Spice Cake",
//     "calories": "643kcal",
//     "protein": "5g",
//     "fat": "42g",
//     "sodium": "313mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cider Syrup",
//     "calories": "237kcal",
//     "protein": "0g",
//     "fat": "9g",
//     "sodium": "14mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cider Vinaigrette",
//     "calories": "523kcal",
//     "protein": "1g",
//     "fat": "48g",
//     "sodium": "85mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cider, Bacon, and Golden Raisin Stuffing",
//     "calories": "543kcal",
//     "protein": "16g",
//     "fat": "26g",
//     "sodium": "946mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cider, dry",
//     "calories": "30.84kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cider, sweet",
//     "calories": "36.24kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cilantro Coconut Rice",
//     "calories": "272kcal",
//     "protein": "4g",
//     "fat": "6g",
//     "sodium": "260mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cinnamon Hot Chocolate",
//     "calories": "291kcal",
//     "protein": "10g",
//     "fat": "13g",
//     "sodium": "133mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cinnamon Ice Cream",
//     "calories": "276kcal",
//     "protein": "5g",
//     "fat": "19g",
//     "sodium": "62mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Classic Roast Turkey With Herbed Stuffing and Old-Fashioned Gravy",
//     "calories": "1085kcal",
//     "protein": "150g",
//     "fat": "44g",
//     "sodium": "2032mg",
//     "status": "false1"
//   },
//   {
//     "food": "Classic Salad",
//     "calories": "24kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "56mg",
//     "status": "false1"
//   },
//   {
//     "food": "Classic Sangria",
//     "calories": "205kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "5mg",
//     "status": "false1"
//   },
//   {
//     "food": "Classic Shortbread",
//     "calories": "41kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Classic Sour Cherry Pie with Lattice Crust",
//     "calories": "548kcal",
//     "protein": "5g",
//     "fat": "27g",
//     "sodium": "297mg",
//     "status": "false1"
//   },
//   {
//     "food": "Classic Spinach-Artichoke Dip with Mozzarella and Parmesan",
//     "calories": "269kcal",
//     "protein": "11g",
//     "fat": "20g",
//     "sodium": "671mg",
//     "status": "false1"
//   },
//   {
//     "food": "Classic Tomato Toast with Mayonnaise and Chives",
//     "calories": "194kcal",
//     "protein": "4g",
//     "fat": "12g",
//     "sodium": "713mg",
//     "status": "false1"
//   },
//   {
//     "food": "Clay Pot Chicken with Dates, Sucuk and Bulgur",
//     "calories": "1613kcal",
//     "protein": "97g",
//     "fat": "109g",
//     "sodium": "618mg",
//     "status": "false1"
//   },
//   {
//     "food": "Clay-Pot Miso Chicken",
//     "calories": "1361kcal",
//     "protein": "95g",
//     "fat": "94g",
//     "sodium": "2878mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cocoa Brownies",
//     "calories": "141kcal",
//     "protein": "2g",
//     "fat": "7g",
//     "sodium": "70mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cocoa Meringue Baskets with Nectarines, Berries, and Cream",
//     "calories": "632kcal",
//     "protein": "8g",
//     "fat": "37g",
//     "sodium": "73mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cocoa Nib, Chocolate, and Citrus Dacquoise",
//     "calories": "447kcal",
//     "protein": "7g",
//     "fat": "30g",
//     "sodium": "241mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cocoa, instant, dry powder, KoKo Samoa",
//     "calories": "617.1kcal",
//     "protein": "12.99g",
//     "fat": "48.6g",
//     "sodium": "2.1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cocoa-Peanut Butter Heart-Shaped Sandwich Cookies",
//     "calories": "366kcal",
//     "protein": "6g",
//     "fat": "20g",
//     "sodium": "32mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cocoa-Spice Meringues with Chocolate Cream",
//     "calories": "541kcal",
//     "protein": "7g",
//     "fat": "27g",
//     "sodium": "71mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Almond Granola:topping for Salad",
//     "calories": "223kcal",
//     "protein": "5g",
//     "fat": "13g",
//     "sodium": "218mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut and Lychee Sorbet",
//     "calories": "431kcal",
//     "protein": "4g",
//     "fat": "30g",
//     "sodium": "93mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut and Macadamia Nut Banana Bread",
//     "calories": "306kcal",
//     "protein": "4g",
//     "fat": "16g",
//     "sodium": "236mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut and Macadamia Nut Banana Breads",
//     "calories": "1030kcal",
//     "protein": "13g",
//     "fat": "53g",
//     "sodium": "759mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Coconut and Palm Sugar Syrup with Tapioca, Tropical Fruit, and Shaved Ice",
//     "calories": "783kcal",
//     "protein": "6g",
//     "fat": "42g",
//     "sodium": "69mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut and Pistachio Baklava",
//     "calories": "301kcal",
//     "protein": "3g",
//     "fat": "19g",
//     "sodium": "124mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Bake",
//     "calories": "242kcal",
//     "protein": "4g",
//     "fat": "13g",
//     "sodium": "286mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Barbecued Ribs",
//     "calories": "1478kcal",
//     "protein": "74g",
//     "fat": "118g",
//     "sodium": "1843mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Basmati Rice",
//     "calories": "375kcal",
//     "protein": "6g",
//     "fat": "14g",
//     "sodium": "422mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Beef Curry",
//     "calories": "916kcal",
//     "protein": "46g",
//     "fat": "63g",
//     "sodium": "178mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Blondies",
//     "calories": "167kcal",
//     "protein": "2g",
//     "fat": "9g",
//     "sodium": "77mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Buttercream",
//     "calories": "226kcal",
//     "protein": "2g",
//     "fat": "6g",
//     "sodium": "232mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Cake with Lime Curd",
//     "calories": "327kcal",
//     "protein": "4g",
//     "fat": "18g",
//     "sodium": "141mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Cheesecake with Passion Fruit Glaze",
//     "calories": "657kcal",
//     "protein": "10g",
//     "fat": "42g",
//     "sodium": "411mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Chicken Soup",
//     "calories": "351kcal",
//     "protein": "23g",
//     "fat": "24g",
//     "sodium": "1826mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Cream Pie",
//     "calories": "716kcal",
//     "protein": "9g",
//     "fat": "53g",
//     "sodium": "277mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Cream Pie with Macaroon Press-In Crust",
//     "calories": "272kcal",
//     "protein": "3g",
//     "fat": "20g",
//     "sodium": "87mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Cream Tart",
//     "calories": "4344kcal",
//     "protein": "45g",
//     "fat": "292g",
//     "sodium": "1475mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Cream Tart with Macadamia Nut Crust",
//     "calories": "727kcal",
//     "protein": "10g",
//     "fat": "56g",
//     "sodium": "50mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Cream Tartlets",
//     "calories": "611kcal",
//     "protein": "7g",
//     "fat": "35g",
//     "sodium": "411mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut cream, fresh, no water added",
//     "calories": "329.15kcal",
//     "protein": "4g",
//     "fat": "32.3g",
//     "sodium": "13mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut cream, fresh, prepared with water",
//     "calories": "263.32kcal",
//     "protein": "3.2g",
//     "fat": "25.84g",
//     "sodium": "10.6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Creole Bread Pudding with Bourbon Sauce",
//     "calories": "829kcal",
//     "protein": "15g",
//     "fat": "45g",
//     "sodium": "473mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Date Nut Balls",
//     "calories": "253kcal",
//     "protein": "2g",
//     "fat": "9g",
//     "sodium": "139mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Dulce de Leche",
//     "calories": "239kcal",
//     "protein": "2g",
//     "fat": "17g",
//     "sodium": "112mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Flan",
//     "calories": "337kcal",
//     "protein": "10g",
//     "fat": "14g",
//     "sodium": "164mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Flans with Coffee Caramel",
//     "calories": "361kcal",
//     "protein": "7g",
//     "fat": "19g",
//     "sodium": "118mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Green Curry Sauce",
//     "calories": "279kcal",
//     "protein": "2g",
//     "fat": "25g",
//     "sodium": "35mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Lime Mussels",
//     "calories": "320kcal",
//     "protein": "22g",
//     "fat": "16g",
//     "sodium": "497mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Lime Squares",
//     "calories": "165kcal",
//     "protein": "3g",
//     "fat": "7g",
//     "sodium": "65mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Macaroon Sandwiches with Lime Curd",
//     "calories": "88kcal",
//     "protein": "1g",
//     "fat": "5g",
//     "sodium": "66mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Mango Sorbet",
//     "calories": "207kcal",
//     "protein": "1g",
//     "fat": "3g",
//     "sodium": "11mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Marshmallows",
//     "calories": "285kcal",
//     "protein": "3g",
//     "fat": "8g",
//     "sodium": "145mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut meat, dried, creamed",
//     "calories": "689.08kcal",
//     "protein": "5.31g",
//     "fat": "69.08g",
//     "sodium": "37mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Milk Custard With Strawberry-Rhubarb Compote",
//     "calories": "422kcal",
//     "protein": "6g",
//     "fat": "32g",
//     "sodium": "86mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Milk Ice Cream with Ginger and Lime",
//     "calories": "543kcal",
//     "protein": "5g",
//     "fat": "33g",
//     "sodium": "86mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Milk Whipped Cream",
//     "calories": "141kcal",
//     "protein": "1g",
//     "fat": "14g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Mint Cream Cake",
//     "calories": "922kcal",
//     "protein": "13g",
//     "fat": "49g",
//     "sodium": "519mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Mint Sorbet",
//     "calories": "241kcal",
//     "protein": "2g",
//     "fat": "17g",
//     "sodium": "10mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Pad Thai",
//     "calories": "770kcal",
//     "protein": "14g",
//     "fat": "58g",
//     "sodium": "739mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Pineapple Cake",
//     "calories": "484kcal",
//     "protein": "7g",
//     "fat": "21g",
//     "sodium": "207mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Pound Cake",
//     "calories": "299kcal",
//     "protein": "4g",
//     "fat": "16g",
//     "sodium": "146mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Red-Lentil Curry",
//     "calories": "471kcal",
//     "protein": "15g",
//     "fat": "28g",
//     "sodium": "416mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Relish",
//     "calories": "216kcal",
//     "protein": "2g",
//     "fat": "22g",
//     "sodium": "257mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Rice",
//     "calories": "369kcal",
//     "protein": "6g",
//     "fat": "14g",
//     "sodium": "323mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Rice Pudding",
//     "calories": "310kcal",
//     "protein": "8g",
//     "fat": "12g",
//     "sodium": "229mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Rice Pudding Parfaits with Mango and Pineapple",
//     "calories": "932kcal",
//     "protein": "12g",
//     "fat": "44g",
//     "sodium": "821mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Rice Puddings with Crispy Coconut",
//     "calories": "428kcal",
//     "protein": "4g",
//     "fat": "33g",
//     "sodium": "230mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Rum Cake",
//     "calories": "798kcal",
//     "protein": "10g",
//     "fat": "47g",
//     "sodium": "244mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Sauce",
//     "calories": "589kcal",
//     "protein": "31g",
//     "fat": "49g",
//     "sodium": "259mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Shortbread Cookies",
//     "calories": "65kcal",
//     "protein": "1g",
//     "fat": "4g",
//     "sodium": "32mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Shrimp with Sweet Chili-Lime Sauce",
//     "calories": "103kcal",
//     "protein": "3g",
//     "fat": "6g",
//     "sodium": "236mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Shrimp with Tamarind Ginger Sauce",
//     "calories": "1910kcal",
//     "protein": "15g",
//     "fat": "192g",
//     "sodium": "1054mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Souffles with Chocolate Sauce",
//     "calories": "546kcal",
//     "protein": "9g",
//     "fat": "36g",
//     "sodium": "184mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Spice Cake",
//     "calories": "778kcal",
//     "protein": "6g",
//     "fat": "36g",
//     "sodium": "457mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Tamales",
//     "calories": "379kcal",
//     "protein": "5g",
//     "fat": "17g",
//     "sodium": "27mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Tapioca With Pineapple, Mango, And Lime",
//     "calories": "493kcal",
//     "protein": "7g",
//     "fat": "25g",
//     "sodium": "189mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Tarts with Prickly Pear Sauce",
//     "calories": "1073kcal",
//     "protein": "16g",
//     "fat": "74g",
//     "sodium": "319mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Tofu",
//     "calories": "406kcal",
//     "protein": "19g",
//     "fat": "21g",
//     "sodium": "1384mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Tuile Cones with Passion-Fruit Ice Cream",
//     "calories": "139kcal",
//     "protein": "1g",
//     "fat": "7g",
//     "sodium": "23mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut Water and Lime Rickey",
//     "calories": "27kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "139mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut, Beet, and Ginger Soup",
//     "calories": "166kcal",
//     "protein": "5g",
//     "fat": "11g",
//     "sodium": "685mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut, cream, premium, composite",
//     "calories": "254.44kcal",
//     "protein": "3.57g",
//     "fat": "26g",
//     "sodium": "17mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut, desiccated",
//     "calories": "624.38kcal",
//     "protein": "5.57g",
//     "fat": "62g",
//     "sodium": "28mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut, flesh, raw",
//     "calories": "360.59kcal",
//     "protein": "3.23g",
//     "fat": "36g",
//     "sodium": "16mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut, milk, standard, composite",
//     "calories": "196.46kcal",
//     "protein": "1.25g",
//     "fat": "21.05g",
//     "sodium": "18.7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut-and-Almond Candy",
//     "calories": "316kcal",
//     "protein": "3g",
//     "fat": "15g",
//     "sodium": "91mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut-Blueberry Cake",
//     "calories": "414kcal",
//     "protein": "5g",
//     "fat": "13g",
//     "sodium": "343mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut-Chocolate Chip Cupcakes",
//     "calories": "541kcal",
//     "protein": "6g",
//     "fat": "29g",
//     "sodium": "170mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut-Chocolate Marjolaine",
//     "calories": "613kcal",
//     "protein": "7g",
//     "fat": "42g",
//     "sodium": "140mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut-Crusted Fried Shrimp",
//     "calories": "5806kcal",
//     "protein": "373g",
//     "fat": "455g",
//     "sodium": "15804mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Coconut-Crusted Mahimahi with Pan-Roasted Garlic, Rosemary, and Tomato Sauce",
//     "calories": "814kcal",
//     "protein": "35g",
//     "fat": "67g",
//     "sodium": "184mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut-Curry Sauce",
//     "calories": "349kcal",
//     "protein": "3g",
//     "fat": "28g",
//     "sodium": "43mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut-Fudge Cheesecake",
//     "calories": "858kcal",
//     "protein": "12g",
//     "fat": "61g",
//     "sodium": "490mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut-Key Lime Sheet Cake",
//     "calories": "483kcal",
//     "protein": "5g",
//     "fat": "35g",
//     "sodium": "100mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut-Lime Bars with Hazelnut Shortbread Crust",
//     "calories": "190kcal",
//     "protein": "2g",
//     "fat": "8g",
//     "sodium": "73mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut-Lime Shrimp with Peanut Sauce",
//     "calories": "246kcal",
//     "protein": "12g",
//     "fat": "19g",
//     "sodium": "818mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut-Macaroon and Lemon Ice Cream Sandwiches",
//     "calories": "335kcal",
//     "protein": "4g",
//     "fat": "18g",
//     "sodium": "134mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut-Mango Rice Noodle Salad",
//     "calories": "641kcal",
//     "protein": "12g",
//     "fat": "44g",
//     "sodium": "382mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Coconut-Marinated Short Rib Kebabs\n                With Peanut-Chile Oil",
//     "calories": "865kcal",
//     "protein": "31g",
//     "fat": "74g",
//     "sodium": "1317mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut-Pecan-Crusted Brownies",
//     "calories": "274kcal",
//     "protein": "3g",
//     "fat": "16g",
//     "sodium": "148mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Coconut-Piloncillo Ice Cream with Coconut Tortilla Chips and Fruit Salsa",
//     "calories": "503kcal",
//     "protein": "7g",
//     "fat": "25g",
//     "sodium": "270mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut-Rum Pie with Pineapple",
//     "calories": "693kcal",
//     "protein": "7g",
//     "fat": "39g",
//     "sodium": "311mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut-Rum Roulade",
//     "calories": "690kcal",
//     "protein": "8g",
//     "fat": "57g",
//     "sodium": "153mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut-Sweet Potato Cheesecake",
//     "calories": "826kcal",
//     "protein": "13g",
//     "fat": "50g",
//     "sodium": "629mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coconut-Vegetable Slaw",
//     "calories": "133kcal",
//     "protein": "4g",
//     "fat": "7g",
//     "sodium": "512mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coctel Veracruzana",
//     "calories": "156kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cod Chowder with Saffron and Fingerling Potatoes",
//     "calories": "327kcal",
//     "protein": "37g",
//     "fat": "12g",
//     "sodium": "971mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cod en Cocotte with Tomatoes, Olives & Chorizo",
//     "calories": "446kcal",
//     "protein": "14g",
//     "fat": "28g",
//     "sodium": "250mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cod Fritters with Tartar Sauce",
//     "calories": "83kcal",
//     "protein": "3g",
//     "fat": "7g",
//     "sodium": "63mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cod with Coconut, Lime, and Lemongrass Curry Sauce",
//     "calories": "882kcal",
//     "protein": "45g",
//     "fat": "71g",
//     "sodium": "6046mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cod with Lemon, Green Olive, and Onion Relish",
//     "calories": "458kcal",
//     "protein": "31g",
//     "fat": "36g",
//     "sodium": "267mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cod with Mediterranean Salsa",
//     "calories": "311kcal",
//     "protein": "32g",
//     "fat": "17g",
//     "sodium": "345mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cod with Mushroom-Herb Crust and Tomato Compote",
//     "calories": "862kcal",
//     "protein": "50g",
//     "fat": "35g",
//     "sodium": "1937mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cod with Potatoes and Preserved Lemon Relish",
//     "calories": "399kcal",
//     "protein": "29g",
//     "fat": "18g",
//     "sodium": "142mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cod, blue, flesh, raw",
//     "calories": "81.81kcal",
//     "protein": "18.13g",
//     "fat": "0.8g",
//     "sodium": "87mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cod, flesh & skin, smoked, poached",
//     "calories": "103.29kcal",
//     "protein": "21.63g",
//     "fat": "1.6g",
//     "sodium": "1200mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cod, flesh & skin, smoked, raw",
//     "calories": "80.8kcal",
//     "protein": "18.31g",
//     "fat": "0.6g",
//     "sodium": "1170mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cod, flesh, baked",
//     "calories": "99.07kcal",
//     "protein": "21.44g",
//     "fat": "1.2g",
//     "sodium": "340mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cod, flesh, fried in batter",
//     "calories": "199.26kcal",
//     "protein": "19.63g",
//     "fat": "10.3g",
//     "sodium": "100mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cod, flesh, frozen, raw",
//     "calories": "70.51kcal",
//     "protein": "15.56g",
//     "fat": "0.7g",
//     "sodium": "68mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cod, flesh, grilled",
//     "calories": "97.08kcal",
//     "protein": "20.75g",
//     "fat": "1.3g",
//     "sodium": "91mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cod, flesh, poached",
//     "calories": "96.07kcal",
//     "protein": "20.94g",
//     "fat": "1.1g",
//     "sodium": "110mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cod, flesh, raw",
//     "calories": "77.88kcal",
//     "protein": "17.38g",
//     "fat": "0.7g",
//     "sodium": "77mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cod, flesh, steamed",
//     "calories": "85.02kcal",
//     "protein": "18.63g",
//     "fat": "0.9g",
//     "sodium": "100mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cod, Potato, and Fennel Casserole",
//     "calories": "369kcal",
//     "protein": "31g",
//     "fat": "15g",
//     "sodium": "536mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cod, red, flesh, raw",
//     "calories": "75.15kcal",
//     "protein": "16.88g",
//     "fat": "0.64g",
//     "sodium": "91.7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coffee Almond Ice-Cream Cake with Dark Chocolate Sauce",
//     "calories": "313kcal",
//     "protein": "3g",
//     "fat": "22g",
//     "sodium": "67mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coffee and Molasses Cured Duck Breast Bacon",
//     "calories": "56kcal",
//     "protein": "6g",
//     "fat": "1g",
//     "sodium": "2398mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coffee beans, ground, roasted",
//     "calories": "375.17kcal",
//     "protein": "12.75g",
//     "fat": "15.4g",
//     "sodium": "74mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Coffee beverage, espresso, ready to drink, cafe variety, composite",
//     "calories": "13kcal",
//     "protein": "1.46g",
//     "fat": "0.8g",
//     "sodium": "0mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coffee Caramel Swirl Ice Cream",
//     "calories": "259kcal",
//     "protein": "3g",
//     "fat": "13g",
//     "sodium": "46mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coffee Cream",
//     "calories": "396kcal",
//     "protein": "18g",
//     "fat": "26g",
//     "sodium": "135mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coffee Custard Sauce",
//     "calories": "178kcal",
//     "protein": "3g",
//     "fat": "13g",
//     "sodium": "17mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coffee Dacquoise Hearts",
//     "calories": "763kcal",
//     "protein": "9g",
//     "fat": "53g",
//     "sodium": "56mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coffee Date Shake",
//     "calories": "202kcal",
//     "protein": "4g",
//     "fat": "3g",
//     "sodium": "54mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coffee Doughnuts With Coffee Glaze",
//     "calories": "250kcal",
//     "protein": "3g",
//     "fat": "11g",
//     "sodium": "182mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coffee Fruitcake",
//     "calories": "346kcal",
//     "protein": "4g",
//     "fat": "9g",
//     "sodium": "175mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coffee Granita with Sambuca Ice Cream and Chocolate Shavings",
//     "calories": "216kcal",
//     "protein": "1g",
//     "fat": "9g",
//     "sodium": "10mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Coffee Ice Cream and Mexican Chocolate Sundaes with Cinnamon-Sugar Tortilla Crisps",
//     "calories": "534kcal",
//     "protein": "6g",
//     "fat": "38g",
//     "sodium": "139mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coffee mix, instant,  dry powder, Cafe Menu Cappuccino, Nescafe",
//     "calories": "424.29kcal",
//     "protein": "14.33g",
//     "fat": "23g",
//     "sodium": "720mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coffee S'mores Pie",
//     "calories": "449kcal",
//     "protein": "4g",
//     "fat": "29g",
//     "sodium": "66mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coffee substitute, cereal grain beverage, dry powder",
//     "calories": "379.74kcal",
//     "protein": "5.5g",
//     "fat": "3.4g",
//     "sodium": "73mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coffee whitener, powder",
//     "calories": "557.08kcal",
//     "protein": "4.81g",
//     "fat": "35.5g",
//     "sodium": "181mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coffee, Chocolate, and Marshmallow Sundaes",
//     "calories": "906kcal",
//     "protein": "11g",
//     "fat": "63g",
//     "sodium": "100mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coffee, Hazelnut and Raspberry Torte",
//     "calories": "710kcal",
//     "protein": "11g",
//     "fat": "33g",
//     "sodium": "184mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coffee, instant, decaffeinated, dry powder, composite",
//     "calories": "150.64kcal",
//     "protein": "22.46g",
//     "fat": "1g",
//     "sodium": "40mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coffee, instant, dry powder, composite",
//     "calories": "149.75kcal",
//     "protein": "22.46g",
//     "fat": "0.9g",
//     "sodium": "40mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coffee-Bean Granita",
//     "calories": "133kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coffee-Braised Short Ribs with Ancho Chile",
//     "calories": "1564kcal",
//     "protein": "56g",
//     "fat": "142g",
//     "sodium": "275mg",
//     "status": "false1"
//   },
//   {
//     "food": "Coke-Braised Pork Carnitas",
//     "calories": "1388kcal",
//     "protein": "54g",
//     "fat": "123g",
//     "sodium": "207mg",
//     "status": "false1"
//   },
//   {
//     "food": "Colcannon",
//     "calories": "389kcal",
//     "protein": "9g",
//     "fat": "14g",
//     "sodium": "61mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cold Asian Noodle Salad with Chicken and Cucumbers",
//     "calories": "663kcal",
//     "protein": "54g",
//     "fat": "13g",
//     "sodium": "1795mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cold Avocado and Tomato Soup",
//     "calories": "159kcal",
//     "protein": "5g",
//     "fat": "8g",
//     "sodium": "159mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cold Avocado Corn Soup With Cilantro Oil",
//     "calories": "270kcal",
//     "protein": "3g",
//     "fat": "24g",
//     "sodium": "799mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cold Brew Plum Iced Tea",
//     "calories": "128kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cold Cucumber and Yellow Pepper Soup with Crab Meat and Chives",
//     "calories": "110kcal",
//     "protein": "9g",
//     "fat": "3g",
//     "sodium": "235mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cold Cucumber Mint Soup",
//     "calories": "153kcal",
//     "protein": "5g",
//     "fat": "10g",
//     "sodium": "53mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cold Cucumber Soup with Mint",
//     "calories": "203kcal",
//     "protein": "6g",
//     "fat": "14g",
//     "sodium": "156mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cold Curried Carrot and Coconut Milk Soup",
//     "calories": "203kcal",
//     "protein": "5g",
//     "fat": "15g",
//     "sodium": "118mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cold Curried Pea and Buttermilk Soup",
//     "calories": "205kcal",
//     "protein": "11g",
//     "fat": "7g",
//     "sodium": "512mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cold Garlic Potato Soup",
//     "calories": "368kcal",
//     "protein": "12g",
//     "fat": "19g",
//     "sodium": "451mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cold Honeydew and Mint Soup in Cantaloupe",
//     "calories": "162kcal",
//     "protein": "2g",
//     "fat": "0g",
//     "sodium": "60mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cold Minted Pea and Buttermilk Soup",
//     "calories": "189kcal",
//     "protein": "14g",
//     "fat": "3g",
//     "sodium": "502mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cold Mussels with Tomato Coriander Sauce",
//     "calories": "294kcal",
//     "protein": "23g",
//     "fat": "15g",
//     "sodium": "628mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cold Noodle Salad with Ponzu Sauce",
//     "calories": "200kcal",
//     "protein": "8g",
//     "fat": "3g",
//     "sodium": "486mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cold Pea Soup With Herbed Oil Swirl",
//     "calories": "235kcal",
//     "protein": "12g",
//     "fat": "10g",
//     "sodium": "582mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cold Poached Chicken with Chinese Garlic Sauce",
//     "calories": "442kcal",
//     "protein": "37g",
//     "fat": "21g",
//     "sodium": "561mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cold Poached Chicken with Ginger Scallion Oil",
//     "calories": "529kcal",
//     "protein": "36g",
//     "fat": "32g",
//     "sodium": "122mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cold Poached Salmon with Mustard-Lime Sauce",
//     "calories": "591kcal",
//     "protein": "45g",
//     "fat": "37g",
//     "sodium": "322mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cold Sesame Egg Noodles",
//     "calories": "432kcal",
//     "protein": "10g",
//     "fat": "20g",
//     "sodium": "1845mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cold Sesame Spinach",
//     "calories": "61kcal",
//     "protein": "5g",
//     "fat": "3g",
//     "sodium": "190mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cold Soba Noodles with Miso and Smoked Tofu",
//     "calories": "304kcal",
//     "protein": "14g",
//     "fat": "2g",
//     "sodium": "1158mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cold Tomato and Sour Cream Soup",
//     "calories": "120kcal",
//     "protein": "3g",
//     "fat": "8g",
//     "sodium": "418mg",
//     "status": "false1"
//   },
//   {
//     "food": "Corn and Bacon Chowder",
//     "calories": "358kcal",
//     "protein": "12g",
//     "fat": "19g",
//     "sodium": "627mg",
//     "status": "false1"
//   },
//   {
//     "food": "Corn and Bacon Pie",
//     "calories": "587kcal",
//     "protein": "18g",
//     "fat": "40g",
//     "sodium": "684mg",
//     "status": "false1"
//   },
//   {
//     "food": "Corn and Basil Egg Roulade with Yellow Tomato Coulis",
//     "calories": "323kcal",
//     "protein": "8g",
//     "fat": "31g",
//     "sodium": "296mg",
//     "status": "false1"
//   },
//   {
//     "food": "Corn and Bell Pepper Chowder",
//     "calories": "386kcal",
//     "protein": "10g",
//     "fat": "14g",
//     "sodium": "57mg",
//     "status": "false1"
//   },
//   {
//     "food": "Corn and Bell Pepper Salad",
//     "calories": "265kcal",
//     "protein": "6g",
//     "fat": "16g",
//     "sodium": "1192mg",
//     "status": "false1"
//   },
//   {
//     "food": "Corn and Black Bean Tortilla Cakes",
//     "calories": "332kcal",
//     "protein": "18g",
//     "fat": "21g",
//     "sodium": "472mg",
//     "status": "false1"
//   },
//   {
//     "food": "Corn and Cheese Soft Tacos",
//     "calories": "966kcal",
//     "protein": "33g",
//     "fat": "43g",
//     "sodium": "1594mg",
//     "status": "false1"
//   },
//   {
//     "food": "Corn and Chicken Poblano Braised Chicken",
//     "calories": "2193kcal",
//     "protein": "180g",
//     "fat": "152g",
//     "sodium": "697mg",
//     "status": "false1"
//   },
//   {
//     "food": "Corn and Fregola with Grilled Halloumi Cheese",
//     "calories": "338kcal",
//     "protein": "10g",
//     "fat": "19g",
//     "sodium": "274mg",
//     "status": "false1"
//   },
//   {
//     "food": "Corn and Haricots Verts in Lime Shallot Butter",
//     "calories": "119kcal",
//     "protein": "4g",
//     "fat": "5g",
//     "sodium": "403mg",
//     "status": "false1"
//   },
//   {
//     "food": "Corn and Herb-Bread Sausage Stuffing",
//     "calories": "284kcal",
//     "protein": "11g",
//     "fat": "10g",
//     "sodium": "867mg",
//     "status": "false1"
//   },
//   {
//     "food": "Corn Bread Stuffing",
//     "calories": "264kcal",
//     "protein": "7g",
//     "fat": "23g",
//     "sodium": "175mg",
//     "status": "false1"
//   },
//   {
//     "food": "Corn Bread Succotash Stuffing",
//     "calories": "150kcal",
//     "protein": "4g",
//     "fat": "9g",
//     "sodium": "212mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Corn Bread with Basil, Roasted Red Peppers and Monterey Jack Cheese",
//     "calories": "326kcal",
//     "protein": "10g",
//     "fat": "14g",
//     "sodium": "599mg",
//     "status": "false1"
//   },
//   {
//     "food": "Corn Cakes",
//     "calories": "137kcal",
//     "protein": "5g",
//     "fat": "6g",
//     "sodium": "364mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cranberry Winter Pudding",
//     "calories": "312kcal",
//     "protein": "6g",
//     "fat": "2g",
//     "sodium": "255mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cream Gin Fizz",
//     "calories": "202kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "25mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cream of Artichoke and Jerusalem Artichoke Soup",
//     "calories": "257kcal",
//     "protein": "9g",
//     "fat": "13g",
//     "sodium": "607mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cream of Broccoli Soup",
//     "calories": "342kcal",
//     "protein": "13g",
//     "fat": "22g",
//     "sodium": "442mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cream of Broccoli Soup with Wild Mushrooms",
//     "calories": "533kcal",
//     "protein": "18g",
//     "fat": "38g",
//     "sodium": "2018mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cream of Carrot, White Bean and Pear Soup",
//     "calories": "646kcal",
//     "protein": "27g",
//     "fat": "24g",
//     "sodium": "348mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cream of Cashew Pea Soup",
//     "calories": "954kcal",
//     "protein": "9g",
//     "fat": "29g",
//     "sodium": "18mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cream of Cauliflower and Stilton Soup",
//     "calories": "307kcal",
//     "protein": "10g",
//     "fat": "20g",
//     "sodium": "1031mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cream of Cope's Corn Soup with Shrimp and Wild Mushrooms",
//     "calories": "320kcal",
//     "protein": "13g",
//     "fat": "23g",
//     "sodium": "545mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cream of Jerusalem Artichoke and Celery Soup",
//     "calories": "311kcal",
//     "protein": "11g",
//     "fat": "12g",
//     "sodium": "367mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cream of Jerusalem Artichoke Soup",
//     "calories": "192kcal",
//     "protein": "4g",
//     "fat": "12g",
//     "sodium": "514mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cream of Lentil and Chestnut Soup with Foie Gras Custard",
//     "calories": "787kcal",
//     "protein": "9g",
//     "fat": "71g",
//     "sodium": "1064mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cream of Mushroom Soup",
//     "calories": "173kcal",
//     "protein": "9g",
//     "fat": "9g",
//     "sodium": "479mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cream of Onion Soup",
//     "calories": "163kcal",
//     "protein": "6g",
//     "fat": "8g",
//     "sodium": "70mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cream of Potato Soup",
//     "calories": "116kcal",
//     "protein": "5g",
//     "fat": "5g",
//     "sodium": "585mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cream of Potato Soup with Watercress",
//     "calories": "375kcal",
//     "protein": "13g",
//     "fat": "18g",
//     "sodium": "239mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamed Corn with Bacon",
//     "calories": "337kcal",
//     "protein": "8g",
//     "fat": "28g",
//     "sodium": "302mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamed Corn with Basil",
//     "calories": "160kcal",
//     "protein": "5g",
//     "fat": "7g",
//     "sodium": "412mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamed Crab with Artichokes",
//     "calories": "359kcal",
//     "protein": "25g",
//     "fat": "22g",
//     "sodium": "1412mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamed Leeks with Tarragon, Tomato, and Bacon",
//     "calories": "333kcal",
//     "protein": "10g",
//     "fat": "17g",
//     "sodium": "313mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamed Lemon Spinach",
//     "calories": "183kcal",
//     "protein": "9g",
//     "fat": "11g",
//     "sodium": "295mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamed Mushrooms, Onions, and Brussels Sprouts",
//     "calories": "310kcal",
//     "protein": "10g",
//     "fat": "22g",
//     "sodium": "238mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamed Onions",
//     "calories": "197kcal",
//     "protein": "3g",
//     "fat": "14g",
//     "sodium": "19mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamed Oysters and Mushrooms on Toast",
//     "calories": "629kcal",
//     "protein": "39g",
//     "fat": "28g",
//     "sodium": "581mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamed Oysters on Toasted Corn Bread",
//     "calories": "695kcal",
//     "protein": "26g",
//     "fat": "15g",
//     "sodium": "1174mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamed Parsley",
//     "calories": "84kcal",
//     "protein": "1g",
//     "fat": "8g",
//     "sodium": "40mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamed Pearl Onions and Fennel with Crispy Spiced Breadcrumbs",
//     "calories": "646kcal",
//     "protein": "14g",
//     "fat": "46g",
//     "sodium": "481mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamed Peas and Onions",
//     "calories": "209kcal",
//     "protein": "9g",
//     "fat": "8g",
//     "sodium": "513mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamed Peas with Mint",
//     "calories": "202kcal",
//     "protein": "5g",
//     "fat": "15g",
//     "sodium": "116mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamed Rutabaga and Sweet Potato",
//     "calories": "595kcal",
//     "protein": "8g",
//     "fat": "31g",
//     "sodium": "176mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamed Smoked Salmon and Leeks",
//     "calories": "274kcal",
//     "protein": "10g",
//     "fat": "18g",
//     "sodium": "321mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamed Spinach Deluxe",
//     "calories": "143kcal",
//     "protein": "6g",
//     "fat": "9g",
//     "sodium": "213mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamed Spinach Dip",
//     "calories": "171kcal",
//     "protein": "4g",
//     "fat": "16g",
//     "sodium": "89mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Coleslaw",
//     "calories": "154kcal",
//     "protein": "2g",
//     "fat": "13g",
//     "sodium": "268mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Coleslaw with Chives and Shallots",
//     "calories": "245kcal",
//     "protein": "3g",
//     "fat": "19g",
//     "sodium": "518mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Corn Soup with Red Bell Pepper",
//     "calories": "340kcal",
//     "protein": "10g",
//     "fat": "16g",
//     "sodium": "363mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Corn with Chives",
//     "calories": "145kcal",
//     "protein": "4g",
//     "fat": "7g",
//     "sodium": "494mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Corn-Studded Polenta",
//     "calories": "395kcal",
//     "protein": "11g",
//     "fat": "12g",
//     "sodium": "657mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Dill Dressing",
//     "calories": "592kcal",
//     "protein": "3g",
//     "fat": "63g",
//     "sodium": "557mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Fennel and Greens Soup",
//     "calories": "335kcal",
//     "protein": "13g",
//     "fat": "29g",
//     "sodium": "111mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Fennel and Potato Soup",
//     "calories": "206kcal",
//     "protein": "6g",
//     "fat": "12g",
//     "sodium": "172mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Fettuccine with Bacon",
//     "calories": "1802kcal",
//     "protein": "53g",
//     "fat": "135g",
//     "sodium": "1305mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Creamy Fettuccine with Prosciutto, Asparagus, Mushrooms, and Peas",
//     "calories": "525kcal",
//     "protein": "23g",
//     "fat": "19g",
//     "sodium": "658mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Forest Mushroom Soup",
//     "calories": "207kcal",
//     "protein": "6g",
//     "fat": "15g",
//     "sodium": "39mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Garlic Pasta with Mushrooms and Prosciutto",
//     "calories": "598kcal",
//     "protein": "31g",
//     "fat": "18g",
//     "sodium": "1042mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Grits with Rosemary Bacon",
//     "calories": "497kcal",
//     "protein": "16g",
//     "fat": "31g",
//     "sodium": "528mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Herbed Horseradish Sauce",
//     "calories": "246kcal",
//     "protein": "2g",
//     "fat": "19g",
//     "sodium": "205mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Horseradish Potato Salad",
//     "calories": "341kcal",
//     "protein": "5g",
//     "fat": "18g",
//     "sodium": "453mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Scrambled Eggs with Herbs",
//     "calories": "266kcal",
//     "protein": "12g",
//     "fat": "23g",
//     "sodium": "217mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Scrambled Eggs with Spinach",
//     "calories": "237kcal",
//     "protein": "16g",
//     "fat": "18g",
//     "sodium": "261mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Shellfish and Root Vegetable Stew",
//     "calories": "595kcal",
//     "protein": "48g",
//     "fat": "24g",
//     "sodium": "2229mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Shrimp Crostini",
//     "calories": "60kcal",
//     "protein": "3g",
//     "fat": "5g",
//     "sodium": "155mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Shrimp Grits with Prosciutto",
//     "calories": "592kcal",
//     "protein": "32g",
//     "fat": "48g",
//     "sodium": "1449mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Slaw",
//     "calories": "207kcal",
//     "protein": "3g",
//     "fat": "17g",
//     "sodium": "448mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Southwestern Potato Salad",
//     "calories": "308kcal",
//     "protein": "7g",
//     "fat": "14g",
//     "sodium": "394mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Stone-Ground Grits",
//     "calories": "155kcal",
//     "protein": "3g",
//     "fat": "6g",
//     "sodium": "315mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Tofu Salad",
//     "calories": "352kcal",
//     "protein": "16g",
//     "fat": "31g",
//     "sodium": "488mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Tomato Mint Soup",
//     "calories": "536kcal",
//     "protein": "10g",
//     "fat": "54g",
//     "sodium": "151mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Turnip Soup with Carrot Julienne",
//     "calories": "532kcal",
//     "protein": "17g",
//     "fat": "18g",
//     "sodium": "767mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy White Bean and Chorizo Soup",
//     "calories": "483kcal",
//     "protein": "22g",
//     "fat": "35g",
//     "sodium": "925mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creamy Zucchini Soup",
//     "calories": "80kcal",
//     "protein": "5g",
//     "fat": "4g",
//     "sodium": "92mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creme fraiche, composite",
//     "calories": "341.18kcal",
//     "protein": "2.65g",
//     "fat": "36.2g",
//     "sodium": "34mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creme fraiche, light, composite",
//     "calories": "170.8kcal",
//     "protein": "3.19g",
//     "fat": "16.3g",
//     "sodium": "38mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cremini Meringue Mushrooms",
//     "calories": "50kcal",
//     "protein": "1g",
//     "fat": "2g",
//     "sodium": "22mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creole Chicken and Okra Gumbo",
//     "calories": "487kcal",
//     "protein": "26g",
//     "fat": "35g",
//     "sodium": "234mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creole Crab Dip",
//     "calories": "273kcal",
//     "protein": "18g",
//     "fat": "21g",
//     "sodium": "717mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creole Nectarines",
//     "calories": "453kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creole Seafood Seasoning",
//     "calories": "130kcal",
//     "protein": "6g",
//     "fat": "4g",
//     "sodium": "328mg",
//     "status": "false1"
//   },
//   {
//     "food": "Creole Seasoning",
//     "calories": "70kcal",
//     "protein": "3g",
//     "fat": "2g",
//     "sodium": "2875mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crepes Directoire",
//     "calories": "517kcal",
//     "protein": "11g",
//     "fat": "15g",
//     "sodium": "113mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crepes with Caramel Sauce and Toasted Pecans",
//     "calories": "550kcal",
//     "protein": "13g",
//     "fat": "30g",
//     "sodium": "301mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crepes with Homemade Fruit Syrup",
//     "calories": "262kcal",
//     "protein": "8g",
//     "fat": "8g",
//     "sodium": "79mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crimson Coleslaw",
//     "calories": "119kcal",
//     "protein": "2g",
//     "fat": "9g",
//     "sodium": "50mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crimson Royale",
//     "calories": "170kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crisp Braised Pork Shoulder",
//     "calories": "890kcal",
//     "protein": "59g",
//     "fat": "68g",
//     "sodium": "1027mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crisp Breast of Chicken with Parsnip Gnocchi",
//     "calories": "432kcal",
//     "protein": "9g",
//     "fat": "31g",
//     "sodium": "399mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crisp Chicken-Fried Steak Strips",
//     "calories": "1331kcal",
//     "protein": "48g",
//     "fat": "98g",
//     "sodium": "2012mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crisp Chipotle Shrimp with Corn and Scallions",
//     "calories": "410kcal",
//     "protein": "22g",
//     "fat": "19g",
//     "sodium": "1282mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crisp Chocolate Marshmallow Squares",
//     "calories": "38kcal",
//     "protein": "1g",
//     "fat": "2g",
//     "sodium": "40mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crisp Coconut Chicken with Roasted Red Bell Pepper Sauce",
//     "calories": "669kcal",
//     "protein": "35g",
//     "fat": "46g",
//     "sodium": "382mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crisp Curried Shrimp",
//     "calories": "289kcal",
//     "protein": "25g",
//     "fat": "15g",
//     "sodium": "973mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crisp Curry Chicken Wings with Coriander Cucumber Sauce",
//     "calories": "109kcal",
//     "protein": "9g",
//     "fat": "7g",
//     "sodium": "149mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crisp Eggplant Chips",
//     "calories": "1119kcal",
//     "protein": "3g",
//     "fat": "111g",
//     "sodium": "230mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crisp Fried Fish Fillets Oriental",
//     "calories": "430kcal",
//     "protein": "45g",
//     "fat": "13g",
//     "sodium": "2079mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crisp Okra in Yogurt Sauce",
//     "calories": "291kcal",
//     "protein": "4g",
//     "fat": "27g",
//     "sodium": "427mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crisp Potato and Bacon Casserole",
//     "calories": "270kcal",
//     "protein": "7g",
//     "fat": "14g",
//     "sodium": "489mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crisp Potato Pancakes with Goat Cheese on Mixed Greens",
//     "calories": "319kcal",
//     "protein": "9g",
//     "fat": "21g",
//     "sodium": "446mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crisp Rosemary-Parmesan Garlic Bread",
//     "calories": "173kcal",
//     "protein": "5g",
//     "fat": "16g",
//     "sodium": "180mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crisp Spiced Nuts",
//     "calories": "352kcal",
//     "protein": "7g",
//     "fat": "31g",
//     "sodium": "170mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crisp Wild Rice Griddlecakes with Golden Caviar and Sour Cream",
//     "calories": "33kcal",
//     "protein": "1g",
//     "fat": "2g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crisp-Fried Onions",
//     "calories": "197kcal",
//     "protein": "1g",
//     "fat": "17g",
//     "sodium": "5mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crispy Apple-Oat Fritters",
//     "calories": "247kcal",
//     "protein": "3g",
//     "fat": "11g",
//     "sodium": "250mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crispy Asian Chicken and Watercress Salad",
//     "calories": "1193kcal",
//     "protein": "43g",
//     "fat": "99g",
//     "sodium": "1384mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crispy Baby Yukon Gold Potatoes",
//     "calories": "222kcal",
//     "protein": "5g",
//     "fat": "5g",
//     "sodium": "491mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crispy Bruschetta with Goat Cheese, Tomatoes and Mint",
//     "calories": "136kcal",
//     "protein": "5g",
//     "fat": "11g",
//     "sodium": "116mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crispy Chicken Salad with Citrus Dressing",
//     "calories": "130kcal",
//     "protein": "7g",
//     "fat": "5g",
//     "sodium": "621mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crispy Chicken Sandwich with Buttermilk Slaw and Herbed Mayo",
//     "calories": "2448kcal",
//     "protein": "113g",
//     "fat": "188g",
//     "sodium": "936mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crispy Chicken Stew With Lemon, Artichokes, Capers, and Olives",
//     "calories": "676kcal",
//     "protein": "42g",
//     "fat": "48g",
//     "sodium": "1216mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crispy Chicken Wings",
//     "calories": "582kcal",
//     "protein": "45g",
//     "fat": "41g",
//     "sodium": "1647mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crispy Chicken with Shallots",
//     "calories": "1045kcal",
//     "protein": "82g",
//     "fat": "71g",
//     "sodium": "797mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crispy Cornmeal-Bacon Waffles",
//     "calories": "480kcal",
//     "protein": "14g",
//     "fat": "26g",
//     "sodium": "680mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crispy Crepes with Dulce de Leche Sauce",
//     "calories": "275kcal",
//     "protein": "4g",
//     "fat": "24g",
//     "sodium": "107mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crispy Curry-Roasted Chickpeas",
//     "calories": "239kcal",
//     "protein": "10g",
//     "fat": "9g",
//     "sodium": "667mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crispy Duck Breasts with Pear and Green Peppercorn Sauce",
//     "calories": "289kcal",
//     "protein": "34g",
//     "fat": "8g",
//     "sodium": "101mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crispy Fish with Sweet-and-Sour Sauce",
//     "calories": "739kcal",
//     "protein": "25g",
//     "fat": "45g",
//     "sodium": "637mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crispy Fried Shallots",
//     "calories": "202kcal",
//     "protein": "2g",
//     "fat": "15g",
//     "sodium": "12mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crispy Garlic Chips",
//     "calories": "482kcal",
//     "protein": "0g",
//     "fat": "54g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crispy Garlic Risotto Cakes",
//     "calories": "238kcal",
//     "protein": "4g",
//     "fat": "11g",
//     "sodium": "75mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crispy Gnocchi With Littleneck Clams",
//     "calories": "791kcal",
//     "protein": "44g",
//     "fat": "34g",
//     "sodium": "2354mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crispy Skate with Cauliflower, Bacon, Capers, and Croutons",
//     "calories": "879kcal",
//     "protein": "46g",
//     "fat": "57g",
//     "sodium": "959mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crispy Snapper Tacos with Avocado and Tropical-Fruit Salsa",
//     "calories": "1415kcal",
//     "protein": "64g",
//     "fat": "124g",
//     "sodium": "430mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crispy Spiced Potato Wedges",
//     "calories": "934kcal",
//     "protein": "14g",
//     "fat": "65g",
//     "sodium": "6369mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Crispy Spring Rolls with Spicy Tofu, Vegetables, and Toasted Nuts",
//     "calories": "74kcal",
//     "protein": "3g",
//     "fat": "4g",
//     "sodium": "222mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Crispy Za'atar Fish with Israeli Couscous, Swiss Chard, and Feta",
//     "calories": "280kcal",
//     "protein": "18g",
//     "fat": "15g",
//     "sodium": "564mg",
//     "status": "false1"
//   },
//   {
//     "food": "Croatian Moussaka",
//     "calories": "1303kcal",
//     "protein": "42g",
//     "fat": "102g",
//     "sodium": "713mg",
//     "status": "false1"
//   },
//   {
//     "food": "Croissant Egg Sandwiches",
//     "calories": "375kcal",
//     "protein": "18g",
//     "fat": "26g",
//     "sodium": "681mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Croissant Steak Sandwiches with Caramelized Onions and Horseradish Mayonnaise",
//     "calories": "3155kcal",
//     "protein": "212g",
//     "fat": "231g",
//     "sodium": "1183mg",
//     "status": "false1"
//   },
//   {
//     "food": "Croissant, plain, composite",
//     "calories": "403.87kcal",
//     "protein": "10.38g",
//     "fat": "22.48g",
//     "sodium": "380mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crown Roast of Lamb with Shallots, Mustard and Mint",
//     "calories": "2476kcal",
//     "protein": "27g",
//     "fat": "246g",
//     "sodium": "177mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Crown Roast of Pork with Apple and Pork Stuffing and Cider Gravy",
//     "calories": "769kcal",
//     "protein": "72g",
//     "fat": "49g",
//     "sodium": "549mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crown Roast of Pork with Apple Stuffing",
//     "calories": "2164kcal",
//     "protein": "103g",
//     "fat": "163g",
//     "sodium": "1480mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crown Roast of Pork with Lady Apples and Shallots",
//     "calories": "1104kcal",
//     "protein": "64g",
//     "fat": "48g",
//     "sodium": "9478mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crown Roast of Pork with Onion and Bread-Crumb Stuffing",
//     "calories": "1281kcal",
//     "protein": "97g",
//     "fat": "90g",
//     "sodium": "2118mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crunchy String Bean Salad with Red Onion and Prosciutto",
//     "calories": "223kcal",
//     "protein": "6g",
//     "fat": "18g",
//     "sodium": "737mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crunchy Wasabi Salmon with Lime",
//     "calories": "608kcal",
//     "protein": "51g",
//     "fat": "38g",
//     "sodium": "166mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crunchy Wasabi-Crusted Fish with Red-Cabbage Slaw",
//     "calories": "460kcal",
//     "protein": "37g",
//     "fat": "26g",
//     "sodium": "1023mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crushed-Blueberry Sauce",
//     "calories": "196kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "107mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crushed-Mint Lemonade",
//     "calories": "283kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "10mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crustless Mini Quiches",
//     "calories": "264kcal",
//     "protein": "15g",
//     "fat": "20g",
//     "sodium": "522mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crustless Quiche",
//     "calories": "521kcal",
//     "protein": "29g",
//     "fat": "39g",
//     "sodium": "493mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crusty Mustard-Dill Meat Loaf",
//     "calories": "453kcal",
//     "protein": "20g",
//     "fat": "7g",
//     "sodium": "1232mg",
//     "status": "false1"
//   },
//   {
//     "food": "Crystallized-Ginger Spice Bars",
//     "calories": "101kcal",
//     "protein": "1g",
//     "fat": "4g",
//     "sodium": "58mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber and Tomato Salad with Buttermilk Dressing",
//     "calories": "320kcal",
//     "protein": "3g",
//     "fat": "30g",
//     "sodium": "292mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber and Tomato Tzatziki",
//     "calories": "93kcal",
//     "protein": "5g",
//     "fat": "4g",
//     "sodium": "60mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber and Watermelon Salad with Hoisin-Lime Dressing",
//     "calories": "98kcal",
//     "protein": "3g",
//     "fat": "4g",
//     "sodium": "134mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber Avocado Soup",
//     "calories": "114kcal",
//     "protein": "3g",
//     "fat": "8g",
//     "sodium": "70mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber Carrot Salad",
//     "calories": "32kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "363mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber Cups Filled with Herbed Yogurt and Smoked Salmon",
//     "calories": "61kcal",
//     "protein": "4g",
//     "fat": "1g",
//     "sodium": "61mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber Dill Salad",
//     "calories": "39kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "46mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber Dill Spears and Chips",
//     "calories": "32kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "2267mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber Feta Salad Dressing",
//     "calories": "211kcal",
//     "protein": "11g",
//     "fat": "14g",
//     "sodium": "551mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber Gin Cocktail",
//     "calories": "230kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber Goat Cheese Spread",
//     "calories": "159kcal",
//     "protein": "11g",
//     "fat": "12g",
//     "sodium": "261mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber Horseradish Sauce",
//     "calories": "133kcal",
//     "protein": "2g",
//     "fat": "12g",
//     "sodium": "92mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber Mint Tea Sandwiches",
//     "calories": "59kcal",
//     "protein": "2g",
//     "fat": "3g",
//     "sodium": "71mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber Nori Rolls",
//     "calories": "268kcal",
//     "protein": "5g",
//     "fat": "1g",
//     "sodium": "88mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber Raita",
//     "calories": "87kcal",
//     "protein": "5g",
//     "fat": "4g",
//     "sodium": "59mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber Salad",
//     "calories": "40kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber Salad with Mustard Dressing",
//     "calories": "84kcal",
//     "protein": "3g",
//     "fat": "5g",
//     "sodium": "380mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Cucumber, Sweet Onion, and Mint with Curried Mayonnaise on Peasant Bread",
//     "calories": "399kcal",
//     "protein": "8g",
//     "fat": "24g",
//     "sodium": "473mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber, Tomato and Feta Salad",
//     "calories": "208kcal",
//     "protein": "5g",
//     "fat": "17g",
//     "sodium": "347mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber, Tomato, and Pineapple Salad with Asian Dressing",
//     "calories": "100kcal",
//     "protein": "1g",
//     "fat": "5g",
//     "sodium": "135mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber-Basil Egg Salad",
//     "calories": "215kcal",
//     "protein": "6g",
//     "fat": "20g",
//     "sodium": "250mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber-Daikon Relish",
//     "calories": "113kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "654mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber-Dill Sauce",
//     "calories": "195kcal",
//     "protein": "3g",
//     "fat": "18g",
//     "sodium": "633mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber-Dill Soup with Scallions",
//     "calories": "145kcal",
//     "protein": "9g",
//     "fat": "3g",
//     "sodium": "1528mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber-Lime Agua",
//     "calories": "31kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber-Lime Paletas",
//     "calories": "116kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "24mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber-Mint Raita",
//     "calories": "46kcal",
//     "protein": "3g",
//     "fat": "2g",
//     "sodium": "30mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumbers and Dill in Horseradish Cream",
//     "calories": "96kcal",
//     "protein": "2g",
//     "fat": "8g",
//     "sodium": "359mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumbers in Yogurt",
//     "calories": "143kcal",
//     "protein": "8g",
//     "fat": "7g",
//     "sodium": "815mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber-Watercress Relish",
//     "calories": "68kcal",
//     "protein": "1g",
//     "fat": "5g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cucumber-Yogurt Salad with Mint",
//     "calories": "62kcal",
//     "protein": "2g",
//     "fat": "3g",
//     "sodium": "603mg",
//     "status": "false1"
//   },
//   {
//     "food": "Culross",
//     "calories": "138kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cumin and Chive Stuffed Eggs",
//     "calories": "195kcal",
//     "protein": "10g",
//     "fat": "16g",
//     "sodium": "176mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cumin and Coriander Spiced Chick-Pea Salad",
//     "calories": "292kcal",
//     "protein": "9g",
//     "fat": "15g",
//     "sodium": "502mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cumin Coleslaw",
//     "calories": "146kcal",
//     "protein": "2g",
//     "fat": "12g",
//     "sodium": "130mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cumin Crust Rub",
//     "calories": "64kcal",
//     "protein": "3g",
//     "fat": "3g",
//     "sodium": "25mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cumin Herb Rice Pilaf",
//     "calories": "194kcal",
//     "protein": "4g",
//     "fat": "5g",
//     "sodium": "392mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cumin Pork Roast with Wild Mushroom Sauce",
//     "calories": "480kcal",
//     "protein": "43g",
//     "fat": "30g",
//     "sodium": "128mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Cumin Seed Roasted Cauliflower with Salted Yogurt, Mint, and Pomegranate Seeds",
//     "calories": "230kcal",
//     "protein": "8g",
//     "fat": "15g",
//     "sodium": "605mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cumin Steak with Rajas",
//     "calories": "311kcal",
//     "protein": "23g",
//     "fat": "20g",
//     "sodium": "97mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cumin Tortilla Crisps",
//     "calories": "222kcal",
//     "protein": "4g",
//     "fat": "9g",
//     "sodium": "45mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cumin-Chile Lamb Kebabs With Garlic Yogurt",
//     "calories": "495kcal",
//     "protein": "30g",
//     "fat": "38g",
//     "sodium": "146mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cumin-Crusted Lamb with Apricots",
//     "calories": "728kcal",
//     "protein": "60g",
//     "fat": "46g",
//     "sodium": "187mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cumin-Crusted Monster Pork Chop with Peach Chipotle Salsa",
//     "calories": "411kcal",
//     "protein": "18g",
//     "fat": "33g",
//     "sodium": "867mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cumin-Dusted Pork Cutlets with Citrus Pan Sauce",
//     "calories": "1592kcal",
//     "protein": "136g",
//     "fat": "107g",
//     "sodium": "927mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cumin-Marinated Chicken Wings",
//     "calories": "478kcal",
//     "protein": "42g",
//     "fat": "32g",
//     "sodium": "860mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cumin-Pecan Corn Bread",
//     "calories": "274kcal",
//     "protein": "5g",
//     "fat": "15g",
//     "sodium": "288mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cumin-Roasted Potatoes with Caviar and Smoked Salmon",
//     "calories": "62kcal",
//     "protein": "1g",
//     "fat": "5g",
//     "sodium": "364mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cumin-Rubbed Rib-Eye Steaks with Two Salsas",
//     "calories": "1162kcal",
//     "protein": "68g",
//     "fat": "94g",
//     "sodium": "193mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cumin-Scented Beet Latkes",
//     "calories": "143kcal",
//     "protein": "3g",
//     "fat": "12g",
//     "sodium": "308mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cumin-Scented Eggplant with Pomegranate and Cilantro",
//     "calories": "90kcal",
//     "protein": "3g",
//     "fat": "1g",
//     "sodium": "3603mg",
//     "status": "false1"
//   },
//   {
//     "food": "Cured Salmon with Fennel and Carrot Salad",
//     "calories": "222kcal",
//     "protein": "14g",
//     "fat": "12g",
//     "sodium": "9465mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curly Endive and Apple Smoked Bacon Salad",
//     "calories": "754kcal",
//     "protein": "16g",
//     "fat": "73g",
//     "sodium": "957mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Curly Endive Salad with Cranberry-Bacon Vinaigrette and Blue Cheese Pastries",
//     "calories": "748kcal",
//     "protein": "15g",
//     "fat": "52g",
//     "sodium": "623mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curly Endive Salad with Radishes, Coriander and Bacon",
//     "calories": "221kcal",
//     "protein": "3g",
//     "fat": "22g",
//     "sodium": "107mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curly Endive Salad with Warm Bacon Dressing",
//     "calories": "169kcal",
//     "protein": "5g",
//     "fat": "12g",
//     "sodium": "367mg",
//     "status": "false1"
//   },
//   {
//     "food": "Currant and Molasses Spice Cookies",
//     "calories": "48kcal",
//     "protein": "0g",
//     "fat": "2g",
//     "sodium": "29mg",
//     "status": "false1"
//   },
//   {
//     "food": "Currant Mustard-Glazed Ham",
//     "calories": "3677kcal",
//     "protein": "393g",
//     "fat": "190g",
//     "sodium": "30466mg",
//     "status": "false1"
//   },
//   {
//     "food": "Currant Pecan Stuffing",
//     "calories": "271kcal",
//     "protein": "4g",
//     "fat": "15g",
//     "sodium": "404mg",
//     "status": "false1"
//   },
//   {
//     "food": "Currant Tart",
//     "calories": "346kcal",
//     "protein": "4g",
//     "fat": "12g",
//     "sodium": "130mg",
//     "status": "false1"
//   },
//   {
//     "food": "Currant Tea Scones",
//     "calories": "323kcal",
//     "protein": "5g",
//     "fat": "14g",
//     "sodium": "295mg",
//     "status": "false1"
//   },
//   {
//     "food": "Currant, dried",
//     "calories": "296.7kcal",
//     "protein": "2.31g",
//     "fat": "0.5g",
//     "sodium": "20mg",
//     "status": "false1"
//   },
//   {
//     "food": "Currant-Lemon Pilaf",
//     "calories": "320kcal",
//     "protein": "7g",
//     "fat": "10g",
//     "sodium": "35mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Bean and Bell Pepper Soup",
//     "calories": "239kcal",
//     "protein": "13g",
//     "fat": "6g",
//     "sodium": "91mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Beef and and Sugar Snap Peas Over Rice Noodles",
//     "calories": "924kcal",
//     "protein": "32g",
//     "fat": "59g",
//     "sodium": "1945mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Beef Samosas with Mango-Papaya Chutney",
//     "calories": "97kcal",
//     "protein": "4g",
//     "fat": "3g",
//     "sodium": "59mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Beef Stew",
//     "calories": "465kcal",
//     "protein": "64g",
//     "fat": "12g",
//     "sodium": "2194mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Butternut Squash Bisque",
//     "calories": "286kcal",
//     "protein": "7g",
//     "fat": "11g",
//     "sodium": "82mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Cauliflower Apple Soup",
//     "calories": "162kcal",
//     "protein": "5g",
//     "fat": "9g",
//     "sodium": "168mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Cheddar Date Bites",
//     "calories": "62kcal",
//     "protein": "2g",
//     "fat": "4g",
//     "sodium": "63mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Chicken",
//     "calories": "653kcal",
//     "protein": "55g",
//     "fat": "35g",
//     "sodium": "284mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Chicken and Rice Salad",
//     "calories": "905kcal",
//     "protein": "37g",
//     "fat": "52g",
//     "sodium": "69mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Chicken and Vegetable Salad Mintz",
//     "calories": "591kcal",
//     "protein": "28g",
//     "fat": "38g",
//     "sodium": "350mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Chicken and Wild Rice Strudel",
//     "calories": "433kcal",
//     "protein": "11g",
//     "fat": "28g",
//     "sodium": "220mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Chicken Coconut Noodle Soup",
//     "calories": "1055kcal",
//     "protein": "38g",
//     "fat": "73g",
//     "sodium": "2586mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Fried Zucchini Blossoms",
//     "calories": "379kcal",
//     "protein": "10g",
//     "fat": "27g",
//     "sodium": "338mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Greens with Golden Onions and Cashews",
//     "calories": "586kcal",
//     "protein": "22g",
//     "fat": "48g",
//     "sodium": "319mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Ground Shrimp and Noodles",
//     "calories": "575kcal",
//     "protein": "35g",
//     "fat": "11g",
//     "sodium": "1280mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Herring on Rye Toasts",
//     "calories": "111kcal",
//     "protein": "2g",
//     "fat": "8g",
//     "sodium": "170mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Kumquat Chutney",
//     "calories": "170kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "14mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Lamb Burgers with Grilled Vegetables and Mint Raita",
//     "calories": "539kcal",
//     "protein": "27g",
//     "fat": "42g",
//     "sodium": "762mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Lentil Soup",
//     "calories": "345kcal",
//     "protein": "21g",
//     "fat": "7g",
//     "sodium": "91mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Lentil Stew with Ginger Yogurt",
//     "calories": "714kcal",
//     "protein": "37g",
//     "fat": "26g",
//     "sodium": "315mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Meatballs",
//     "calories": "470kcal",
//     "protein": "24g",
//     "fat": "35g",
//     "sodium": "1385mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Monkfish with Apple and Date Compote",
//     "calories": "750kcal",
//     "protein": "35g",
//     "fat": "21g",
//     "sodium": "205mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Parsnip Soup with Shredded Apples",
//     "calories": "560kcal",
//     "protein": "8g",
//     "fat": "44g",
//     "sodium": "105mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Pea Soup",
//     "calories": "384kcal",
//     "protein": "20g",
//     "fat": "16g",
//     "sodium": "314mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Peanut Soup",
//     "calories": "490kcal",
//     "protein": "18g",
//     "fat": "29g",
//     "sodium": "299mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Pineapple Chutney",
//     "calories": "276kcal",
//     "protein": "2g",
//     "fat": "9g",
//     "sodium": "12mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Pork Chops with Brandied Peach and Crabapple Chutney",
//     "calories": "304kcal",
//     "protein": "22g",
//     "fat": "20g",
//     "sodium": "537mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Potato and Leek Soup with Spinach",
//     "calories": "200kcal",
//     "protein": "5g",
//     "fat": "8g",
//     "sodium": "63mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Curried Potato and Spinach Soup with Onion Salsa and Minted Yogurt",
//     "calories": "408kcal",
//     "protein": "19g",
//     "fat": "24g",
//     "sodium": "114mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Potato, Spinach and Garbanzo Bean Soup",
//     "calories": "667kcal",
//     "protein": "20g",
//     "fat": "32g",
//     "sodium": "1323mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Potatoes and Onions",
//     "calories": "213kcal",
//     "protein": "3g",
//     "fat": "13g",
//     "sodium": "22mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Pumpkin Breads",
//     "calories": "701kcal",
//     "protein": "17g",
//     "fat": "23g",
//     "sodium": "1525mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Pumpkin Seeds",
//     "calories": "263kcal",
//     "protein": "13g",
//     "fat": "22g",
//     "sodium": "368mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Pumpkin Soup",
//     "calories": "177kcal",
//     "protein": "3g",
//     "fat": "9g",
//     "sodium": "37mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Red Lentil and Swiss Chard Stew with Garbanzo Beans",
//     "calories": "412kcal",
//     "protein": "24g",
//     "fat": "7g",
//     "sodium": "1198mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Red Snapper",
//     "calories": "305kcal",
//     "protein": "43g",
//     "fat": "9g",
//     "sodium": "152mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Red-Lentil Stew with Vegetables",
//     "calories": "434kcal",
//     "protein": "16g",
//     "fat": "22g",
//     "sodium": "833mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Rice Pilaf with Cashews",
//     "calories": "333kcal",
//     "protein": "6g",
//     "fat": "14g",
//     "sodium": "409mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Rice with Cauliflower, Bell Pepper, and Green Onions",
//     "calories": "414kcal",
//     "protein": "8g",
//     "fat": "12g",
//     "sodium": "495mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Rice, Bacon, and Cabbage Pilaf",
//     "calories": "413kcal",
//     "protein": "10g",
//     "fat": "20g",
//     "sodium": "370mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Sauteed Chicken Chunks with Coconut Milk",
//     "calories": "572kcal",
//     "protein": "37g",
//     "fat": "44g",
//     "sodium": "1220mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Scallop and Vegetable Chowder",
//     "calories": "350kcal",
//     "protein": "27g",
//     "fat": "10g",
//     "sodium": "1412mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Sea Bass",
//     "calories": "322kcal",
//     "protein": "35g",
//     "fat": "18g",
//     "sodium": "573mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Seafood Crepes",
//     "calories": "484kcal",
//     "protein": "30g",
//     "fat": "18g",
//     "sodium": "758mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Smoked Chicken and Wild Rice Salad",
//     "calories": "482kcal",
//     "protein": "24g",
//     "fat": "26g",
//     "sodium": "465mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Smoked Turkey and Fruit Salad",
//     "calories": "485kcal",
//     "protein": "28g",
//     "fat": "29g",
//     "sodium": "261mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Squash",
//     "calories": "164kcal",
//     "protein": "3g",
//     "fat": "3g",
//     "sodium": "600mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Stir-Fried Noodles with Vegetables",
//     "calories": "376kcal",
//     "protein": "9g",
//     "fat": "5g",
//     "sodium": "1676mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Stuffed Eggs",
//     "calories": "52kcal",
//     "protein": "3g",
//     "fat": "4g",
//     "sodium": "48mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Sweet Potato Latkes",
//     "calories": "121kcal",
//     "protein": "2g",
//     "fat": "8g",
//     "sodium": "162mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Sweet Potato Pancakes",
//     "calories": "512kcal",
//     "protein": "9g",
//     "fat": "18g",
//     "sodium": "640mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Sweet Potato Squares with Peanut Phyllo Crust",
//     "calories": "341kcal",
//     "protein": "17g",
//     "fat": "21g",
//     "sodium": "208mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Tomato Chicken Salad",
//     "calories": "858kcal",
//     "protein": "76g",
//     "fat": "51g",
//     "sodium": "254mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Turkey and Mango Salad",
//     "calories": "463kcal",
//     "protein": "35g",
//     "fat": "27g",
//     "sodium": "229mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Turkey Burgers",
//     "calories": "318kcal",
//     "protein": "26g",
//     "fat": "4g",
//     "sodium": "1346mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Turkey Salad with Cashews",
//     "calories": "1677kcal",
//     "protein": "152g",
//     "fat": "104g",
//     "sodium": "752mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried Vegetable and Tofu Couscous",
//     "calories": "454kcal",
//     "protein": "22g",
//     "fat": "18g",
//     "sodium": "40mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curried-Squash and Red-Lentil Soup",
//     "calories": "724kcal",
//     "protein": "16g",
//     "fat": "45g",
//     "sodium": "59mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curry Cumin Popovers",
//     "calories": "205kcal",
//     "protein": "8g",
//     "fat": "7g",
//     "sodium": "348mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curry Mayonnaise",
//     "calories": "202kcal",
//     "protein": "0g",
//     "fat": "22g",
//     "sodium": "167mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curry Oil",
//     "calories": "439kcal",
//     "protein": "20g",
//     "fat": "37g",
//     "sodium": "17mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curry paste, Thai red",
//     "calories": "143.74kcal",
//     "protein": "1.31g",
//     "fat": "11.8g",
//     "sodium": "980mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curry, beef korma, ready to eat, Indian, takeaway",
//     "calories": "226.31kcal",
//     "protein": "13.63g",
//     "fat": "16.91g",
//     "sodium": "340mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curry, beef madras, ready to eat,  Indian, takeaway",
//     "calories": "210.11kcal",
//     "protein": "13.25g",
//     "fat": "15.54g",
//     "sodium": "426mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curry, butter chicken, ready to eat, Indian, takeaway",
//     "calories": "178.48kcal",
//     "protein": "11.66g",
//     "fat": "12g",
//     "sodium": "383.2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curry, chicken masala, ready to eat, Indian, takeaway",
//     "calories": "153.89kcal",
//     "protein": "10.63g",
//     "fat": "9.37g",
//     "sodium": "529mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curry, chicken, green, ready to eat, Thai, takeaway",
//     "calories": "125.34kcal",
//     "protein": "8.19g",
//     "fat": "7.9g",
//     "sodium": "530.1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curry, dhal makani, ready to eat, Indian, takeaway",
//     "calories": "168.64kcal",
//     "protein": "4.56g",
//     "fat": "12.36g",
//     "sodium": "475mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curry, rogan josh, ready to eat. Indian, takeaway",
//     "calories": "163.34kcal",
//     "protein": "13.59g",
//     "fat": "10.49g",
//     "sodium": "460mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curry-and-Coconut-Milk-Grilled Pork Skewers",
//     "calories": "709kcal",
//     "protein": "20g",
//     "fat": "54g",
//     "sodium": "1759mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curry-Coconut Mussels Babalu's",
//     "calories": "1008kcal",
//     "protein": "60g",
//     "fat": "67g",
//     "sodium": "1375mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curry-Coconut Shrimp",
//     "calories": "278kcal",
//     "protein": "27g",
//     "fat": "6g",
//     "sodium": "1498mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curry-Lime Yogurt",
//     "calories": "156kcal",
//     "protein": "9g",
//     "fat": "8g",
//     "sodium": "114mg",
//     "status": "false1"
//   },
//   {
//     "food": "Curry-Spiced Citrus and Avocado Salsa",
//     "calories": "160kcal",
//     "protein": "2g",
//     "fat": "9g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Custard apple, flesh, raw",
//     "calories": "79.95kcal",
//     "protein": "1.38g",
//     "fat": "0.6g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Custard Sauce",
//     "calories": "202kcal",
//     "protein": "7g",
//     "fat": "10g",
//     "sodium": "52mg",
//     "status": "false1"
//   },
//   {
//     "food": "Custard square, baked",
//     "calories": "214.64kcal",
//     "protein": "3.97g",
//     "fat": "14.25g",
//     "sodium": "144.1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Custard, corn flour, colour & flavour, dry powder",
//     "calories": "349.44kcal",
//     "protein": "0.56g",
//     "fat": "0.7g",
//     "sodium": "320mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Custard, from milk, vanilla flavour, sugar-sweetened, regular, commercial, composite",
//     "calories": "90.82kcal",
//     "protein": "3.27g",
//     "fat": "2.7g",
//     "sodium": "44mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Custard, from milk, vanilla flavour, sugar-sweetened, thick & creamy, commercial, composite",
//     "calories": "148.73kcal",
//     "protein": "3.39g",
//     "fat": "8.2g",
//     "sodium": "51mg",
//     "status": "false1"
//   },
//   {
//     "food": "D.I.Y. Apple Mille-Feuille",
//     "calories": "385kcal",
//     "protein": "4g",
//     "fat": "24g",
//     "sodium": "109mg",
//     "status": "false1"
//   },
//   {
//     "food": "D.i.y. Drinks Bar",
//     "calories": "140kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "D.I.Y. Ricotta",
//     "calories": "170kcal",
//     "protein": "6g",
//     "fat": "13g",
//     "sodium": "555mg",
//     "status": "false1"
//   },
//   {
//     "food": "D.I.Y. Steak Sauce",
//     "calories": "113kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "347mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dai Due's Master Brined Chicken",
//     "calories": "213kcal",
//     "protein": "18g",
//     "fat": "14g",
//     "sodium": "2355mg",
//     "status": "false1"
//   },
//   {
//     "food": "Daiquiri",
//     "calories": "97kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Dairy blend, butter & canola oil, semi soft, spreadable, composite",
//     "calories": "647.84kcal",
//     "protein": "0.32g",
//     "fat": "72.4g",
//     "sodium": "450mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dark Chocolate and Pine Nut Crostata",
//     "calories": "923kcal",
//     "protein": "10g",
//     "fat": "72g",
//     "sodium": "203mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dark Chocolate Avocado Brownies",
//     "calories": "170kcal",
//     "protein": "2g",
//     "fat": "12g",
//     "sodium": "135mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dark Chocolate Brown Sugar Pound Cake with Chocolate Glaze",
//     "calories": "389kcal",
//     "protein": "5g",
//     "fat": "19g",
//     "sodium": "120mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dark Chocolate Ganache",
//     "calories": "259kcal",
//     "protein": "2g",
//     "fat": "19g",
//     "sodium": "12mg",
//     "status": "false1"
//   },
//   {
//     "food": "Darkest Chocolate Cake With Red Wine Glaze",
//     "calories": "572kcal",
//     "protein": "5g",
//     "fat": "39g",
//     "sodium": "276mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dashi",
//     "calories": "5kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "34mg",
//     "status": "false1"
//   },
//   {
//     "food": "Deep Chocolate Torte with Coffee Buttercream",
//     "calories": "320kcal",
//     "protein": "5g",
//     "fat": "20g",
//     "sodium": "50mg",
//     "status": "false1"
//   },
//   {
//     "food": "Deviled Eggs with Sun-Dried Tomatoes and Chives",
//     "calories": "65kcal",
//     "protein": "4g",
//     "fat": "5g",
//     "sodium": "45mg",
//     "status": "false1"
//   },
//   {
//     "food": "Deviled Eggs with Tarragon and Capers",
//     "calories": "109kcal",
//     "protein": "5g",
//     "fat": "9g",
//     "sodium": "126mg",
//     "status": "false1"
//   },
//   {
//     "food": "Deviled Ham",
//     "calories": "185kcal",
//     "protein": "10g",
//     "fat": "13g",
//     "sodium": "765mg",
//     "status": "false1"
//   },
//   {
//     "food": "Deviled Ham and Pecan Tea Sandwiches",
//     "calories": "76kcal",
//     "protein": "3g",
//     "fat": "4g",
//     "sodium": "329mg",
//     "status": "false1"
//   },
//   {
//     "food": "Deviled Potato Salad",
//     "calories": "415kcal",
//     "protein": "7g",
//     "fat": "24g",
//     "sodium": "536mg",
//     "status": "false1"
//   },
//   {
//     "food": "Deviled Salmon Cakes",
//     "calories": "267kcal",
//     "protein": "9g",
//     "fat": "18g",
//     "sodium": "438mg",
//     "status": "false1"
//   },
//   {
//     "food": "Devonshire Cream",
//     "calories": "170kcal",
//     "protein": "2g",
//     "fat": "14g",
//     "sodium": "27mg",
//     "status": "false1"
//   },
//   {
//     "food": "Diablo Tequila 'n' Tonic",
//     "calories": "194kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "23mg",
//     "status": "false1"
//   },
//   {
//     "food": "Diane's Six-Spice Oatmeal Raisin Cookies",
//     "calories": "85kcal",
//     "protein": "1g",
//     "fat": "3g",
//     "sodium": "33mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dick Clark's Seared Tuna Pizza",
//     "calories": "662kcal",
//     "protein": "42g",
//     "fat": "27g",
//     "sodium": "1809mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dijon and Tarragon Grilled Chicken",
//     "calories": "1134kcal",
//     "protein": "82g",
//     "fat": "84g",
//     "sodium": "514mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dill Lemon Pesto",
//     "calories": "563kcal",
//     "protein": "6g",
//     "fat": "50g",
//     "sodium": "314mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dill Pickles",
//     "calories": "84kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "2873mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dill Sauce",
//     "calories": "1152kcal",
//     "protein": "15g",
//     "fat": "120g",
//     "sodium": "607mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dill Smoked-Salmon Hash",
//     "calories": "409kcal",
//     "protein": "16g",
//     "fat": "19g",
//     "sodium": "404mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Dill-Crusted Pork Tenderloin With Farro, Pea, and Blistered Tomato Salad",
//     "calories": "772kcal",
//     "protein": "53g",
//     "fat": "32g",
//     "sodium": "1467mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dill-Cucumber Sauce",
//     "calories": "391kcal",
//     "protein": "1g",
//     "fat": "42g",
//     "sodium": "273mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dill-Cured Pork Crostini with Sweet Mustard Sauce",
//     "calories": "54kcal",
//     "protein": "5g",
//     "fat": "1g",
//     "sodium": "526mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dilled Cheddar Cheese Batter Bread",
//     "calories": "259kcal",
//     "protein": "12g",
//     "fat": "16g",
//     "sodium": "418mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dilled Feta Ricotta Spread",
//     "calories": "212kcal",
//     "protein": "11g",
//     "fat": "17g",
//     "sodium": "383mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Dilled Lobster, Avocado, and Potato Salad with Horseradish Dressing Lieber",
//     "calories": "594kcal",
//     "protein": "42g",
//     "fat": "33g",
//     "sodium": "1175mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dilled Salmon Tartare on Whole Grain Bread",
//     "calories": "289kcal",
//     "protein": "18g",
//     "fat": "20g",
//     "sodium": "594mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dilled Seafood en Papillote",
//     "calories": "353kcal",
//     "protein": "31g",
//     "fat": "23g",
//     "sodium": "294mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dilled Spinach Crepes with Avgolemono Sauce",
//     "calories": "440kcal",
//     "protein": "20g",
//     "fat": "22g",
//     "sodium": "595mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dilled Walnut and Cottage Cheese Cloverleaf Rolls",
//     "calories": "118kcal",
//     "protein": "5g",
//     "fat": "3g",
//     "sodium": "218mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dill-Pickled Vegetables",
//     "calories": "232kcal",
//     "protein": "2g",
//     "fat": "0g",
//     "sodium": "1305mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dim Sum Dipper",
//     "calories": "67kcal",
//     "protein": "5g",
//     "fat": "3g",
//     "sodium": "3670mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dip, yoghurt, cucumber",
//     "calories": "87.44kcal",
//     "protein": "5.44g",
//     "fat": "3.97g",
//     "sodium": "290mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dirty Fried Rice",
//     "calories": "471kcal",
//     "protein": "19g",
//     "fat": "27g",
//     "sodium": "786mg",
//     "status": "false1"
//   },
//   {
//     "food": "Double and By Double I Mean Triple Chocolate Cookies",
//     "calories": "312kcal",
//     "protein": "4g",
//     "fat": "19g",
//     "sodium": "214mg",
//     "status": "false1"
//   },
//   {
//     "food": "Double Celery and Potato Soup",
//     "calories": "186kcal",
//     "protein": "8g",
//     "fat": "8g",
//     "sodium": "176mg",
//     "status": "false1"
//   },
//   {
//     "food": "Double Chocolate Espresso Cookies",
//     "calories": "118kcal",
//     "protein": "1g",
//     "fat": "6g",
//     "sodium": "66mg",
//     "status": "false1"
//   },
//   {
//     "food": "Double Chocolate Torte",
//     "calories": "852kcal",
//     "protein": "10g",
//     "fat": "65g",
//     "sodium": "148mg",
//     "status": "false1"
//   },
//   {
//     "food": "Double Chocolate-Ginger Shortbread",
//     "calories": "53kcal",
//     "protein": "1g",
//     "fat": "2g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Double Lamb Chops with Ginger-Mint Crust",
//     "calories": "1126kcal",
//     "protein": "40g",
//     "fat": "102g",
//     "sodium": "552mg",
//     "status": "false1"
//   },
//   {
//     "food": "Double Olive Pasta",
//     "calories": "451kcal",
//     "protein": "16g",
//     "fat": "20g",
//     "sodium": "863mg",
//     "status": "false1"
//   },
//   {
//     "food": "Double Peach Mousse",
//     "calories": "251kcal",
//     "protein": "4g",
//     "fat": "9g",
//     "sodium": "35mg",
//     "status": "false1"
//   },
//   {
//     "food": "Double Rack of Pork with Burnt Orange-Caramel Pan Sauce",
//     "calories": "910kcal",
//     "protein": "74g",
//     "fat": "52g",
//     "sodium": "1637mg",
//     "status": "false1"
//   },
//   {
//     "food": "Double-Baked Potatoes with Mushrooms and Cheese",
//     "calories": "425kcal",
//     "protein": "13g",
//     "fat": "25g",
//     "sodium": "225mg",
//     "status": "false1"
//   },
//   {
//     "food": "Double-Chocolate Almond Brownies",
//     "calories": "893kcal",
//     "protein": "13g",
//     "fat": "56g",
//     "sodium": "140mg",
//     "status": "false1"
//   },
//   {
//     "food": "Double-Chocolate Biscotti",
//     "calories": "179kcal",
//     "protein": "3g",
//     "fat": "9g",
//     "sodium": "109mg",
//     "status": "false1"
//   },
//   {
//     "food": "Double-Corn Chowder with Chipotle and Bacon",
//     "calories": "224kcal",
//     "protein": "5g",
//     "fat": "15g",
//     "sodium": "218mg",
//     "status": "false1"
//   },
//   {
//     "food": "Double-Crust Nectarine Raspberry Pies",
//     "calories": "4063kcal",
//     "protein": "51g",
//     "fat": "175g",
//     "sodium": "1491mg",
//     "status": "false1"
//   },
//   {
//     "food": "Double-Crusted Turkey Sausage Pizza",
//     "calories": "998kcal",
//     "protein": "50g",
//     "fat": "53g",
//     "sodium": "2409mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Double-Ginger Sour Cream and Bundt Cake with Ginger-Infused Strawberries",
//     "calories": "577kcal",
//     "protein": "6g",
//     "fat": "22g",
//     "sodium": "214mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Double-Layer Vanilla-Buttermilk Cake With Raspberries and Orange Cream-Cheese Frosting",
//     "calories": "355kcal",
//     "protein": "4g",
//     "fat": "22g",
//     "sodium": "196mg",
//     "status": "false1"
//   },
//   {
//     "food": "Double-Raspberry Malt for Two",
//     "calories": "293kcal",
//     "protein": "6g",
//     "fat": "10g",
//     "sodium": "95mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Doughnut, chocolate iced, unfilled, ring shaped, ready to eat, commercial, composite",
//     "calories": "397.13kcal",
//     "protein": "6.42g",
//     "fat": "21.4g",
//     "sodium": "430mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Doughnut, cinnamon & sugar dusted, unfilled, ring shaped, ready to eat, commercial, composite",
//     "calories": "398.12kcal",
//     "protein": "5.23g",
//     "fat": "18.6g",
//     "sodium": "510mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Doughnut, cream & jam filled, assorted flavours, ready to eat, commercial, composite",
//     "calories": "321.43kcal",
//     "protein": "4.83g",
//     "fat": "19.5g",
//     "sodium": "250mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Doughnut, non-chocolate iced, unfilled, ring shaped, ready to eat, commercial, composite",
//     "calories": "394.91kcal",
//     "protein": "5.63g",
//     "fat": "18.8g",
//     "sodium": "430mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dr. Lee's Mocha Meringue",
//     "calories": "428kcal",
//     "protein": "12g",
//     "fat": "14g",
//     "sodium": "381mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dr. Lee's Red Wine Chicken Stew",
//     "calories": "590kcal",
//     "protein": "46g",
//     "fat": "30g",
//     "sodium": "11416mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dressing, Coleslaw, Eta",
//     "calories": "296.4kcal",
//     "protein": "0g",
//     "fat": "27.6g",
//     "sodium": "1060mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dressing, Coleslaw, Free, Kraft",
//     "calories": "200.47kcal",
//     "protein": "0g",
//     "fat": "11.95g",
//     "sodium": "756mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dressing, coleslaw, Lite, Eta",
//     "calories": "106.69kcal",
//     "protein": "0g",
//     "fat": "2.55g",
//     "sodium": "931mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dressing, free salad, Kraft",
//     "calories": "236.28kcal",
//     "protein": "0.63g",
//     "fat": "15.93g",
//     "sodium": "734mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dressing, French, Kraft",
//     "calories": "102.91kcal",
//     "protein": "0g",
//     "fat": "7.95g",
//     "sodium": "1150mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dressing, Italian, Kraft",
//     "calories": "142.25kcal",
//     "protein": "0.94g",
//     "fat": "12.8g",
//     "sodium": "884mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dressing, Italian, lite, Eta",
//     "calories": "25.34kcal",
//     "protein": "0g",
//     "fat": "0.45g",
//     "sodium": "1260mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dressing, Lite, Eta",
//     "calories": "136.08kcal",
//     "protein": "0g",
//     "fat": "5.58g",
//     "sodium": "642mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dressing, mayonnaise, commercial",
//     "calories": "324.03kcal",
//     "protein": "0.63g",
//     "fat": "27.6g",
//     "sodium": "607mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dressing, mayonnaise, reduced fat, commercial",
//     "calories": "284.13kcal",
//     "protein": "0.52g",
//     "fat": "21.2g",
//     "sodium": "800mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dressing, potato salad, Eta",
//     "calories": "365.38kcal",
//     "protein": "0.63g",
//     "fat": "33.55g",
//     "sodium": "819mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dressing, Potato Salad, Lite, Eta",
//     "calories": "101.76kcal",
//     "protein": "0g",
//     "fat": "2.3g",
//     "sodium": "1040mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dressing, salad, Homestyle, Eta",
//     "calories": "189.37kcal",
//     "protein": "0g",
//     "fat": "10.16g",
//     "sodium": "696mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dressing, salad, Kraft",
//     "calories": "280.9kcal",
//     "protein": "0.63g",
//     "fat": "20.4g",
//     "sodium": "716mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dressing, salad, light, Eta",
//     "calories": "37.47kcal",
//     "protein": "0g",
//     "fat": "0.1g",
//     "sodium": "1000mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dressing, seafood, Eta",
//     "calories": "255.66kcal",
//     "protein": "0.63g",
//     "fat": "23g",
//     "sodium": "1090mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dressing, thousand island, Eta",
//     "calories": "358.25kcal",
//     "protein": "0.94g",
//     "fat": "32.65g",
//     "sodium": "977mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dressing, vinaigrette",
//     "calories": "471.7kcal",
//     "protein": "0.69g",
//     "fat": "48.3g",
//     "sodium": "787mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dried Apple and Cheddar Strudel",
//     "calories": "346kcal",
//     "protein": "6g",
//     "fat": "15g",
//     "sodium": "200mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dried Cherry and Ginger Cannoli",
//     "calories": "827kcal",
//     "protein": "10g",
//     "fat": "51g",
//     "sodium": "890mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dried Cherry and Shallot Confit",
//     "calories": "188kcal",
//     "protein": "2g",
//     "fat": "6g",
//     "sodium": "15mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dried Cherry-Almond Fruitcake",
//     "calories": "450kcal",
//     "protein": "10g",
//     "fat": "18g",
//     "sodium": "200mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dried Chile Salsa",
//     "calories": "42kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "724mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dried Cod Fish Pie",
//     "calories": "832kcal",
//     "protein": "64g",
//     "fat": "23g",
//     "sodium": "6041mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dried Cranberry Compote",
//     "calories": "175kcal",
//     "protein": "0g",
//     "fat": "1g",
//     "sodium": "75mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dried Cranberry, Walnut, and Lemon Scones",
//     "calories": "307kcal",
//     "protein": "4g",
//     "fat": "13g",
//     "sodium": "298mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dried Fig, Apricot and Cherry Compote",
//     "calories": "268kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "12mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dried Figs in Red Wine",
//     "calories": "96kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dried Fruit and Almond Haroseth",
//     "calories": "224kcal",
//     "protein": "3g",
//     "fat": "4g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dried Fruit and Fresh Grapefruit Compote",
//     "calories": "232kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dried Fruit and Nut Cake",
//     "calories": "285kcal",
//     "protein": "6g",
//     "fat": "14g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dried Fruit Compote",
//     "calories": "246kcal",
//     "protein": "2g",
//     "fat": "0g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dried Fruit Compote with Port, Cinnamon, and Ginger",
//     "calories": "136kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "20mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dried Fruit Stewed with Brown Sugar and Vanilla",
//     "calories": "137kcal",
//     "protein": "3g",
//     "fat": "2g",
//     "sodium": "50mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dried Fruit Stuffing",
//     "calories": "303kcal",
//     "protein": "7g",
//     "fat": "13g",
//     "sodium": "284mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dried Fruits and Nuts",
//     "calories": "213kcal",
//     "protein": "4g",
//     "fat": "6g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dried Pear Crisps",
//     "calories": "14kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "0mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dried Tomato, Caper, and Olive Dressing",
//     "calories": "543kcal",
//     "protein": "0g",
//     "fat": "60g",
//     "sodium": "621mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dried-Fruit Compote with White Wine",
//     "calories": "137kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "16mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dried-Fruit Mincemeat Pie",
//     "calories": "331kcal",
//     "protein": "3g",
//     "fat": "11g",
//     "sodium": "55mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dried-Fruit Strudel with Apricot Preserves",
//     "calories": "261kcal",
//     "protein": "2g",
//     "fat": "7g",
//     "sodium": "54mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Drink, almond milk, sweetened with rice syrup, ready to drink, composite",
//     "calories": "26.69kcal",
//     "protein": "0.59g",
//     "fat": "1.7g",
//     "sodium": "40mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Drink, rice milk, ready to drink, Rice milk Original, Vitasoy, fortified Ca & P",
//     "calories": "45.65kcal",
//     "protein": "0.36g",
//     "fat": "1.04g",
//     "sodium": "64mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Drink, rice milk, ready to drink, Rice milk, Get Natural, fortified Ca & P",
//     "calories": "21.4kcal",
//     "protein": "0.12g",
//     "fat": "0.5g",
//     "sodium": "86mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Drink, soy milk, ready to drink, So Good Essential, Sanitarium, fortified vitamins A, B1, B2, B3, B6, B12, E & folate, Ca, Fe, Mg & P",
//     "calories": "50.77kcal",
//     "protein": "2.79g",
//     "fat": "2.26g",
//     "sodium": "32mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Drink, soy milk, ready to drink, So Good Lite Soy Milk, Sanitarium, fortified vitamins A, B1, B2, & B12, Ca, Mg & P",
//     "calories": "42.35kcal",
//     "protein": "2.91g",
//     "fat": "1.59g",
//     "sodium": "43mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Drink, soy milk, ready to drink, So Good Regular Soy Milk, Sanitarium, fortified vitamins A, B1, B2, & B12, Ca, Mg & P",
//     "calories": "59.83kcal",
//     "protein": "2.62g",
//     "fat": "3.7g",
//     "sodium": "43mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Drink, soy milk, ready to drink, So Good, Vanilla Flavoured Soy milk, Sanitarium, fortified vitamins A, B1, B2, & B12, Ca, Mg & P",
//     "calories": "75.96kcal",
//     "protein": "2.39g",
//     "fat": "4.23g",
//     "sodium": "43mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Drink, therapeutic meal replacement, ready to drink, Fortisip Vanilla, Nutricia",
//     "calories": "148.72kcal",
//     "protein": "5.63g",
//     "fat": "5.8g",
//     "sodium": "90mg",
//     "status": "false1"
//   },
//   {
//     "food": "Drink, whey, powder, Alfa Lite",
//     "calories": "363.16kcal",
//     "protein": "12.19g",
//     "fat": "1.3g",
//     "sodium": "1080mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dripping, beef, Farmland",
//     "calories": "884.37kcal",
//     "protein": "0g",
//     "fat": "99.91g",
//     "sodium": "0mg",
//     "status": "false1"
//   },
//   {
//     "food": "Drunken Beans",
//     "calories": "296kcal",
//     "protein": "8g",
//     "fat": "23g",
//     "sodium": "1564mg",
//     "status": "false1"
//   },
//   {
//     "food": "Drunken Raspberries",
//     "calories": "241kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dry Bronx",
//     "calories": "137kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Duck Breast & Zucchini Tournedos",
//     "calories": "129kcal",
//     "protein": "18g",
//     "fat": "4g",
//     "sodium": "505mg",
//     "status": "false1"
//   },
//   {
//     "food": "Duck Breast with Roasted Peaches and Walnut-Parsley Fried Rice",
//     "calories": "665kcal",
//     "protein": "56g",
//     "fat": "18g",
//     "sodium": "3295mg",
//     "status": "false1"
//   },
//   {
//     "food": "Duck Breast with Sweet Cherry Sauce",
//     "calories": "384kcal",
//     "protein": "36g",
//     "fat": "11g",
//     "sodium": "554mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Duck Breasts with Coriander, Endive, and Sweet-and-Sour Orange Sauce",
//     "calories": "509kcal",
//     "protein": "44g",
//     "fat": "17g",
//     "sodium": "227mg",
//     "status": "false1"
//   },
//   {
//     "food": "Duck Breasts with Orange, Honey and Tea Sauce",
//     "calories": "421kcal",
//     "protein": "44g",
//     "fat": "18g",
//     "sodium": "160mg",
//     "status": "false1"
//   },
//   {
//     "food": "Duck Confit",
//     "calories": "410kcal",
//     "protein": "5g",
//     "fat": "44g",
//     "sodium": "360mg",
//     "status": "false1"
//   },
//   {
//     "food": "Duck Confit Hash",
//     "calories": "538kcal",
//     "protein": "14g",
//     "fat": "39g",
//     "sodium": "594mg",
//     "status": "false1"
//   },
//   {
//     "food": "Duck Confit with Oranges and Watercress",
//     "calories": "5368kcal",
//     "protein": "150g",
//     "fat": "517g",
//     "sodium": "829mg",
//     "status": "false1"
//   },
//   {
//     "food": "Duck Confit with Potato Leek Ragout",
//     "calories": "5545kcal",
//     "protein": "153g",
//     "fat": "513g",
//     "sodium": "974mg",
//     "status": "false1"
//   },
//   {
//     "food": "Duck Egg Cake with Rosemary",
//     "calories": "250kcal",
//     "protein": "4g",
//     "fat": "14g",
//     "sodium": "135mg",
//     "status": "false1"
//   },
//   {
//     "food": "Dutch Chocolate-Mint Cheesecake",
//     "calories": "1051kcal",
//     "protein": "13g",
//     "fat": "72g",
//     "sodium": "518mg",
//     "status": "false1"
//   },
//   {
//     "food": "Egg Curry with Tomatoes and Cilantro",
//     "calories": "414kcal",
//     "protein": "17g",
//     "fat": "19g",
//     "sodium": "860mg",
//     "status": "false1"
//   },
//   {
//     "food": "Egg Fried Rice",
//     "calories": "239kcal",
//     "protein": "7g",
//     "fat": "7g",
//     "sodium": "344mg",
//     "status": "false1"
//   },
//   {
//     "food": "Egg Noodle, Chard, and Fontina Torte",
//     "calories": "414kcal",
//     "protein": "20g",
//     "fat": "29g",
//     "sodium": "998mg",
//     "status": "false1"
//   },
//   {
//     "food": "Egg Salad with Lemon and Fennel",
//     "calories": "237kcal",
//     "protein": "9g",
//     "fat": "21g",
//     "sodium": "226mg",
//     "status": "false1"
//   },
//   {
//     "food": "Egg Sandwich with Green Bean Slaw",
//     "calories": "374kcal",
//     "protein": "16g",
//     "fat": "19g",
//     "sodium": "590mg",
//     "status": "false1"
//   },
//   {
//     "food": "Egg Tacos with Pumpkin-Seed and Tomato-Habanero Sauces",
//     "calories": "504kcal",
//     "protein": "26g",
//     "fat": "42g",
//     "sodium": "109mg",
//     "status": "false1"
//   },
//   {
//     "food": "Egg, Bacon and Leek Pie",
//     "calories": "542kcal",
//     "protein": "8g",
//     "fat": "39g",
//     "sodium": "711mg",
//     "status": "false1"
//   },
//   {
//     "food": "Eggnog",
//     "calories": "264kcal",
//     "protein": "12g",
//     "fat": "12g",
//     "sodium": "450mg",
//     "status": "false1"
//   },
//   {
//     "food": "Eggnog Cremes",
//     "calories": "436kcal",
//     "protein": "5g",
//     "fat": "13g",
//     "sodium": "155mg",
//     "status": "false1"
//   },
//   {
//     "food": "Eggnog Ice Cream",
//     "calories": "205kcal",
//     "protein": "3g",
//     "fat": "13g",
//     "sodium": "84mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Energy drink, assorted flavours, ready to drink, V, Frucor, composite, fortified vitamins B2, B3, B5, B6 & B12",
//     "calories": "41.89kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "110mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Energy drink, sugar free, V, Frucor, fortified vitamins B2, B3, B5, B6 & B12",
//     "calories": "0kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "110mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fat Rice",
//     "calories": "1229kcal",
//     "protein": "70g",
//     "fat": "65g",
//     "sodium": "2956mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fideos with Mussels",
//     "calories": "414kcal",
//     "protein": "31g",
//     "fat": "20g",
//     "sodium": "1716mg",
//     "status": "false1"
//   },
//   {
//     "food": "Field Greens with Red Chili Dressing",
//     "calories": "157kcal",
//     "protein": "2g",
//     "fat": "15g",
//     "sodium": "73mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fiery Grilled Shrimp with Honeydew Gazpacho",
//     "calories": "144kcal",
//     "protein": "17g",
//     "fat": "5g",
//     "sodium": "703mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fiesta Red Snapper",
//     "calories": "218kcal",
//     "protein": "31g",
//     "fat": "6g",
//     "sodium": "214mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fiesta Tortilla Salad",
//     "calories": "805kcal",
//     "protein": "8g",
//     "fat": "68g",
//     "sodium": "33mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fiesta Zucchini",
//     "calories": "145kcal",
//     "protein": "5g",
//     "fat": "11g",
//     "sodium": "323mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig and Apple Phyllo Tart",
//     "calories": "269kcal",
//     "protein": "3g",
//     "fat": "9g",
//     "sodium": "92mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig and Blue Cheese Savouries",
//     "calories": "51kcal",
//     "protein": "1g",
//     "fat": "4g",
//     "sodium": "37mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig and Carrot Slaw",
//     "calories": "175kcal",
//     "protein": "3g",
//     "fat": "1g",
//     "sodium": "739mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig and Fennel Bread",
//     "calories": "266kcal",
//     "protein": "8g",
//     "fat": "1g",
//     "sodium": "685mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig and Goat Cheese Crostini",
//     "calories": "57kcal",
//     "protein": "2g",
//     "fat": "3g",
//     "sodium": "88mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig and Pistachio Stuffing",
//     "calories": "386kcal",
//     "protein": "12g",
//     "fat": "19g",
//     "sodium": "308mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig and Pomegranate Tapenade",
//     "calories": "198kcal",
//     "protein": "2g",
//     "fat": "11g",
//     "sodium": "187mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig and Port Wine Charoset",
//     "calories": "125kcal",
//     "protein": "1g",
//     "fat": "7g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig and Raspberry Galette",
//     "calories": "338kcal",
//     "protein": "4g",
//     "fat": "17g",
//     "sodium": "197mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig and Rosemary Pot Roast",
//     "calories": "188kcal",
//     "protein": "5g",
//     "fat": "9g",
//     "sodium": "101mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig and Rum Squares",
//     "calories": "214kcal",
//     "protein": "3g",
//     "fat": "12g",
//     "sodium": "37mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig and Sesame Tart with Cardamom Orange Cream",
//     "calories": "488kcal",
//     "protein": "7g",
//     "fat": "26g",
//     "sodium": "116mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig and Stilton Salad with Port Wine Dressing",
//     "calories": "271kcal",
//     "protein": "5g",
//     "fat": "19g",
//     "sodium": "242mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig and Thyme Jam",
//     "calories": "206kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "34mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig and Walnut Tapenade with Goat Cheese",
//     "calories": "98kcal",
//     "protein": "4g",
//     "fat": "6g",
//     "sodium": "154mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig and Walnut Truffles",
//     "calories": "121kcal",
//     "protein": "1g",
//     "fat": "10g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig Balsamic-Glazed Duck with Pearl Onion and Pear Hash",
//     "calories": "467kcal",
//     "protein": "38g",
//     "fat": "14g",
//     "sodium": "129mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig Leaf",
//     "calories": "108kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig Salad with Goat's Milk Yogurt and Pepper Cress",
//     "calories": "89kcal",
//     "protein": "5g",
//     "fat": "5g",
//     "sodium": "102mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig, dried",
//     "calories": "280.29kcal",
//     "protein": "3.63g",
//     "fat": "1.6g",
//     "sodium": "39mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig, dried, fruit & juice, stewed with sugar",
//     "calories": "162.75kcal",
//     "protein": "1.88g",
//     "fat": "0.8g",
//     "sodium": "46mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig, dried, fruit & juice, stewed without sugar",
//     "calories": "89.16kcal",
//     "protein": "1.19g",
//     "fat": "0.2g",
//     "sodium": "48mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig, green, raw",
//     "calories": "51.41kcal",
//     "protein": "1.31g",
//     "fat": "0.3g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig-Braised Chicken with Spiced Walnuts",
//     "calories": "329kcal",
//     "protein": "11g",
//     "fat": "21g",
//     "sodium": "700mg",
//     "status": "false1"
//   },
//   {
//     "food": "Figgy Piggy Cornish Hens",
//     "calories": "924kcal",
//     "protein": "70g",
//     "fat": "68g",
//     "sodium": "482mg",
//     "status": "false1"
//   },
//   {
//     "food": "Figs in Red-Wine Syrup",
//     "calories": "127kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Figs with Balsamic Vinegar, Mascarpone, and Walnuts",
//     "calories": "282kcal",
//     "protein": "3g",
//     "fat": "13g",
//     "sodium": "76mg",
//     "status": "false1"
//   },
//   {
//     "food": "Figs with Honey-Yogurt Cream",
//     "calories": "528kcal",
//     "protein": "5g",
//     "fat": "12g",
//     "sodium": "43mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fig-Sesame Jam",
//     "calories": "309kcal",
//     "protein": "2g",
//     "fat": "3g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fish, fingers, grilled",
//     "calories": "221.28kcal",
//     "protein": "9.9g",
//     "fat": "11.1g",
//     "sodium": "323mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fish, fingers, microwaved",
//     "calories": "260.3kcal",
//     "protein": "11g",
//     "fat": "13.21g",
//     "sodium": "470mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fish, fingers, raw",
//     "calories": "201.6kcal",
//     "protein": "8.43g",
//     "fat": "11.49g",
//     "sodium": "276mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fish-and-Chips",
//     "calories": "620kcal",
//     "protein": "34g",
//     "fat": "10g",
//     "sodium": "381mg",
//     "status": "false1"
//   },
//   {
//     "food": "Forager Sandwich",
//     "calories": "2278kcal",
//     "protein": "73g",
//     "fat": "110g",
//     "sodium": "2863mg",
//     "status": "false1"
//   },
//   {
//     "food": "Foragers' Pie",
//     "calories": "300kcal",
//     "protein": "13g",
//     "fat": "6g",
//     "sodium": "1345mg",
//     "status": "false1"
//   },
//   {
//     "food": "Four Seasons Blend",
//     "calories": "3kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "2509mg",
//     "status": "false1"
//   },
//   {
//     "food": "Four Spirits Eggnog",
//     "calories": "448kcal",
//     "protein": "5g",
//     "fat": "9g",
//     "sodium": "66mg",
//     "status": "false1"
//   },
//   {
//     "food": "Four-Cheese Baked Bow Ties",
//     "calories": "662kcal",
//     "protein": "30g",
//     "fat": "29g",
//     "sodium": "854mg",
//     "status": "false1"
//   },
//   {
//     "food": "Four-Cheese Focaccia",
//     "calories": "288kcal",
//     "protein": "12g",
//     "fat": "14g",
//     "sodium": "498mg",
//     "status": "false1"
//   },
//   {
//     "food": "Four-Cheese Manicotti",
//     "calories": "716kcal",
//     "protein": "37g",
//     "fat": "42g",
//     "sodium": "1554mg",
//     "status": "false1"
//   },
//   {
//     "food": "Four-Cheese Ravioli with Mushrooms",
//     "calories": "617kcal",
//     "protein": "21g",
//     "fat": "28g",
//     "sodium": "826mg",
//     "status": "false1"
//   },
//   {
//     "food": "Four-Onion Gratin",
//     "calories": "240kcal",
//     "protein": "4g",
//     "fat": "15g",
//     "sodium": "47mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fragrant Indian Brittle",
//     "calories": "68kcal",
//     "protein": "1g",
//     "fat": "2g",
//     "sodium": "38mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frangelico Ice Cream",
//     "calories": "214kcal",
//     "protein": "2g",
//     "fat": "9g",
//     "sodium": "30mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frangipane",
//     "calories": "257kcal",
//     "protein": "6g",
//     "fat": "21g",
//     "sodium": "31mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frangipane Tart with Strawberries and Raspberries",
//     "calories": "286kcal",
//     "protein": "4g",
//     "fat": "19g",
//     "sodium": "59mg",
//     "status": "false1"
//   },
//   {
//     "food": "Franks and Beans",
//     "calories": "625kcal",
//     "protein": "42g",
//     "fat": "30g",
//     "sodium": "1642mg",
//     "status": "false1"
//   },
//   {
//     "food": "Free-Form Beesting Cake",
//     "calories": "989kcal",
//     "protein": "16g",
//     "fat": "44g",
//     "sodium": "360mg",
//     "status": "false1"
//   },
//   {
//     "food": "French 75",
//     "calories": "270kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "10mg",
//     "status": "false1"
//   },
//   {
//     "food": "French 75 Cocktail",
//     "calories": "70kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "French 75 Cocktail II",
//     "calories": "74kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "French 75 Cocktail III",
//     "calories": "214kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "12mg",
//     "status": "false1"
//   },
//   {
//     "food": "French Apple Cake",
//     "calories": "469kcal",
//     "protein": "5g",
//     "fat": "20g",
//     "sodium": "143mg",
//     "status": "false1"
//   },
//   {
//     "food": "French Apple Turnovers (Chaussons Aux Pommes)",
//     "calories": "387kcal",
//     "protein": "5g",
//     "fat": "22g",
//     "sodium": "150mg",
//     "status": "false1"
//   },
//   {
//     "food": "French Apple-Almond Tart",
//     "calories": "482kcal",
//     "protein": "8g",
//     "fat": "29g",
//     "sodium": "142mg",
//     "status": "false1"
//   },
//   {
//     "food": "French Bean Salad",
//     "calories": "155kcal",
//     "protein": "2g",
//     "fat": "13g",
//     "sodium": "351mg",
//     "status": "false1"
//   },
//   {
//     "food": "French Bread with Kalamata Olives and Thyme",
//     "calories": "1173kcal",
//     "protein": "33g",
//     "fat": "23g",
//     "sodium": "2725mg",
//     "status": "false1"
//   },
//   {
//     "food": "French Buttercream",
//     "calories": "311kcal",
//     "protein": "1g",
//     "fat": "26g",
//     "sodium": "10mg",
//     "status": "false1"
//   },
//   {
//     "food": "French dressing",
//     "calories": "638.61kcal",
//     "protein": "0.35g",
//     "fat": "71.34g",
//     "sodium": "1023.58mg",
//     "status": "false1"
//   },
//   {
//     "food": "French Four Spice Blend",
//     "calories": "20kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "French Fries",
//     "calories": "480kcal",
//     "protein": "5g",
//     "fat": "34g",
//     "sodium": "11mg",
//     "status": "false1"
//   },
//   {
//     "food": "French Lentil Soup",
//     "calories": "340kcal",
//     "protein": "16g",
//     "fat": "13g",
//     "sodium": "211mg",
//     "status": "false1"
//   },
//   {
//     "food": "French Lentil Soup with Sausage",
//     "calories": "135kcal",
//     "protein": "4g",
//     "fat": "12g",
//     "sodium": "768mg",
//     "status": "false1"
//   },
//   {
//     "food": "French Lentil, Prosciutto, and Pepper Salad",
//     "calories": "425kcal",
//     "protein": "22g",
//     "fat": "16g",
//     "sodium": "651mg",
//     "status": "false1"
//   },
//   {
//     "food": "French Onion Bites",
//     "calories": "49kcal",
//     "protein": "2g",
//     "fat": "2g",
//     "sodium": "78mg",
//     "status": "false1"
//   },
//   {
//     "food": "French Onion Soup",
//     "calories": "336kcal",
//     "protein": "17g",
//     "fat": "18g",
//     "sodium": "1397mg",
//     "status": "false1"
//   },
//   {
//     "food": "French-American Potato Salad",
//     "calories": "174kcal",
//     "protein": "2g",
//     "fat": "11g",
//     "sodium": "429mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Corn Soup Topped with Roasted Corn Guacamole",
//     "calories": "374kcal",
//     "protein": "10g",
//     "fat": "21g",
//     "sodium": "1324mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Corn Spoon Bread",
//     "calories": "193kcal",
//     "protein": "9g",
//     "fat": "8g",
//     "sodium": "472mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Corn Tortillas",
//     "calories": "23kcal",
//     "protein": "1g",
//     "fat": "2g",
//     "sodium": "61mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Corn, Cheddar, and Scallion Corn Bread",
//     "calories": "453kcal",
//     "protein": "16g",
//     "fat": "8g",
//     "sodium": "1307mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Country Pork Sausage with Pepper and Sage",
//     "calories": "180kcal",
//     "protein": "7g",
//     "fat": "17g",
//     "sodium": "260mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Cranberry Orange Sauce",
//     "calories": "277kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "5mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Cream Cheese",
//     "calories": "203kcal",
//     "protein": "11g",
//     "fat": "11g",
//     "sodium": "159mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Egg Fettucine",
//     "calories": "206kcal",
//     "protein": "8g",
//     "fat": "2g",
//     "sodium": "30mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Fennel Pan Gravy",
//     "calories": "225kcal",
//     "protein": "17g",
//     "fat": "9g",
//     "sodium": "222mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Fennel Vichyssoise",
//     "calories": "253kcal",
//     "protein": "7g",
//     "fat": "15g",
//     "sodium": "235mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Fresh Fig Tart with Rosemary Cornmeal Crust and Lemon Mascarpone Cream",
//     "calories": "607kcal",
//     "protein": "8g",
//     "fat": "32g",
//     "sodium": "297mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Fig, Prosciutto, and Arugula Salad with Parmesan Shavings",
//     "calories": "316kcal",
//     "protein": "18g",
//     "fat": "23g",
//     "sodium": "1127mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Figs with Bacon and Goat Cheese",
//     "calories": "34kcal",
//     "protein": "1g",
//     "fat": "2g",
//     "sodium": "31mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Figs with Rosemary Goat Cheese",
//     "calories": "204kcal",
//     "protein": "8g",
//     "fat": "14g",
//     "sodium": "185mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Fruit Compote with Hazelnut-Cinnamon Biscotti",
//     "calories": "86kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Fruit Ice Trio: Lime, Watermelon & Pineapple",
//     "calories": "338kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "33mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Fruit Platter with Ginger-Mango Sauce",
//     "calories": "80kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Fruit Salad with Honey, Mint and Lime Syrup",
//     "calories": "147kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "31mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Fruit Tart with Plum Jam",
//     "calories": "496kcal",
//     "protein": "7g",
//     "fat": "15g",
//     "sodium": "178mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Fruit with Honey-Yogurt Dip",
//     "calories": "239kcal",
//     "protein": "6g",
//     "fat": "2g",
//     "sodium": "85mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Fruit with Mascarpone and White Chocolate Dip",
//     "calories": "245kcal",
//     "protein": "3g",
//     "fat": "21g",
//     "sodium": "41mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Ginger and Citrus Sorbet",
//     "calories": "198kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Goat Cheese, Roasted Beet, and Walnut Tart",
//     "calories": "2856kcal",
//     "protein": "85g",
//     "fat": "212g",
//     "sodium": "2373mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Green Peas and Sugar Snap Peas in Sesame Dressing",
//     "calories": "236kcal",
//     "protein": "14g",
//     "fat": "3g",
//     "sodium": "479mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Ricotta",
//     "calories": "179kcal",
//     "protein": "4g",
//     "fat": "15g",
//     "sodium": "303mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Ricotta and Fava Bean Bruschetta",
//     "calories": "280kcal",
//     "protein": "16g",
//     "fat": "12g",
//     "sodium": "214mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Ricotta Cheese",
//     "calories": "200kcal",
//     "protein": "10g",
//     "fat": "11g",
//     "sodium": "528mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Semolina Orecchiette",
//     "calories": "264kcal",
//     "protein": "9g",
//     "fat": "1g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Spinach with Garlic-Yogurt Sauce",
//     "calories": "159kcal",
//     "protein": "5g",
//     "fat": "12g",
//     "sodium": "109mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Strawberry Granita",
//     "calories": "212kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Strawberry Ice Cream",
//     "calories": "200kcal",
//     "protein": "3g",
//     "fat": "11g",
//     "sodium": "65mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Strawberry Sorbet",
//     "calories": "169kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "5mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Strawberry Sorbet with Shortbread Cookies",
//     "calories": "141kcal",
//     "protein": "0g",
//     "fat": "1g",
//     "sodium": "9mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Summer Fruit in Ginger-Wine Syrup",
//     "calories": "179kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "5mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Tarragon Oil",
//     "calories": "379kcal",
//     "protein": "1g",
//     "fat": "41g",
//     "sodium": "231mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Tomato and Onion Chutney",
//     "calories": "68kcal",
//     "protein": "1g",
//     "fat": "5g",
//     "sodium": "468mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Tomato Bloody Marys",
//     "calories": "107kcal",
//     "protein": "2g",
//     "fat": "0g",
//     "sodium": "913mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fresh Tomato Corn Soup",
//     "calories": "117kcal",
//     "protein": "5g",
//     "fat": "1g",
//     "sodium": "184mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Anchovies with Salbixtada Sauce",
//     "calories": "1174kcal",
//     "protein": "29g",
//     "fat": "92g",
//     "sodium": "1804mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Calamari Salad",
//     "calories": "673kcal",
//     "protein": "23g",
//     "fat": "51g",
//     "sodium": "433mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Calamari with Peperoncini Mayonnaise",
//     "calories": "662kcal",
//     "protein": "20g",
//     "fat": "52g",
//     "sodium": "408mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Calamari with Rouille, Cherry Peppers, and Lemon",
//     "calories": "712kcal",
//     "protein": "28g",
//     "fat": "46g",
//     "sodium": "1070mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Cardoons",
//     "calories": "301kcal",
//     "protein": "6g",
//     "fat": "26g",
//     "sodium": "332mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Catfish",
//     "calories": "667kcal",
//     "protein": "29g",
//     "fat": "45g",
//     "sodium": "3613mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Catfish Sandwiches with Bacon, Lettuce, and Tomato",
//     "calories": "960kcal",
//     "protein": "28g",
//     "fat": "90g",
//     "sodium": "929mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Catfish with Chive-Ginger Sauce",
//     "calories": "564kcal",
//     "protein": "30g",
//     "fat": "46g",
//     "sodium": "614mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Chicken",
//     "calories": "2137kcal",
//     "protein": "89g",
//     "fat": "170g",
//     "sodium": "1701mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Chicken and Biscuits with Pink Peppercorn-Honey Butter",
//     "calories": "1736kcal",
//     "protein": "54g",
//     "fat": "125g",
//     "sodium": "2149mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Chicken Biscuits",
//     "calories": "2925kcal",
//     "protein": "152g",
//     "fat": "224g",
//     "sodium": "1355mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Chicken Bites",
//     "calories": "802kcal",
//     "protein": "31g",
//     "fat": "64g",
//     "sodium": "1014mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Chicken Salad",
//     "calories": "4790kcal",
//     "protein": "297g",
//     "fat": "383g",
//     "sodium": "2788mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Chicken Sandwich with Slaw and Spicy Mayo",
//     "calories": "1300kcal",
//     "protein": "57g",
//     "fat": "75g",
//     "sodium": "1157mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Chicken Thighs with Cheesy Grits",
//     "calories": "1822kcal",
//     "protein": "45g",
//     "fat": "134g",
//     "sodium": "1542mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Chicken with Bacon and Pepper Cream Gravy",
//     "calories": "2641kcal",
//     "protein": "98g",
//     "fat": "219g",
//     "sodium": "1074mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Chicken with Spring Salad",
//     "calories": "1150kcal",
//     "protein": "60g",
//     "fat": "94g",
//     "sodium": "2491mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Chick-Pea Sandwiches with Coriander Yogurt",
//     "calories": "1444kcal",
//     "protein": "55g",
//     "fat": "31g",
//     "sodium": "3777mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Chinese Five-Spice Chicken Wings",
//     "calories": "868kcal",
//     "protein": "41g",
//     "fat": "72g",
//     "sodium": "2713mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Cornmeal Shrimp with Butternut Squash Risotto",
//     "calories": "610kcal",
//     "protein": "27g",
//     "fat": "18g",
//     "sodium": "929mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Custard Squares with Rum Sauce",
//     "calories": "762kcal",
//     "protein": "11g",
//     "fat": "42g",
//     "sodium": "331mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Eggplant, Tomato, and Cucumber Salad",
//     "calories": "623kcal",
//     "protein": "6g",
//     "fat": "60g",
//     "sodium": "31mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Fried Eggs on Corn Tortillas with Two Salsas (Huevos Divorciados)",
//     "calories": "389kcal",
//     "protein": "15g",
//     "fat": "31g",
//     "sodium": "1315mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Eggs Over Warm Lentil Salad with Lardons",
//     "calories": "504kcal",
//     "protein": "28g",
//     "fat": "30g",
//     "sodium": "465mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Eggs with Coffee-Chipotle Mole",
//     "calories": "233kcal",
//     "protein": "14g",
//     "fat": "17g",
//     "sodium": "190mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Eggs, Prosciutto, and Arugula with Cheese Sauce",
//     "calories": "695kcal",
//     "protein": "40g",
//     "fat": "43g",
//     "sodium": "1419mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Fingerling Potatoes with Tarragon Sauce",
//     "calories": "102kcal",
//     "protein": "1g",
//     "fat": "8g",
//     "sodium": "1913mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Fish Marinated in Garlic, Vinegar, Oregano, and Cumin",
//     "calories": "315kcal",
//     "protein": "22g",
//     "fat": "22g",
//     "sodium": "79mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Fish Tacos",
//     "calories": "805kcal",
//     "protein": "29g",
//     "fat": "47g",
//     "sodium": "1265mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Fish with Moroccan-Style Herb Sauce",
//     "calories": "417kcal",
//     "protein": "46g",
//     "fat": "25g",
//     "sodium": "127mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Green Olives Stuffed with Blue Cheese",
//     "calories": "125kcal",
//     "protein": "3g",
//     "fat": "9g",
//     "sodium": "211mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Green Plantains",
//     "calories": "577kcal",
//     "protein": "3g",
//     "fat": "35g",
//     "sodium": "14mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Green Tomato, Mozzarella, and Basil \"Blts",
//     "calories": "1055kcal",
//     "protein": "45g",
//     "fat": "67g",
//     "sodium": "1698mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Mozzarella Balls",
//     "calories": "82kcal",
//     "protein": "4g",
//     "fat": "6g",
//     "sodium": "107mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Mozzarella Skewers",
//     "calories": "895kcal",
//     "protein": "30g",
//     "fat": "71g",
//     "sodium": "1168mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Neopolitan Pizzas",
//     "calories": "826kcal",
//     "protein": "20g",
//     "fat": "63g",
//     "sodium": "1253mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Onion Rings",
//     "calories": "607kcal",
//     "protein": "11g",
//     "fat": "27g",
//     "sodium": "1009mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Oysters with Holiday Tartar Sauce",
//     "calories": "1181kcal",
//     "protein": "24g",
//     "fat": "100g",
//     "sodium": "744mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Pastry Spirals with Honey, Sesame, and Walnuts",
//     "calories": "672kcal",
//     "protein": "6g",
//     "fat": "26g",
//     "sodium": "444mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Peppers, Onions and Sausages",
//     "calories": "1012kcal",
//     "protein": "36g",
//     "fat": "85g",
//     "sodium": "2253mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Plum Ravioli with Mint Cream",
//     "calories": "676kcal",
//     "protein": "11g",
//     "fat": "41g",
//     "sodium": "687mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Quesadillas with Two Fillings",
//     "calories": "64kcal",
//     "protein": "1g",
//     "fat": "5g",
//     "sodium": "78mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Rice",
//     "calories": "923kcal",
//     "protein": "26g",
//     "fat": "23g",
//     "sodium": "1666mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Rice with Bacon, Scallions, and Water Chestnuts",
//     "calories": "620kcal",
//     "protein": "15g",
//     "fat": "18g",
//     "sodium": "1737mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Rice with Canadian Bacon",
//     "calories": "384kcal",
//     "protein": "16g",
//     "fat": "12g",
//     "sodium": "958mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Rice with Cilantro and Peas",
//     "calories": "313kcal",
//     "protein": "7g",
//     "fat": "4g",
//     "sodium": "266mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Rice with Crab",
//     "calories": "790kcal",
//     "protein": "34g",
//     "fat": "50g",
//     "sodium": "2095mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Rice with Ham, Egg, and Scallions",
//     "calories": "383kcal",
//     "protein": "18g",
//     "fat": "10g",
//     "sodium": "845mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Rice with Peppers, Onions and Shiitake Mushrooms",
//     "calories": "564kcal",
//     "protein": "15g",
//     "fat": "24g",
//     "sodium": "683mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Rice with Pork and Kale",
//     "calories": "960kcal",
//     "protein": "40g",
//     "fat": "47g",
//     "sodium": "1010mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Rice with Vegetables and Basil",
//     "calories": "314kcal",
//     "protein": "6g",
//     "fat": "11g",
//     "sodium": "344mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Ricotta and Mozzarella Dumplings with Broccoli Sauce",
//     "calories": "641kcal",
//     "protein": "24g",
//     "fat": "44g",
//     "sodium": "421mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fried Sage Leaves",
//     "calories": "440kcal",
//     "protein": "0g",
//     "fat": "49g",
//     "sodium": "0mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frittata with Fennel-Spiced Pork and Asparagus",
//     "calories": "703kcal",
//     "protein": "29g",
//     "fat": "63g",
//     "sodium": "1322mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frittata with Mustard Greens and Fontina",
//     "calories": "379kcal",
//     "protein": "20g",
//     "fat": "32g",
//     "sodium": "363mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frizzled Ginger",
//     "calories": "121kcal",
//     "protein": "1g",
//     "fat": "9g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frizzled Onion",
//     "calories": "147kcal",
//     "protein": "1g",
//     "fat": "13g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fromage frais, assorted fruits & flavours, Fruche",
//     "calories": "87.16kcal",
//     "protein": "5.26g",
//     "fat": "0.7g",
//     "sodium": "50mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fromage frais, assorted fruits, Petit Miam",
//     "calories": "100.94kcal",
//     "protein": "5.52g",
//     "fat": "4.35g",
//     "sodium": "63mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fromage frais, assorted stone fruits, Fruit Corner",
//     "calories": "126.59kcal",
//     "protein": "5.33g",
//     "fat": "3.7g",
//     "sodium": "57mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Chocolate Bourbon Parfaits",
//     "calories": "454kcal",
//     "protein": "6g",
//     "fat": "30g",
//     "sodium": "60mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Coffee-Fudge Torte with Vanilla Caramel Sauce",
//     "calories": "1026kcal",
//     "protein": "10g",
//     "fat": "66g",
//     "sodium": "185mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Cognac Parfait and Spirited Fruit Compote",
//     "calories": "376kcal",
//     "protein": "4g",
//     "fat": "13g",
//     "sodium": "25mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Cranberry, Cherry and Orange Cocktail",
//     "calories": "145kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "10mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Eggnog",
//     "calories": "378kcal",
//     "protein": "2g",
//     "fat": "29g",
//     "sodium": "31mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Frozen Grand Marnier Torte with Dark Chocolate Crust and Spiced Cranberries",
//     "calories": "757kcal",
//     "protein": "7g",
//     "fat": "49g",
//     "sodium": "165mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Iced Coffee With Coffee Jelly",
//     "calories": "253kcal",
//     "protein": "3g",
//     "fat": "11g",
//     "sodium": "33mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Italian Zabaglione Tart with Marsala-Lemon Sauce",
//     "calories": "749kcal",
//     "protein": "7g",
//     "fat": "49g",
//     "sodium": "98mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Lemon Cream Meringue Cake",
//     "calories": "260kcal",
//     "protein": "4g",
//     "fat": "14g",
//     "sodium": "39mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Lemon Gingersnap Pie",
//     "calories": "512kcal",
//     "protein": "6g",
//     "fat": "31g",
//     "sodium": "234mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Lemon Mousse with Blueberries",
//     "calories": "269kcal",
//     "protein": "1g",
//     "fat": "10g",
//     "sodium": "21mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Lemon Mousse with Blueberry Sauce",
//     "calories": "282kcal",
//     "protein": "4g",
//     "fat": "12g",
//     "sodium": "53mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Lemon Pie Pops",
//     "calories": "259kcal",
//     "protein": "6g",
//     "fat": "10g",
//     "sodium": "89mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Lemon-Ginger Yogurt",
//     "calories": "280kcal",
//     "protein": "4g",
//     "fat": "24g",
//     "sodium": "40mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Lime Cream",
//     "calories": "149kcal",
//     "protein": "4g",
//     "fat": "3g",
//     "sodium": "44mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Lime Torte with Summer Fruit",
//     "calories": "447kcal",
//     "protein": "7g",
//     "fat": "27g",
//     "sodium": "35mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Limes Filled with Sangrita and Tequila",
//     "calories": "66kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "195mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Mango Daiquiri",
//     "calories": "255kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "13mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Mango, Blackberry Cassis, and Vanilla Mosaic",
//     "calories": "203kcal",
//     "protein": "1g",
//     "fat": "3g",
//     "sodium": "26mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Maraschino Singapore Sling",
//     "calories": "165kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "10mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Margarita",
//     "calories": "204kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen meal, casserole, chicken",
//     "calories": "120.09kcal",
//     "protein": "7.56g",
//     "fat": "2.18g",
//     "sodium": "301mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen meal, lasagne, beef, baked, composite",
//     "calories": "131.69kcal",
//     "protein": "6.7g",
//     "fat": "4.42g",
//     "sodium": "289mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen meal, macaroni cheese, baked, composite",
//     "calories": "146.13kcal",
//     "protein": "7.07g",
//     "fat": "6.21g",
//     "sodium": "274mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Frozen meal, roast beef with mashed potato & vegetables, microwaved, ready to eat, Wattie's",
//     "calories": "100.92kcal",
//     "protein": "7.06g",
//     "fat": "1.72g",
//     "sodium": "282mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Frozen meal, roast beef with potato & vegetables, microwaved, ready to eat, composite",
//     "calories": "98.37kcal",
//     "protein": "7.13g",
//     "fat": "1.4g",
//     "sodium": "282mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Frozen meal, roast beef with roast potato & vegetables, microwaved, ready to eat, composite",
//     "calories": "95.35kcal",
//     "protein": "7.06g",
//     "fat": "1.09g",
//     "sodium": "282mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Frozen meal, roast chicken with mashed potato and vegetables, microwaved, ready to eat, Wattie's",
//     "calories": "111kcal",
//     "protein": "7.69g",
//     "fat": "2.25g",
//     "sodium": "214mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Frozen meal, roast chicken with potato and vegetables, microwaved, ready to eat, composite",
//     "calories": "112.25kcal",
//     "protein": "7.75g",
//     "fat": "2.36g",
//     "sodium": "214mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Frozen meal, roast chicken with roast potato and vegetables, microwaved, ready to eat, composite",
//     "calories": "112.88kcal",
//     "protein": "7.69g",
//     "fat": "2.46g",
//     "sodium": "214mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Frozen meal, roast lamb with mashed potato & vegetables, microwaved, ready to eat, Wattie's",
//     "calories": "103.85kcal",
//     "protein": "7g",
//     "fat": "3.83g",
//     "sodium": "317mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Frozen meal, roast lamb with potato & vegetables, microwaved, ready to eat, composite",
//     "calories": "99.32kcal",
//     "protein": "7g",
//     "fat": "3.32g",
//     "sodium": "317mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Frozen meal, roast lamb with roast potato & vegetables, microwaved, ready to eat, composite",
//     "calories": "94.72kcal",
//     "protein": "7g",
//     "fat": "2.8g",
//     "sodium": "317mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Frozen meal, roast pork with mashed potato & vegetables, microwaved, ready to eat, Wattie's",
//     "calories": "85.21kcal",
//     "protein": "6.44g",
//     "fat": "1.08g",
//     "sodium": "346mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Frozen meal, roast pork with potato & vegetables, microwaved, ready to eat, composite",
//     "calories": "88.44kcal",
//     "protein": "6.44g",
//     "fat": "1.44g",
//     "sodium": "346mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Frozen meal, roast pork with roast potato & vegetables, microwaved, ready to eat, composite",
//     "calories": "91.58kcal",
//     "protein": "6.44g",
//     "fat": "1.8g",
//     "sodium": "346mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen meal, spaghetti bolognaise, baked, composite",
//     "calories": "122.2kcal",
//     "protein": "6.33g",
//     "fat": "4.4g",
//     "sodium": "236mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Meyer Lemon Cream with Blackberry Sauce",
//     "calories": "201kcal",
//     "protein": "2g",
//     "fat": "10g",
//     "sodium": "15mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Milk Chocolate and Amaretto Mousse Pie",
//     "calories": "438kcal",
//     "protein": "4g",
//     "fat": "25g",
//     "sodium": "154mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Mint Chocolate Checkerboard",
//     "calories": "942kcal",
//     "protein": "20g",
//     "fat": "45g",
//     "sodium": "430mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Mint Lemonade",
//     "calories": "107kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "15mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Mocha Rum Parfaits",
//     "calories": "428kcal",
//     "protein": "4g",
//     "fat": "30g",
//     "sodium": "52mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Orange and Amaretti Parfaits with Espresso Granita",
//     "calories": "330kcal",
//     "protein": "3g",
//     "fat": "9g",
//     "sodium": "113mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Papaya and Passion-Fruit Rum Cocktail",
//     "calories": "264kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "19mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Passion Fruit Meringue Cake",
//     "calories": "2724kcal",
//     "protein": "36g",
//     "fat": "182g",
//     "sodium": "1090mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Peach and Amaretti Souffles",
//     "calories": "417kcal",
//     "protein": "5g",
//     "fat": "11g",
//     "sodium": "43mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Peaches With Strawberries and Mint",
//     "calories": "158kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Peanut Butter Pie",
//     "calories": "294kcal",
//     "protein": "6g",
//     "fat": "21g",
//     "sodium": "105mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Peanut Butter Pie with Candied Bacon",
//     "calories": "670kcal",
//     "protein": "15g",
//     "fat": "48g",
//     "sodium": "331mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Plum Souffles with Cardamom-Plum Sauce",
//     "calories": "1201kcal",
//     "protein": "9g",
//     "fat": "62g",
//     "sodium": "175mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Pumpkin Mousse with Walnut-Toffee Crunch",
//     "calories": "899kcal",
//     "protein": "10g",
//     "fat": "65g",
//     "sodium": "291mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Raspberry Mousse",
//     "calories": "299kcal",
//     "protein": "2g",
//     "fat": "15g",
//     "sodium": "22mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Raspberry Zabaglione on Meringues with Chocolate Sauce",
//     "calories": "480kcal",
//     "protein": "9g",
//     "fat": "17g",
//     "sodium": "38mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Raspberry-Ginger Margarita",
//     "calories": "238kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Strawberry Lemon Meringue Torte",
//     "calories": "279kcal",
//     "protein": "4g",
//     "fat": "12g",
//     "sodium": "39mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Strawberry-Banana Cake with Strawberry Sauce",
//     "calories": "412kcal",
//     "protein": "3g",
//     "fat": "6g",
//     "sodium": "159mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Sunrise Margaritas",
//     "calories": "282kcal",
//     "protein": "2g",
//     "fat": "0g",
//     "sodium": "22593mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Tropical Terrine with Mango-Blackberry Sauce",
//     "calories": "461kcal",
//     "protein": "4g",
//     "fat": "15g",
//     "sodium": "131mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Watermelon Margarita",
//     "calories": "191kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Yogurt Banana Splits",
//     "calories": "372kcal",
//     "protein": "6g",
//     "fat": "6g",
//     "sodium": "130mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Yogurt Melon Shake",
//     "calories": "113kcal",
//     "protein": "3g",
//     "fat": "3g",
//     "sodium": "55mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen Yogurt Sundaes with Kahlua Caramel Sauce",
//     "calories": "365kcal",
//     "protein": "1g",
//     "fat": "16g",
//     "sodium": "26mg",
//     "status": "false1"
//   },
//   {
//     "food": "Frozen-Butter Pastry Dough",
//     "calories": "3373kcal",
//     "protein": "32g",
//     "fat": "210g",
//     "sodium": "1786mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruit and Cookie-Crust Pizza",
//     "calories": "454kcal",
//     "protein": "5g",
//     "fat": "22g",
//     "sodium": "309mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruit and Nut Chocolate Chunks",
//     "calories": "121kcal",
//     "protein": "2g",
//     "fat": "7g",
//     "sodium": "17mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruit and Nut Strudel Cookies",
//     "calories": "185kcal",
//     "protein": "2g",
//     "fat": "9g",
//     "sodium": "14mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruit and Seed Bars",
//     "calories": "118kcal",
//     "protein": "2g",
//     "fat": "9g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruit and Spice Granola",
//     "calories": "295kcal",
//     "protein": "6g",
//     "fat": "18g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruit bar & roll, apricot",
//     "calories": "336.04kcal",
//     "protein": "0.56g",
//     "fat": "0.26g",
//     "sodium": "36mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruit bar & roll, strawberry",
//     "calories": "330.53kcal",
//     "protein": "0.44g",
//     "fat": "0.16g",
//     "sodium": "39.3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruit bar, strawberry",
//     "calories": "309.9kcal",
//     "protein": "0.69g",
//     "fat": "0.08g",
//     "sodium": "56.8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruit bar, wholemeal, assorted flavours, Mother Earth",
//     "calories": "360.86kcal",
//     "protein": "5.69g",
//     "fat": "7.17g",
//     "sodium": "49.1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruit candy, pineapple, chocolate coated",
//     "calories": "399.15kcal",
//     "protein": "3.56g",
//     "fat": "10.81g",
//     "sodium": "43mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruit Cup with Lime Syrup",
//     "calories": "94kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Fruit drink orange, sweetened, shelf stable, ready to drink, composite, fortified vitamin C",
//     "calories": "28.34kcal",
//     "protein": "0.25g",
//     "fat": "0.1g",
//     "sodium": "3.3mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Fruit drink, blackcurrant, sweetened, shelf stable, ready to drink, composite",
//     "calories": "46.97kcal",
//     "protein": "0.25g",
//     "fat": "0g",
//     "sodium": "6.7mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Fruit drink, blackcurrant, sweetened, shelf stable, ready to drink, composite, fortified vitamin C",
//     "calories": "35.99kcal",
//     "protein": "0.25g",
//     "fat": "0g",
//     "sodium": "6.7mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Fruit drink, cranberry, sweetened, shelf stable, ready to drink, composite",
//     "calories": "31.39kcal",
//     "protein": "0g",
//     "fat": "0.1g",
//     "sodium": "6.4mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Fruit drink, cranberry, sweetened, shelf stable, ready to drink, composite, fortified vitamin C",
//     "calories": "38.23kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "6.4mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Fruit drink, cranberry, unsweetened, shelf stable, ready to drink, composite",
//     "calories": "2.44kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "6.4mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Fruit drink, golden pash, ready to drink, Golden Circle, fortified vitamin C",
//     "calories": "40.05kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "10mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Fruit drink, orange & mango, diluted from juice concentrate with water, ready to drink",
//     "calories": "42.69kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "24mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Fruit drink, orange, unsweetened, shelf stable or refrigerated, ready to drink, composite, fortified vitamin C",
//     "calories": "14.1kcal",
//     "protein": "0.25g",
//     "fat": "0.1g",
//     "sodium": "3.3mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Fruit drink, pineapple & mango, ready to drink, Golden Circle, fortified vitamin C",
//     "calories": "20.47kcal",
//     "protein": "0.12g",
//     "fat": "0g",
//     "sodium": "10mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Fruit drink, tropical punch, ready to drink, Golden Circle, fortified vitamin C",
//     "calories": "20kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "10mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruit Gratin with Calvados and Mascarpone",
//     "calories": "527kcal",
//     "protein": "5g",
//     "fat": "17g",
//     "sodium": "147mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruit gum",
//     "calories": "262kcal",
//     "protein": "6.5g",
//     "fat": "0g",
//     "sodium": "30mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruit Juice and Vodka Punch",
//     "calories": "307kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "18mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruit leather, apricot",
//     "calories": "260.36kcal",
//     "protein": "4.81g",
//     "fat": "0.19g",
//     "sodium": "28.6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruit mix, dried",
//     "calories": "304.03kcal",
//     "protein": "2.31g",
//     "fat": "0.9g",
//     "sodium": "78mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruit roll, strawberry, Uncle Tobys",
//     "calories": "316.84kcal",
//     "protein": "0.75g",
//     "fat": "0.33g",
//     "sodium": "313mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruit Salad with Ginger Syrup",
//     "calories": "542kcal",
//     "protein": "4g",
//     "fat": "1g",
//     "sodium": "24mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruit Salad with Herb, Citrus, Mint-Maple, or Basic Syrup",
//     "calories": "245kcal",
//     "protein": "4g",
//     "fat": "2g",
//     "sodium": "17mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruit Salad with Honey-Lime Dressing",
//     "calories": "143kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "26mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruit Salad with Poppy Seed Dressing",
//     "calories": "373kcal",
//     "protein": "3g",
//     "fat": "20g",
//     "sodium": "147mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Fruit salad, in juice, no sugar added, canned, drained, composite",
//     "calories": "48.15kcal",
//     "protein": "0.33g",
//     "fat": "0.3g",
//     "sodium": "4.3mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Fruit salad, in juice, no sugar added, canned, undrained, composite",
//     "calories": "47.42kcal",
//     "protein": "0.35g",
//     "fat": "0.3g",
//     "sodium": "2.7mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Fruit salad, in light syrup, sugar-sweetened, canned, drained, composite",
//     "calories": "59.45kcal",
//     "protein": "0.31g",
//     "fat": "0.3g",
//     "sodium": "4.3mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Fruit salad, in light syrup, sugar-sweetened, canned, undrained, composite",
//     "calories": "60.04kcal",
//     "protein": "0.26g",
//     "fat": "0.3g",
//     "sodium": "2.7mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Fruit salad, in syrup, sugar-sweetened, canned, drained, composite",
//     "calories": "70.8kcal",
//     "protein": "0.45g",
//     "fat": "0.3g",
//     "sodium": "4.3mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Fruit salad, in syrup, sugar-sweetened, canned, undrained, composite",
//     "calories": "72.46kcal",
//     "protein": "0.26g",
//     "fat": "0.3g",
//     "sodium": "2.7mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Fruit salad, in water, artificially-sweetened, canned, drained, composite",
//     "calories": "29.22kcal",
//     "protein": "0.33g",
//     "fat": "0.3g",
//     "sodium": "4.3mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Fruit salad, in water, artificially-sweetened, canned, undrained, composite",
//     "calories": "29.5kcal",
//     "protein": "0.3g",
//     "fat": "0.3g",
//     "sodium": "2.7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruit with Cassis-Spiked Lemon Curd Sauce",
//     "calories": "196kcal",
//     "protein": "4g",
//     "fat": "6g",
//     "sodium": "46mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruitcake Brownies",
//     "calories": "312kcal",
//     "protein": "3g",
//     "fat": "19g",
//     "sodium": "86mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruitcake Trifle",
//     "calories": "1102kcal",
//     "protein": "17g",
//     "fat": "46g",
//     "sodium": "303mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fruitcake with Ginger Cream Cheese",
//     "calories": "109kcal",
//     "protein": "2g",
//     "fat": "8g",
//     "sodium": "89mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fusilli with Gorgonzola and Walnut Sauce",
//     "calories": "236kcal",
//     "protein": "7g",
//     "fat": "11g",
//     "sodium": "103mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fusilli with Lentils and Sausage",
//     "calories": "563kcal",
//     "protein": "26g",
//     "fat": "21g",
//     "sodium": "375mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fusilli with Porcini Puttanesca Sauce",
//     "calories": "290kcal",
//     "protein": "11g",
//     "fat": "2g",
//     "sodium": "454mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fusilli with Shrimp and Paneed Chicken",
//     "calories": "860kcal",
//     "protein": "48g",
//     "fat": "34g",
//     "sodium": "1342mg",
//     "status": "false1"
//   },
//   {
//     "food": "Fuzzy Navel",
//     "calories": "203kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gaga Filling",
//     "calories": "2478kcal",
//     "protein": "119g",
//     "fat": "214g",
//     "sodium": "3543mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gala Apple \"Newtons\" with Honey Cream",
//     "calories": "508kcal",
//     "protein": "6g",
//     "fat": "26g",
//     "sodium": "204mg",
//     "status": "false1"
//   },
//   {
//     "food": "Galician Pie",
//     "calories": "828kcal",
//     "protein": "42g",
//     "fat": "29g",
//     "sodium": "847mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gallette of Sweet Potato-Crusted Tobago Crab Cake",
//     "calories": "916kcal",
//     "protein": "29g",
//     "fat": "60g",
//     "sodium": "1096mg",
//     "status": "false1"
//   },
//   {
//     "food": "Game Hens with Honey, Vinegar and Spice Glaze",
//     "calories": "1439kcal",
//     "protein": "107g",
//     "fat": "101g",
//     "sodium": "384mg",
//     "status": "false1"
//   },
//   {
//     "food": "Game Hens with Madeira and Wild Mushrooms",
//     "calories": "1611kcal",
//     "protein": "123g",
//     "fat": "114g",
//     "sodium": "759mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garam Masala",
//     "calories": "15kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garbanzo Bean and Potato Fritters with Red Bell Pepper Harissa",
//     "calories": "324kcal",
//     "protein": "5g",
//     "fat": "23g",
//     "sodium": "513mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garbanzo Bean Salad with Tomatoes and Chipotle Chilies",
//     "calories": "495kcal",
//     "protein": "18g",
//     "fat": "24g",
//     "sodium": "583mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garden cress, leafy vegetable, leaves & stems, raw",
//     "calories": "25.3kcal",
//     "protein": "2.63g",
//     "fat": "0.7g",
//     "sodium": "14mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garden Greens and Goat Cheese Pasta",
//     "calories": "544kcal",
//     "protein": "22g",
//     "fat": "15g",
//     "sodium": "97mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garden Mint Chutney",
//     "calories": "307kcal",
//     "protein": "2g",
//     "fat": "0g",
//     "sodium": "493mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garden Tuna Salad",
//     "calories": "282kcal",
//     "protein": "13g",
//     "fat": "13g",
//     "sodium": "131mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garden Vegetable Enchiladas",
//     "calories": "538kcal",
//     "protein": "23g",
//     "fat": "31g",
//     "sodium": "844mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garden Vegetable Latkes",
//     "calories": "163kcal",
//     "protein": "2g",
//     "fat": "13g",
//     "sodium": "126mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garfish, flesh, raw",
//     "calories": "95.7kcal",
//     "protein": "20.63g",
//     "fat": "1.22g",
//     "sodium": "289mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garlic Anchovy Artichoke Hearts",
//     "calories": "275kcal",
//     "protein": "8g",
//     "fat": "17g",
//     "sodium": "644mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garlic and Anchovy Dip with Vegetables",
//     "calories": "737kcal",
//     "protein": "4g",
//     "fat": "78g",
//     "sodium": "338mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garlic and Herb Spatchcock Grilled Chicken",
//     "calories": "1275kcal",
//     "protein": "110g",
//     "fat": "89g",
//     "sodium": "1341mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garlic and Pepper Marinated Flank Steak",
//     "calories": "451kcal",
//     "protein": "50g",
//     "fat": "26g",
//     "sodium": "999mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garlic and Rosemary Focaccia",
//     "calories": "4256kcal",
//     "protein": "101g",
//     "fat": "119g",
//     "sodium": "7072mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garlic and Rosemary Roasted Pork",
//     "calories": "422kcal",
//     "protein": "22g",
//     "fat": "31g",
//     "sodium": "103mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garlic and Rosemary Steak with Potato-Onion Cakes",
//     "calories": "895kcal",
//     "protein": "56g",
//     "fat": "68g",
//     "sodium": "1310mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garlic and Rosemary Stuffed Mushrooms",
//     "calories": "229kcal",
//     "protein": "6g",
//     "fat": "14g",
//     "sodium": "155mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garlic and Saffron Soup",
//     "calories": "410kcal",
//     "protein": "14g",
//     "fat": "25g",
//     "sodium": "1162mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garlic and Sage Marinated Antipasto",
//     "calories": "395kcal",
//     "protein": "13g",
//     "fat": "32g",
//     "sodium": "688mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garlic Baguette Crumbs",
//     "calories": "95kcal",
//     "protein": "1g",
//     "fat": "7g",
//     "sodium": "103mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garlic Bread",
//     "calories": "408kcal",
//     "protein": "12g",
//     "fat": "21g",
//     "sodium": "689mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garlic Bread Puddings",
//     "calories": "116kcal",
//     "protein": "6g",
//     "fat": "5g",
//     "sodium": "361mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garlic Broth",
//     "calories": "1kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "9mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garlic Bruschetta",
//     "calories": "201kcal",
//     "protein": "4g",
//     "fat": "11g",
//     "sodium": "210mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garlic French Vinaigrette",
//     "calories": "394kcal",
//     "protein": "2g",
//     "fat": "41g",
//     "sodium": "58mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garlic Lime Chicken Breasts",
//     "calories": "500kcal",
//     "protein": "46g",
//     "fat": "34g",
//     "sodium": "138mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garlic Mashed Potatoes",
//     "calories": "441kcal",
//     "protein": "7g",
//     "fat": "22g",
//     "sodium": "29mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garlic Mashed Potatoes with Chives",
//     "calories": "401kcal",
//     "protein": "6g",
//     "fat": "27g",
//     "sodium": "29mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garlic Mojo Hot Dogs",
//     "calories": "358kcal",
//     "protein": "7g",
//     "fat": "23g",
//     "sodium": "319mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garlic Orange Pork Chops",
//     "calories": "871kcal",
//     "protein": "93g",
//     "fat": "48g",
//     "sodium": "248mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garlic Parmesan Popovers",
//     "calories": "156kcal",
//     "protein": "9g",
//     "fat": "5g",
//     "sodium": "361mg",
//     "status": "false1"
//   },
//   {
//     "food": "Garlic-Curry Chicken Thighs With Yogurt Sauce",
//     "calories": "12213kcal",
//     "protein": "907g",
//     "fat": "919g",
//     "sodium": "5252mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gelatin",
//     "calories": "346.63kcal",
//     "protein": "84.36g",
//     "fat": "0.4g",
//     "sodium": "323mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gelatin, reduced calories, prepared",
//     "calories": "4.51kcal",
//     "protein": "1.11g",
//     "fat": "0g",
//     "sodium": "48mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gemelli with Asparagus, Smoked Salmon, and Dill",
//     "calories": "615kcal",
//     "protein": "23g",
//     "fat": "18g",
//     "sodium": "506mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gemelli with Broccoli Rabe and Anchovies",
//     "calories": "828kcal",
//     "protein": "26g",
//     "fat": "32g",
//     "sodium": "763mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gemelli with Garlic, Herbs, and Bocconcini Mozzarella",
//     "calories": "727kcal",
//     "protein": "29g",
//     "fat": "28g",
//     "sodium": "374mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gemelli with Zucchini, Tomatoes, and Bacon",
//     "calories": "578kcal",
//     "protein": "20g",
//     "fat": "28g",
//     "sodium": "488mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gemfish, flesh, raw",
//     "calories": "143.9kcal",
//     "protein": "19.88g",
//     "fat": "7.01g",
//     "sodium": "55.7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger Cream",
//     "calories": "231kcal",
//     "protein": "2g",
//     "fat": "24g",
//     "sodium": "21mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger Crunch Cake with Strawberry Sauce",
//     "calories": "6841kcal",
//     "protein": "62g",
//     "fat": "460g",
//     "sodium": "3491mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger Custard",
//     "calories": "154kcal",
//     "protein": "5g",
//     "fat": "5g",
//     "sodium": "58mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger Custard Sauce",
//     "calories": "185kcal",
//     "protein": "3g",
//     "fat": "15g",
//     "sodium": "18mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger Fried Rice with Shiitake Mushrooms",
//     "calories": "201kcal",
//     "protein": "4g",
//     "fat": "7g",
//     "sodium": "255mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger Garlic Green Beans",
//     "calories": "79kcal",
//     "protein": "3g",
//     "fat": "4g",
//     "sodium": "233mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger Lime Cordial",
//     "calories": "125kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "11mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger Marmalade Chicken Salad",
//     "calories": "451kcal",
//     "protein": "56g",
//     "fat": "10g",
//     "sodium": "162mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger Molasses Lace Cookies",
//     "calories": "22kcal",
//     "protein": "0g",
//     "fat": "1g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger Mule",
//     "calories": "221kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "18mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger Pineapple Fried Rice",
//     "calories": "210kcal",
//     "protein": "4g",
//     "fat": "3g",
//     "sodium": "292mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger Pineapple Sparkling Punch",
//     "calories": "131kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "18mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger Pudding",
//     "calories": "483kcal",
//     "protein": "8g",
//     "fat": "18g",
//     "sodium": "268mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger Rum-Glazed Ham",
//     "calories": "857kcal",
//     "protein": "118g",
//     "fat": "35g",
//     "sodium": "11462mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger Shallot Marmalade",
//     "calories": "150kcal",
//     "protein": "1g",
//     "fat": "6g",
//     "sodium": "196mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger Souffles with Chocolate Sabayon",
//     "calories": "449kcal",
//     "protein": "12g",
//     "fat": "14g",
//     "sodium": "225mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger Spice Cookies",
//     "calories": "110kcal",
//     "protein": "1g",
//     "fat": "4g",
//     "sodium": "144mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger-Curry Sugar Cookies",
//     "calories": "48kcal",
//     "protein": "1g",
//     "fat": "3g",
//     "sodium": "23mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger-Dill Pickles",
//     "calories": "162kcal",
//     "protein": "2g",
//     "fat": "0g",
//     "sodium": "2872mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gingered Apple Slaw",
//     "calories": "299kcal",
//     "protein": "1g",
//     "fat": "23g",
//     "sodium": "185mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gingered Beet Risotto",
//     "calories": "425kcal",
//     "protein": "12g",
//     "fat": "13g",
//     "sodium": "385mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gingered Brioche Summer Pudding with Sour Cream Mascarpone",
//     "calories": "588kcal",
//     "protein": "10g",
//     "fat": "5g",
//     "sodium": "219mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gingered Cantaloupe Shake",
//     "calories": "190kcal",
//     "protein": "4g",
//     "fat": "4g",
//     "sodium": "90mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gingered Cream Cheese Grapes",
//     "calories": "244kcal",
//     "protein": "3g",
//     "fat": "22g",
//     "sodium": "109mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gingered Fish and Watercress Soup",
//     "calories": "134kcal",
//     "protein": "19g",
//     "fat": "5g",
//     "sodium": "441mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gingered Lemon Almond Squares",
//     "calories": "251kcal",
//     "protein": "2g",
//     "fat": "19g",
//     "sodium": "23mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gingered Mint Pesto",
//     "calories": "667kcal",
//     "protein": "7g",
//     "fat": "65g",
//     "sodium": "182mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gingered Nectarine Cobbler",
//     "calories": "554kcal",
//     "protein": "7g",
//     "fat": "25g",
//     "sodium": "455mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gingered Parsnip Bisque",
//     "calories": "316kcal",
//     "protein": "9g",
//     "fat": "17g",
//     "sodium": "118mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gingered Pear and Currant Breads",
//     "calories": "282kcal",
//     "protein": "4g",
//     "fat": "9g",
//     "sodium": "166mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gingered Pear Pie with Golden Raisins",
//     "calories": "247kcal",
//     "protein": "2g",
//     "fat": "5g",
//     "sodium": "14mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gingered Plum Barbeque Sauce",
//     "calories": "181kcal",
//     "protein": "3g",
//     "fat": "1g",
//     "sodium": "834mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gingered Poached Apricot and Raspberry Compote",
//     "calories": "194kcal",
//     "protein": "2g",
//     "fat": "2g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gingered Red Cabbage and Carrots",
//     "calories": "98kcal",
//     "protein": "2g",
//     "fat": "4g",
//     "sodium": "216mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gingered Shrimp with Asian Noodles",
//     "calories": "412kcal",
//     "protein": "30g",
//     "fat": "12g",
//     "sodium": "976mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gingered Squash and Ham Soup with Cornmeal Dumplings",
//     "calories": "186kcal",
//     "protein": "11g",
//     "fat": "4g",
//     "sodium": "971mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gingered Vegetable Stir-Fry",
//     "calories": "91kcal",
//     "protein": "2g",
//     "fat": "5g",
//     "sodium": "459mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gingered-Peach Pavlovas",
//     "calories": "416kcal",
//     "protein": "3g",
//     "fat": "16g",
//     "sodium": "36mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger-Garlic Hummus",
//     "calories": "404kcal",
//     "protein": "20g",
//     "fat": "11g",
//     "sodium": "112mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger-Garlic Shrimp",
//     "calories": "172kcal",
//     "protein": "18g",
//     "fat": "5g",
//     "sodium": "1315mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger-Glazed Almonds",
//     "calories": "224kcal",
//     "protein": "7g",
//     "fat": "19g",
//     "sodium": "300mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger-Hoisin Beef and Scallions on Crispy Noodle Cakes",
//     "calories": "85kcal",
//     "protein": "3g",
//     "fat": "6g",
//     "sodium": "101mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger-Honey Lemonade",
//     "calories": "247kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "11mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ginger-Lime Squares",
//     "calories": "153kcal",
//     "protein": "2g",
//     "fat": "7g",
//     "sodium": "78mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gluten-Free Blueberry Corn Muffins",
//     "calories": "248kcal",
//     "protein": "4g",
//     "fat": "10g",
//     "sodium": "391mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gluten-Free Citrus Sugar Cookies",
//     "calories": "122kcal",
//     "protein": "1g",
//     "fat": "6g",
//     "sodium": "18mg",
//     "status": "false1"
//   },
//   {
//     "food": "Goat Cheese, Artichoke, and Smoked Ham Strata",
//     "calories": "719kcal",
//     "protein": "42g",
//     "fat": "40g",
//     "sodium": "1931mg",
//     "status": "false1"
//   },
//   {
//     "food": "Goat Cheese, Date, and Bacon Strudels",
//     "calories": "120kcal",
//     "protein": "3g",
//     "fat": "7g",
//     "sodium": "82mg",
//     "status": "false1"
//   },
//   {
//     "food": "Goat Cheese, Salami, and Tomato on Mini-Bagels",
//     "calories": "209kcal",
//     "protein": "11g",
//     "fat": "9g",
//     "sodium": "456mg",
//     "status": "false1"
//   },
//   {
//     "food": "Goat Cheese, Sweet Potato, and Crouton Omelets",
//     "calories": "545kcal",
//     "protein": "26g",
//     "fat": "30g",
//     "sodium": "520mg",
//     "status": "false1"
//   },
//   {
//     "food": "Goat Cheese-Arugula Ravioli with Tomato-Pancetta Butter",
//     "calories": "962kcal",
//     "protein": "32g",
//     "fat": "64g",
//     "sodium": "1169mg",
//     "status": "false1"
//   },
//   {
//     "food": "Goat Cheese-Onion Naan with Mango Salsa",
//     "calories": "447kcal",
//     "protein": "16g",
//     "fat": "20g",
//     "sodium": "579mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Goat Cheese-Stuffed Turkey Burgers with Roasted Red Pepper Relish",
//     "calories": "481kcal",
//     "protein": "30g",
//     "fat": "22g",
//     "sodium": "819mg",
//     "status": "false1"
//   },
//   {
//     "food": "Goat, rib loin chop, lean, raw",
//     "calories": "117.66kcal",
//     "protein": "21.31g",
//     "fat": "3.5g",
//     "sodium": "82mg",
//     "status": "false1"
//   },
//   {
//     "food": "Goat-Cheese Scalloped Potatoes with Chive Blossoms",
//     "calories": "313kcal",
//     "protein": "10g",
//     "fat": "16g",
//     "sodium": "579mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gochujang Gazpacho",
//     "calories": "368kcal",
//     "protein": "5g",
//     "fat": "29g",
//     "sodium": "904mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gochujang Pork Shoulder Steaks",
//     "calories": "569kcal",
//     "protein": "34g",
//     "fat": "33g",
//     "sodium": "1411mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gochujang-Date Sauce",
//     "calories": "140kcal",
//     "protein": "4g",
//     "fat": "5g",
//     "sodium": "1282mg",
//     "status": "false1"
//   },
//   {
//     "food": "Goddess Guacamole",
//     "calories": "365kcal",
//     "protein": "7g",
//     "fat": "30g",
//     "sodium": "272mg",
//     "status": "false1"
//   },
//   {
//     "food": "Golden and Crimson Beet Salad with Oranges, Fennel, and Feta",
//     "calories": "311kcal",
//     "protein": "8g",
//     "fat": "23g",
//     "sodium": "396mg",
//     "status": "false1"
//   },
//   {
//     "food": "Golden and Long Beet Salad with Roquefort",
//     "calories": "223kcal",
//     "protein": "7g",
//     "fat": "15g",
//     "sodium": "400mg",
//     "status": "false1"
//   },
//   {
//     "food": "Golden Beet Carpaccio",
//     "calories": "164kcal",
//     "protein": "1g",
//     "fat": "16g",
//     "sodium": "99mg",
//     "status": "false1"
//   },
//   {
//     "food": "Golden Cake with Chocolate Sour Cream Frosting",
//     "calories": "507kcal",
//     "protein": "6g",
//     "fat": "25g",
//     "sodium": "408mg",
//     "status": "false1"
//   },
//   {
//     "food": "Golden Colcannon Pie",
//     "calories": "244kcal",
//     "protein": "6g",
//     "fat": "8g",
//     "sodium": "41mg",
//     "status": "false1"
//   },
//   {
//     "food": "Golden Couscous",
//     "calories": "383kcal",
//     "protein": "13g",
//     "fat": "14g",
//     "sodium": "63mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grapefruit Pie",
//     "calories": "447kcal",
//     "protein": "3g",
//     "fat": "16g",
//     "sodium": "219mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grapefruit Sabayon Gratin",
//     "calories": "133kcal",
//     "protein": "2g",
//     "fat": "2g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grapefruit Tart",
//     "calories": "225kcal",
//     "protein": "3g",
//     "fat": "13g",
//     "sodium": "145mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grapefruit with Campari Syrup",
//     "calories": "610kcal",
//     "protein": "10g",
//     "fat": "2g",
//     "sodium": "0mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grapefruit with Chile and Rosemary",
//     "calories": "69kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "0mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grapefruit, Avocado and Fennel Salad",
//     "calories": "226kcal",
//     "protein": "3g",
//     "fat": "15g",
//     "sodium": "36mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grapefruit, Beet, and Blue Cheese Salad",
//     "calories": "179kcal",
//     "protein": "5g",
//     "fat": "13g",
//     "sodium": "228mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grapefruit, flesh, raw",
//     "calories": "24.91kcal",
//     "protein": "0.63g",
//     "fat": "0.1g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grapefruit, flesh, raw, Morrison's Seedless",
//     "calories": "45.22kcal",
//     "protein": "0.31g",
//     "fat": "0.1g",
//     "sodium": "1.6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grapefruit, Ginger, and Star Anise Compote",
//     "calories": "232kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grapefruit, in syrup, canned, undrained",
//     "calories": "66.32kcal",
//     "protein": "0.5g",
//     "fat": "0.1g",
//     "sodium": "10mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grass-Fed Beef Meatloaf in a Bacon Blanket",
//     "calories": "880kcal",
//     "protein": "55g",
//     "fat": "62g",
//     "sodium": "1487mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grasshopper Hot Chocolate",
//     "calories": "374kcal",
//     "protein": "9g",
//     "fat": "13g",
//     "sodium": "96mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grasshopper I",
//     "calories": "275kcal",
//     "protein": "1g",
//     "fat": "9g",
//     "sodium": "18mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grasshopper II",
//     "calories": "444kcal",
//     "protein": "1g",
//     "fat": "17g",
//     "sodium": "23mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gratin Dauphinoise (Scalloped Potatoes)",
//     "calories": "228kcal",
//     "protein": "6g",
//     "fat": "8g",
//     "sodium": "42mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gratin of Butternut Squash",
//     "calories": "318kcal",
//     "protein": "6g",
//     "fat": "24g",
//     "sodium": "515mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gratin of Endive and Ham",
//     "calories": "336kcal",
//     "protein": "18g",
//     "fat": "22g",
//     "sodium": "784mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gratin of Greens",
//     "calories": "250kcal",
//     "protein": "15g",
//     "fat": "13g",
//     "sodium": "1735mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gratin of Potatoes",
//     "calories": "428kcal",
//     "protein": "13g",
//     "fat": "17g",
//     "sodium": "159mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gratin of Scallops with Porcini and Chives",
//     "calories": "195kcal",
//     "protein": "16g",
//     "fat": "4g",
//     "sodium": "524mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gratineed Gnocchi with Spinach and Ricotta",
//     "calories": "338kcal",
//     "protein": "14g",
//     "fat": "14g",
//     "sodium": "731mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gratineed Mustard Creamed Onions",
//     "calories": "136kcal",
//     "protein": "5g",
//     "fat": "6g",
//     "sodium": "157mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gravlaks with Sweet Mustard Sauce",
//     "calories": "517kcal",
//     "protein": "46g",
//     "fat": "30g",
//     "sodium": "1227mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gravlax with Mustard Sauce",
//     "calories": "293kcal",
//     "protein": "15g",
//     "fat": "20g",
//     "sodium": "508mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gravy",
//     "calories": "303kcal",
//     "protein": "27g",
//     "fat": "18g",
//     "sodium": "202mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gravy Base",
//     "calories": "224kcal",
//     "protein": "18g",
//     "fat": "10g",
//     "sodium": "322mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Gravy, dry powder mix, assorted flavours, as purchased, composite",
//     "calories": "244.45kcal",
//     "protein": "3.91g",
//     "fat": "6.6g",
//     "sodium": "3300mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Gravy, dry powder mix, assorted flavours, prepared with water, composite",
//     "calories": "24.09kcal",
//     "protein": "0.39g",
//     "fat": "0.65g",
//     "sodium": "326.09mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gravy, mushroom, dry powder",
//     "calories": "328.59kcal",
//     "protein": "10g",
//     "fat": "4g",
//     "sodium": "6580mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gravy, ready to eat, Kentucky Fried Chicken",
//     "calories": "125.75kcal",
//     "protein": "3.69g",
//     "fat": "8.5g",
//     "sodium": "470mg",
//     "status": "false1"
//   },
//   {
//     "food": "Great British Fool",
//     "calories": "129kcal",
//     "protein": "1g",
//     "fat": "8g",
//     "sodium": "24mg",
//     "status": "false1"
//   },
//   {
//     "food": "Great Curry in a Hurry",
//     "calories": "493kcal",
//     "protein": "38g",
//     "fat": "30g",
//     "sodium": "134mg",
//     "status": "false1"
//   },
//   {
//     "food": "Great Gazpacho",
//     "calories": "90kcal",
//     "protein": "3g",
//     "fat": "3g",
//     "sodium": "853mg",
//     "status": "false1"
//   },
//   {
//     "food": "Great-Grandmother's Cloverleaf Rolls",
//     "calories": "242kcal",
//     "protein": "5g",
//     "fat": "10g",
//     "sodium": "209mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greek Chicken and Potatoes",
//     "calories": "1526kcal",
//     "protein": "83g",
//     "fat": "101g",
//     "sodium": "312mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greek Garlic Potato Dip (Skordalia)",
//     "calories": "340kcal",
//     "protein": "3g",
//     "fat": "31g",
//     "sodium": "281mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greek Honey and Anise Twists",
//     "calories": "86kcal",
//     "protein": "1g",
//     "fat": "3g",
//     "sodium": "69mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greek Mussel and Potato Stew",
//     "calories": "306kcal",
//     "protein": "13g",
//     "fat": "16g",
//     "sodium": "256mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greek Orzo and Shrimp Salad",
//     "calories": "263kcal",
//     "protein": "16g",
//     "fat": "9g",
//     "sodium": "545mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greek Potato and Almond Dip",
//     "calories": "483kcal",
//     "protein": "6g",
//     "fat": "38g",
//     "sodium": "96mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greek Potatoes with Lemon Vinaigrette",
//     "calories": "1004kcal",
//     "protein": "8g",
//     "fat": "82g",
//     "sodium": "30mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greek Salad",
//     "calories": "171kcal",
//     "protein": "4g",
//     "fat": "14g",
//     "sodium": "194mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greek Salad Pita Sandwiches",
//     "calories": "228kcal",
//     "protein": "6g",
//     "fat": "14g",
//     "sodium": "324mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greek Salad with Tuna",
//     "calories": "168kcal",
//     "protein": "16g",
//     "fat": "9g",
//     "sodium": "449mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greek Yogurt Bourekakia",
//     "calories": "142kcal",
//     "protein": "10g",
//     "fat": "9g",
//     "sodium": "370mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greek Yogurt Cheesecake with Pomegranate Syrup",
//     "calories": "853kcal",
//     "protein": "12g",
//     "fat": "55g",
//     "sodium": "768mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greek Yogurt Ice Cream",
//     "calories": "191kcal",
//     "protein": "6g",
//     "fat": "6g",
//     "sodium": "93mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greek-Herbed Spinach Latkes with Feta-Yogurt Sauce",
//     "calories": "20kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "50mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greek-Italian Chopped Salad",
//     "calories": "327kcal",
//     "protein": "10g",
//     "fat": "22g",
//     "sodium": "501mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greek-Style Braised Lamb Shanks",
//     "calories": "251kcal",
//     "protein": "17g",
//     "fat": "17g",
//     "sodium": "317mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greek-Style Cucumber and Yogurt Dip with Dill",
//     "calories": "244kcal",
//     "protein": "8g",
//     "fat": "11g",
//     "sodium": "1207mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greek-Style Lamb and Eggplant Lasagne",
//     "calories": "639kcal",
//     "protein": "26g",
//     "fat": "47g",
//     "sodium": "539mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greek-Style Penne with Lamb, Parsnips, Tomatoes, and Cinnamon",
//     "calories": "481kcal",
//     "protein": "17g",
//     "fat": "15g",
//     "sodium": "54mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greek-Style Quesadillas",
//     "calories": "332kcal",
//     "protein": "9g",
//     "fat": "26g",
//     "sodium": "364mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greek-Style Shrimp",
//     "calories": "412kcal",
//     "protein": "27g",
//     "fat": "23g",
//     "sodium": "2492mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Bean Salad with Asian-Style Dressing",
//     "calories": "277kcal",
//     "protein": "5g",
//     "fat": "22g",
//     "sodium": "162mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Bean Salad with Fennel and Toasted Pecan Dukkah",
//     "calories": "180kcal",
//     "protein": "4g",
//     "fat": "15g",
//     "sodium": "13mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Bean Salad with Fresh Tomato Chutney",
//     "calories": "59kcal",
//     "protein": "3g",
//     "fat": "0g",
//     "sodium": "12mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Bean Salad with Radishes and Prosciutto",
//     "calories": "178kcal",
//     "protein": "8g",
//     "fat": "12g",
//     "sodium": "433mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Bean Succotash",
//     "calories": "150kcal",
//     "protein": "3g",
//     "fat": "9g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Bean, Corn, and Coconut Stir-Fry (Thoren)",
//     "calories": "248kcal",
//     "protein": "5g",
//     "fat": "13g",
//     "sodium": "400mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Bean, Orange, and Green Olive Salad",
//     "calories": "107kcal",
//     "protein": "2g",
//     "fat": "6g",
//     "sodium": "162mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Bean, Potato and Leek Salad",
//     "calories": "398kcal",
//     "protein": "6g",
//     "fat": "23g",
//     "sodium": "79mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Green Bean, Red Onion, and Roast Potato Salad with Rosemary Vinaigrette",
//     "calories": "351kcal",
//     "protein": "6g",
//     "fat": "19g",
//     "sodium": "79mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Bean, Spinach, and Beet Salad",
//     "calories": "144kcal",
//     "protein": "3g",
//     "fat": "9g",
//     "sodium": "41mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Bean, Watercress and Radish Salad",
//     "calories": "139kcal",
//     "protein": "3g",
//     "fat": "11g",
//     "sodium": "88mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Bean, Yellow Bean and Cherry Tomato Salad",
//     "calories": "157kcal",
//     "protein": "3g",
//     "fat": "12g",
//     "sodium": "12mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Green Bean, Yellow Pepper, and Bacon Salad with Oregano Vinaigrette",
//     "calories": "182kcal",
//     "protein": "5g",
//     "fat": "16g",
//     "sodium": "157mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Bean, Zucchini and Potato Stew",
//     "calories": "174kcal",
//     "protein": "4g",
//     "fat": "10g",
//     "sodium": "167mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans and Arugula",
//     "calories": "88kcal",
//     "protein": "3g",
//     "fat": "5g",
//     "sodium": "308mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans and Celery Root Salad with Mustard Vinaigrette",
//     "calories": "109kcal",
//     "protein": "2g",
//     "fat": "7g",
//     "sodium": "234mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans and Roasted Squash with Sherry Soy Butter",
//     "calories": "326kcal",
//     "protein": "5g",
//     "fat": "19g",
//     "sodium": "258mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans and Zucchini with Sauce Verte",
//     "calories": "117kcal",
//     "protein": "2g",
//     "fat": "9g",
//     "sodium": "97mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans Braised with Tomatoes and Basil",
//     "calories": "110kcal",
//     "protein": "3g",
//     "fat": "7g",
//     "sodium": "10mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans with Bacon and Red Bell Pepper",
//     "calories": "234kcal",
//     "protein": "9g",
//     "fat": "18g",
//     "sodium": "305mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans with Balsamic-Shallot Butter",
//     "calories": "114kcal",
//     "protein": "3g",
//     "fat": "6g",
//     "sodium": "14mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans with Caramelized Pecans",
//     "calories": "135kcal",
//     "protein": "3g",
//     "fat": "10g",
//     "sodium": "200mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans with Crisp Shallots, Chile, and Mint",
//     "calories": "414kcal",
//     "protein": "5g",
//     "fat": "37g",
//     "sodium": "310mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans with Garlic, Lemon, and Parsley",
//     "calories": "112kcal",
//     "protein": "2g",
//     "fat": "9g",
//     "sodium": "9mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans with Ginger and Cashews",
//     "calories": "180kcal",
//     "protein": "5g",
//     "fat": "14g",
//     "sodium": "266mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans with Ginger Butter",
//     "calories": "76kcal",
//     "protein": "2g",
//     "fat": "5g",
//     "sodium": "153mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans with Maple-Pecan Butter",
//     "calories": "307kcal",
//     "protein": "3g",
//     "fat": "29g",
//     "sodium": "392mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans with Mushroom-Madeira Sauce",
//     "calories": "433kcal",
//     "protein": "4g",
//     "fat": "41g",
//     "sodium": "25mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans with Olives",
//     "calories": "98kcal",
//     "protein": "2g",
//     "fat": "7g",
//     "sodium": "48mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans with Orange and Rosemary Gremolata",
//     "calories": "124kcal",
//     "protein": "3g",
//     "fat": "9g",
//     "sodium": "14mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans with Pecan Pesto",
//     "calories": "313kcal",
//     "protein": "7g",
//     "fat": "25g",
//     "sodium": "22mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans with Pickled-Onion Relish",
//     "calories": "149kcal",
//     "protein": "3g",
//     "fat": "5g",
//     "sodium": "305mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans with Red Onion and Mustard Seed Vinaigrette",
//     "calories": "93kcal",
//     "protein": "2g",
//     "fat": "6g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans with Red Onion and Olives",
//     "calories": "108kcal",
//     "protein": "2g",
//     "fat": "7g",
//     "sodium": "309mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans with Roasted Onions",
//     "calories": "420kcal",
//     "protein": "9g",
//     "fat": "17g",
//     "sodium": "42mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans with Shallots, Hazelnuts, and Tarragon",
//     "calories": "115kcal",
//     "protein": "3g",
//     "fat": "8g",
//     "sodium": "187mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans with Shiitake Mushrooms",
//     "calories": "136kcal",
//     "protein": "4g",
//     "fat": "9g",
//     "sodium": "18mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans with Warm Bacon Dressing",
//     "calories": "161kcal",
//     "protein": "6g",
//     "fat": "12g",
//     "sodium": "199mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Beans, Peas, and Turnips in Warm Vinaigrette",
//     "calories": "108kcal",
//     "protein": "3g",
//     "fat": "7g",
//     "sodium": "207mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Chile Cheesecake with Papaya Salsa Wilson",
//     "calories": "273kcal",
//     "protein": "6g",
//     "fat": "22g",
//     "sodium": "186mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Chile Chicken Tamales",
//     "calories": "288kcal",
//     "protein": "8g",
//     "fat": "16g",
//     "sodium": "417mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Chile Mushroom Salsa Butter",
//     "calories": "513kcal",
//     "protein": "3g",
//     "fat": "53g",
//     "sodium": "713mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Chili Corn Bread",
//     "calories": "241kcal",
//     "protein": "8g",
//     "fat": "10g",
//     "sodium": "543mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Chili Hash Browns",
//     "calories": "503kcal",
//     "protein": "12g",
//     "fat": "31g",
//     "sodium": "720mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Curry Chicken",
//     "calories": "601kcal",
//     "protein": "24g",
//     "fat": "37g",
//     "sodium": "1630mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Olive Pesto",
//     "calories": "364kcal",
//     "protein": "6g",
//     "fat": "37g",
//     "sodium": "778mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Salad with Olives",
//     "calories": "215kcal",
//     "protein": "1g",
//     "fat": "22g",
//     "sodium": "142mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Salad with Orange Vinaigrette",
//     "calories": "252kcal",
//     "protein": "3g",
//     "fat": "24g",
//     "sodium": "42mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Salad with Orange, Fennel, and Asparagus",
//     "calories": "134kcal",
//     "protein": "2g",
//     "fat": "11g",
//     "sodium": "138mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Salad with Radishes and Creamy Mustard Dressing",
//     "calories": "290kcal",
//     "protein": "4g",
//     "fat": "30g",
//     "sodium": "67mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Tea Cheesecake",
//     "calories": "303kcal",
//     "protein": "6g",
//     "fat": "23g",
//     "sodium": "240mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Tea Ice Cream",
//     "calories": "228kcal",
//     "protein": "5g",
//     "fat": "18g",
//     "sodium": "108mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Tea Panna Cotta with Strawberries",
//     "calories": "147kcal",
//     "protein": "3g",
//     "fat": "7g",
//     "sodium": "27mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Tomato and Red Onion Relish",
//     "calories": "145kcal",
//     "protein": "2g",
//     "fat": "0g",
//     "sodium": "2569mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green Vegetable Salad",
//     "calories": "221kcal",
//     "protein": "12g",
//     "fat": "13g",
//     "sodium": "184mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green-Bean and Prosciutto Negimaki",
//     "calories": "19kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "130mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green-Curry Chicken with Peas and Basil",
//     "calories": "303kcal",
//     "protein": "29g",
//     "fat": "18g",
//     "sodium": "92mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greengage, flesh & skin, raw",
//     "calories": "49.39kcal",
//     "protein": "0.75g",
//     "fat": "0.56g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greengage, stewed",
//     "calories": "42.55kcal",
//     "protein": "0.56g",
//     "fat": "0.47g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greengage, stewed with sugar",
//     "calories": "88.96kcal",
//     "protein": "0.56g",
//     "fat": "0.43g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green-Olive and Caper Tapenade",
//     "calories": "841kcal",
//     "protein": "4g",
//     "fat": "92g",
//     "sodium": "1973mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green-Onion Risotto",
//     "calories": "448kcal",
//     "protein": "15g",
//     "fat": "18g",
//     "sodium": "379mg",
//     "status": "false1"
//   },
//   {
//     "food": "Green-Peppercorn Cornmeal Crackers",
//     "calories": "32kcal",
//     "protein": "1g",
//     "fat": "2g",
//     "sodium": "53mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greens and Bulgur Gratin",
//     "calories": "406kcal",
//     "protein": "18g",
//     "fat": "20g",
//     "sodium": "305mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greens and Grains Scramble",
//     "calories": "335kcal",
//     "protein": "15g",
//     "fat": "24g",
//     "sodium": "1068mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greens with Bacon, Mushrooms, and Blue Cheese",
//     "calories": "175kcal",
//     "protein": "6g",
//     "fat": "15g",
//     "sodium": "213mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greens-Filled Ravioli with Walnuts",
//     "calories": "1254kcal",
//     "protein": "43g",
//     "fat": "47g",
//     "sodium": "1635mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gremolata",
//     "calories": "18kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gremolata Shrimp",
//     "calories": "95kcal",
//     "protein": "5g",
//     "fat": "7g",
//     "sodium": "201mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grey mullet, flesh, raw",
//     "calories": "121.49kcal",
//     "protein": "22.06g",
//     "fat": "3.4g",
//     "sodium": "57mg",
//     "status": "false1"
//   },
//   {
//     "food": "Greyhound",
//     "calories": "186kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Gribiche Sauce",
//     "calories": "327kcal",
//     "protein": "4g",
//     "fat": "33g",
//     "sodium": "476mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Bell Peppers with Criolla Sauce",
//     "calories": "92kcal",
//     "protein": "1g",
//     "fat": "6g",
//     "sodium": "325mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Bloody Mary",
//     "calories": "198kcal",
//     "protein": "3g",
//     "fat": "1g",
//     "sodium": "822mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Boneless Salmon Steaks with Horseradish Dill Butter",
//     "calories": "1305kcal",
//     "protein": "92g",
//     "fat": "100g",
//     "sodium": "923mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Bratwurst and Onion Open-Face Sandwiches",
//     "calories": "667kcal",
//     "protein": "23g",
//     "fat": "50g",
//     "sodium": "1500mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Bread Topped with Arugula, Goat Cheese, Olives and Onions",
//     "calories": "208kcal",
//     "protein": "6g",
//     "fat": "16g",
//     "sodium": "248mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Bread with Olive Oil",
//     "calories": "84kcal",
//     "protein": "0g",
//     "fat": "9g",
//     "sodium": "10mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Brie, Apple, and Watercress",
//     "calories": "201kcal",
//     "protein": "9g",
//     "fat": "16g",
//     "sodium": "287mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Brined Chicken with Chimichurri Sauce",
//     "calories": "1511kcal",
//     "protein": "96g",
//     "fat": "118g",
//     "sodium": "3097mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Brined Salmon and Eggplant with Fennel Cucumber Relish",
//     "calories": "492kcal",
//     "protein": "7g",
//     "fat": "7g",
//     "sodium": "16984mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Brined Vegetables",
//     "calories": "139kcal",
//     "protein": "1g",
//     "fat": "4g",
//     "sodium": "2943mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Brown-Sugar Peaches with White Chocolate",
//     "calories": "280kcal",
//     "protein": "3g",
//     "fat": "21g",
//     "sodium": "16mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Burgers with Roquefort Mayonnaise and Barbecued Red Onions",
//     "calories": "530kcal",
//     "protein": "30g",
//     "fat": "35g",
//     "sodium": "628mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Butterflied Leg of Lamb and Vegetables with Lemon-Herb Dressing",
//     "calories": "907kcal",
//     "protein": "33g",
//     "fat": "73g",
//     "sodium": "761mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Butterflied Leg of Lamb with Lemon, Herbs, and Garlic",
//     "calories": "572kcal",
//     "protein": "46g",
//     "fat": "41g",
//     "sodium": "859mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Butterflied Leg of Lamb with Tomato-Fennel Vinaigrette",
//     "calories": "232kcal",
//     "protein": "9g",
//     "fat": "20g",
//     "sodium": "489mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Butterflied Prawns with Sriracha-Lemongrass Butter",
//     "calories": "262kcal",
//     "protein": "4g",
//     "fat": "27g",
//     "sodium": "375mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Charmoula Quail",
//     "calories": "201kcal",
//     "protein": "7g",
//     "fat": "18g",
//     "sodium": "302mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Cheddar and Bacon on Raisin Bread",
//     "calories": "674kcal",
//     "protein": "25g",
//     "fat": "53g",
//     "sodium": "930mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Cheddar and Bacon with Mango Chutney",
//     "calories": "607kcal",
//     "protein": "25g",
//     "fat": "44g",
//     "sodium": "860mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Cheddar and Fennel Sandwiches with Curry Mayo",
//     "calories": "694kcal",
//     "protein": "22g",
//     "fat": "49g",
//     "sodium": "988mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Cheddar Cheese and Ham Sandwiches",
//     "calories": "536kcal",
//     "protein": "26g",
//     "fat": "33g",
//     "sodium": "961mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Cheddar, Tomato and Bacon Sandwiches",
//     "calories": "1336kcal",
//     "protein": "51g",
//     "fat": "60g",
//     "sodium": "2508mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Cheese with Onion Jam, Taleggio, and Escarole",
//     "calories": "1145kcal",
//     "protein": "63g",
//     "fat": "81g",
//     "sodium": "1939mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Cheese with Smoked Turkey and Avocado",
//     "calories": "596kcal",
//     "protein": "35g",
//     "fat": "35g",
//     "sodium": "831mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Chicken and Hot Cherry Pepper Panino",
//     "calories": "859kcal",
//     "protein": "47g",
//     "fat": "64g",
//     "sodium": "448mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Chicken and Pork with Orange-Cumin Glaze",
//     "calories": "1032kcal",
//     "protein": "98g",
//     "fat": "56g",
//     "sodium": "1316mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Chicken and Vegetable Sandwiches with Tarragon Mayonnaise",
//     "calories": "500kcal",
//     "protein": "14g",
//     "fat": "30g",
//     "sodium": "659mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Chicken Breast Stuffed with Prosciutto and Basil",
//     "calories": "463kcal",
//     "protein": "55g",
//     "fat": "25g",
//     "sodium": "663mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Chicken Breast with Arugula and Olive Thyme Vinaigrette",
//     "calories": "628kcal",
//     "protein": "49g",
//     "fat": "43g",
//     "sodium": "298mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Chicken Breasts in Spiced Yogurt",
//     "calories": "1985kcal",
//     "protein": "228g",
//     "fat": "110g",
//     "sodium": "1537mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Chicken Breasts with North African Spice Paste",
//     "calories": "646kcal",
//     "protein": "58g",
//     "fat": "43g",
//     "sodium": "1130mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Chicken Drummettes with Ancho-Cherry Barbecue Sauce",
//     "calories": "392kcal",
//     "protein": "25g",
//     "fat": "19g",
//     "sodium": "288mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Chicken Hearts",
//     "calories": "70kcal",
//     "protein": "7g",
//     "fat": "4g",
//     "sodium": "34mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Chicken Moroccan Style",
//     "calories": "1422kcal",
//     "protein": "93g",
//     "fat": "113g",
//     "sodium": "1188mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Chicken Palliards with Nectarine Chutney",
//     "calories": "324kcal",
//     "protein": "40g",
//     "fat": "8g",
//     "sodium": "227mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Chicken Salad with Greens and Balsamic Dressing",
//     "calories": "656kcal",
//     "protein": "38g",
//     "fat": "50g",
//     "sodium": "153mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Chicken Sandwiches with Sage Pesto and Apples",
//     "calories": "586kcal",
//     "protein": "12g",
//     "fat": "51g",
//     "sodium": "210mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Chicken Summer Salad",
//     "calories": "962kcal",
//     "protein": "40g",
//     "fat": "71g",
//     "sodium": "5781mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Chicken Tacos",
//     "calories": "303kcal",
//     "protein": "20g",
//     "fat": "23g",
//     "sodium": "573mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Chicken with Goat Cheese Stuffing, Peppers, Onions and Two Salsas",
//     "calories": "681kcal",
//     "protein": "65g",
//     "fat": "39g",
//     "sodium": "411mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Chicken with Lemon, Garlic, and Oregano",
//     "calories": "769kcal",
//     "protein": "69g",
//     "fat": "52g",
//     "sodium": "993mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Chicken with Mustard and Red Pepper",
//     "calories": "848kcal",
//     "protein": "60g",
//     "fat": "63g",
//     "sodium": "459mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Chicken with Mustard-Dill Sauce",
//     "calories": "376kcal",
//     "protein": "37g",
//     "fat": "23g",
//     "sodium": "212mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Chicken with Oregano, Cinnamon and Paprika",
//     "calories": "182kcal",
//     "protein": "20g",
//     "fat": "11g",
//     "sodium": "331mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Chicken with Root Beer Barbecue Sauce",
//     "calories": "591kcal",
//     "protein": "48g",
//     "fat": "39g",
//     "sodium": "2102mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Chicken with Shredded Mesclun Salad",
//     "calories": "1223kcal",
//     "protein": "84g",
//     "fat": "91g",
//     "sodium": "1581mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Chicken with Soy-Lime Sauce",
//     "calories": "324kcal",
//     "protein": "56g",
//     "fat": "7g",
//     "sodium": "1002mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Chicken with Thai-Spiced Oil",
//     "calories": "668kcal",
//     "protein": "55g",
//     "fat": "47g",
//     "sodium": "691mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Chicken with with Tamarind-Orange Glaze",
//     "calories": "644kcal",
//     "protein": "10g",
//     "fat": "48g",
//     "sodium": "225mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Corn Salad with Lima Beans and Tomatoes",
//     "calories": "365kcal",
//     "protein": "11g",
//     "fat": "27g",
//     "sodium": "330mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Corn with Honey-Ginger Barbecue Sauce",
//     "calories": "288kcal",
//     "protein": "8g",
//     "fat": "6g",
//     "sodium": "305mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Corn with Lime-Cilantro Butter",
//     "calories": "132kcal",
//     "protein": "2g",
//     "fat": "9g",
//     "sodium": "109mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Corn with Roasted Garlic Butter",
//     "calories": "363kcal",
//     "protein": "5g",
//     "fat": "30g",
//     "sodium": "21mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Corn, Zucchini, and Black Bean Quesadillas",
//     "calories": "692kcal",
//     "protein": "25g",
//     "fat": "39g",
//     "sodium": "1022mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Cornbread Salad with Red Onions, Arugula, and Red Wine Vinaigrette",
//     "calories": "230kcal",
//     "protein": "2g",
//     "fat": "23g",
//     "sodium": "86mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Country Ribs with Summer Savory Mustard Marinade",
//     "calories": "1883kcal",
//     "protein": "99g",
//     "fat": "161g",
//     "sodium": "403mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Crab Burgers",
//     "calories": "993kcal",
//     "protein": "35g",
//     "fat": "50g",
//     "sodium": "1814mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Cubano: Turkey, Pork and Swiss with Mustard and Pickles",
//     "calories": "912kcal",
//     "protein": "60g",
//     "fat": "57g",
//     "sodium": "1143mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Cumin Chicken Breasts with Avocado Salsa",
//     "calories": "22312kcal",
//     "protein": "332g",
//     "fat": "1007g",
//     "sodium": "13820mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Cumin-Lamb Pitas with Couscous and Yogurt",
//     "calories": "672kcal",
//     "protein": "37g",
//     "fat": "42g",
//     "sodium": "376mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Dixie Chicken with Cayenne Spice Rub",
//     "calories": "1095kcal",
//     "protein": "85g",
//     "fat": "80g",
//     "sodium": "2082mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Fish with Cilantro Chutney in Banana Leaves",
//     "calories": "240kcal",
//     "protein": "33g",
//     "fat": "3g",
//     "sodium": "283mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Fish with Orange-Fennel Salsa",
//     "calories": "435kcal",
//     "protein": "39g",
//     "fat": "21g",
//     "sodium": "514mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Flank Steak",
//     "calories": "465kcal",
//     "protein": "36g",
//     "fat": "34g",
//     "sodium": "674mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Flank Steak with Rosemary",
//     "calories": "510kcal",
//     "protein": "38g",
//     "fat": "32g",
//     "sodium": "1261mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Flank Steak with Rosemary and Garlic",
//     "calories": "408kcal",
//     "protein": "36g",
//     "fat": "28g",
//     "sodium": "93mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Flank Steak with Sauteed Beet Greens and Creamy Horseradish Beets",
//     "calories": "377kcal",
//     "protein": "26g",
//     "fat": "26g",
//     "sodium": "234mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Flank Steak, Onion and Bell Pepper Sandwiches",
//     "calories": "529kcal",
//     "protein": "42g",
//     "fat": "29g",
//     "sodium": "2745mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Flatbreads with Caramelized Onions, Sausage, and Manchego Cheese",
//     "calories": "279kcal",
//     "protein": "13g",
//     "fat": "13g",
//     "sodium": "518mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Fontina with Artichokes and Mushrooms",
//     "calories": "468kcal",
//     "protein": "24g",
//     "fat": "27g",
//     "sodium": "791mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Fresh Sardines with Fennel and Preserved Lemon",
//     "calories": "339kcal",
//     "protein": "31g",
//     "fat": "18g",
//     "sodium": "617mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Game Hen with Moroccan Spices",
//     "calories": "690kcal",
//     "protein": "59g",
//     "fat": "48g",
//     "sodium": "209mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Game Hens with Basmati, Dried Currant, and Almond Salad",
//     "calories": "1150kcal",
//     "protein": "75g",
//     "fat": "72g",
//     "sodium": "1026mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Garlic Crostini",
//     "calories": "92kcal",
//     "protein": "1g",
//     "fat": "7g",
//     "sodium": "189mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Garlic Lime Pork Tenderloin",
//     "calories": "568kcal",
//     "protein": "49g",
//     "fat": "33g",
//     "sodium": "437mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Garlic-Marinated Baby Zucchini",
//     "calories": "178kcal",
//     "protein": "2g",
//     "fat": "18g",
//     "sodium": "162mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Garlic-Marinated Skirt Steak with Lime",
//     "calories": "148kcal",
//     "protein": "11g",
//     "fat": "11g",
//     "sodium": "22mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Gazpacho Salad with Shrimp",
//     "calories": "464kcal",
//     "protein": "21g",
//     "fat": "29g",
//     "sodium": "734mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Goat Cheese with Fig Preserves",
//     "calories": "110kcal",
//     "protein": "3g",
//     "fat": "7g",
//     "sodium": "84mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Grapefruit with Pomegranate Molasses Glaze",
//     "calories": "156kcal",
//     "protein": "1g",
//     "fat": "3g",
//     "sodium": "39mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Green Bean Salad with Red Onions and Tomatoes",
//     "calories": "196kcal",
//     "protein": "3g",
//     "fat": "15g",
//     "sodium": "12mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Ground Lamb Kebabs with Fresh Hot-Pepper Paste",
//     "calories": "166kcal",
//     "protein": "8g",
//     "fat": "13g",
//     "sodium": "187mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Halibut and Tomato Packets",
//     "calories": "535kcal",
//     "protein": "86g",
//     "fat": "16g",
//     "sodium": "409mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Halibut with Basil-Shallot Butter",
//     "calories": "343kcal",
//     "protein": "32g",
//     "fat": "22g",
//     "sodium": "120mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Halibut with Lemongrass Tomato Sauce",
//     "calories": "273kcal",
//     "protein": "34g",
//     "fat": "10g",
//     "sodium": "418mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Halibut with Lima Bean and Roasted Tomato Sauce",
//     "calories": "397kcal",
//     "protein": "43g",
//     "fat": "8g",
//     "sodium": "523mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Halibut, Eggplant, and Baby Bok Choy with Korean Barbecue Sauce",
//     "calories": "484kcal",
//     "protein": "41g",
//     "fat": "20g",
//     "sodium": "1307mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Haloumi Cheese and Lemon",
//     "calories": "418kcal",
//     "protein": "12g",
//     "fat": "33g",
//     "sodium": "706mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Ham and Swiss Sandwiches",
//     "calories": "432kcal",
//     "protein": "29g",
//     "fat": "29g",
//     "sodium": "817mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Ham Steak with Peppered Peach Glaze",
//     "calories": "367kcal",
//     "protein": "36g",
//     "fat": "11g",
//     "sodium": "3507mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Hanger Steak with Cucumber Salad",
//     "calories": "472kcal",
//     "protein": "39g",
//     "fat": "26g",
//     "sodium": "1428mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Hearts of Romaine with Blue Cheese Vinaigrette and Pickled Onions",
//     "calories": "234kcal",
//     "protein": "3g",
//     "fat": "16g",
//     "sodium": "105mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Heirloom Tomato and Mozzarella Sandwiches with Green Heirloom Tomato Gazpacho",
//     "calories": "706kcal",
//     "protein": "25g",
//     "fat": "44g",
//     "sodium": "746mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Herb Potatoes",
//     "calories": "348kcal",
//     "protein": "5g",
//     "fat": "18g",
//     "sodium": "18mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Hoisin-Marinated Butterflied Leg of Lamb",
//     "calories": "1737kcal",
//     "protein": "148g",
//     "fat": "115g",
//     "sodium": "1525mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Hoisin-Soy Steaks with Shiitake and Bok Choy",
//     "calories": "735kcal",
//     "protein": "37g",
//     "fat": "52g",
//     "sodium": "1141mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Iceberg Wedges with Buttermilk-Basil Dressing",
//     "calories": "202kcal",
//     "protein": "5g",
//     "fat": "18g",
//     "sodium": "805mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Indian-Style Chicken Wings with Carrot-Cumin Yogurt Sauce",
//     "calories": "520kcal",
//     "protein": "43g",
//     "fat": "35g",
//     "sodium": "15300mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Italian Sausage with Warm Pepper and Onion Salad",
//     "calories": "537kcal",
//     "protein": "18g",
//     "fat": "46g",
//     "sodium": "1127mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Jerk Pork With Curried Peach Relish",
//     "calories": "492kcal",
//     "protein": "60g",
//     "fat": "18g",
//     "sodium": "1128mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Jumbo Shrimp with Lemon and Oregano",
//     "calories": "413kcal",
//     "protein": "31g",
//     "fat": "29g",
//     "sodium": "1403mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Kielbasa Sandwiches",
//     "calories": "547kcal",
//     "protein": "18g",
//     "fat": "36g",
//     "sodium": "1042mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Kielbasa Tacos",
//     "calories": "735kcal",
//     "protein": "31g",
//     "fat": "54g",
//     "sodium": "1301mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Korean-Style Short Ribs",
//     "calories": "619kcal",
//     "protein": "63g",
//     "fat": "31g",
//     "sodium": "1918mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Lamb and Fig Skewers with Mint-Pepper Glaze and Grilled Eggplant",
//     "calories": "791kcal",
//     "protein": "45g",
//     "fat": "52g",
//     "sodium": "2061mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lamb Chops with Curried Couscous and Zucchini Raita",
//     "calories": "713kcal",
//     "protein": "37g",
//     "fat": "41g",
//     "sodium": "862mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lamb Chops with Porcini Mustard",
//     "calories": "24117kcal",
//     "protein": "940g",
//     "fat": "2228g",
//     "sodium": "4382mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lamb Chops with Red Wine, Garlic and Honey Glaze",
//     "calories": "1243kcal",
//     "protein": "42g",
//     "fat": "111g",
//     "sodium": "453mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lamb Chops with Salmoriglio Sauce",
//     "calories": "609kcal",
//     "protein": "17g",
//     "fat": "60g",
//     "sodium": "542mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lamb Kebabs with Coriander and Cumin",
//     "calories": "880kcal",
//     "protein": "55g",
//     "fat": "71g",
//     "sodium": "525mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lamb Skewers with Spiced Mint Marinade",
//     "calories": "481kcal",
//     "protein": "33g",
//     "fat": "26g",
//     "sodium": "184mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lamb Skewers with White-Bean Salad",
//     "calories": "1304kcal",
//     "protein": "71g",
//     "fat": "76g",
//     "sodium": "1391mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Lamb Spiedini with Eggplant, Red Bell Pepper, and Arugula Salad",
//     "calories": "711kcal",
//     "protein": "36g",
//     "fat": "59g",
//     "sodium": "504mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Lamb with Curried Vegetables and Grape Pine Nut Gremolata",
//     "calories": "3616kcal",
//     "protein": "129g",
//     "fat": "310g",
//     "sodium": "833mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lamb with Horseradish-Mint Sauce",
//     "calories": "1546kcal",
//     "protein": "126g",
//     "fat": "110g",
//     "sodium": "1513mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lamb with Lima Bean Skordalia",
//     "calories": "1114kcal",
//     "protein": "75g",
//     "fat": "83g",
//     "sodium": "236mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lamb, Potato, Bean and Mushroom Salad",
//     "calories": "984kcal",
//     "protein": "58g",
//     "fat": "68g",
//     "sodium": "991mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Leg of Lamb with Ancho Chile Marinade",
//     "calories": "509kcal",
//     "protein": "38g",
//     "fat": "36g",
//     "sodium": "798mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Leg of Lamb with Hot Red Pepper Relish",
//     "calories": "1118kcal",
//     "protein": "81g",
//     "fat": "62g",
//     "sodium": "949mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Leg of Lamb with Red Wine, Garlic, Mustard and Sage",
//     "calories": "637kcal",
//     "protein": "50g",
//     "fat": "45g",
//     "sodium": "307mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Leg of Lamb with Rosemary Salt",
//     "calories": "916kcal",
//     "protein": "79g",
//     "fat": "62g",
//     "sodium": "2652mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Leg of Lamb with Spiced Mustard and Rosemary",
//     "calories": "663kcal",
//     "protein": "53g",
//     "fat": "47g",
//     "sodium": "339mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Leg of Lamb with Thyme and Allspice",
//     "calories": "835kcal",
//     "protein": "71g",
//     "fat": "59g",
//     "sodium": "655mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lemon and Garlic Leg of Lamb with Coriander Chutney",
//     "calories": "650kcal",
//     "protein": "46g",
//     "fat": "49g",
//     "sodium": "1216mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lemon Chicken Salad with Dill Cream Dressing",
//     "calories": "617kcal",
//     "protein": "49g",
//     "fat": "37g",
//     "sodium": "307mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lemon Pepper Chicken Breasts with Thyme Gremolata",
//     "calories": "782kcal",
//     "protein": "115g",
//     "fat": "31g",
//     "sodium": "231mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lemon Prawns",
//     "calories": "256kcal",
//     "protein": "3g",
//     "fat": "27g",
//     "sodium": "580mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lemon-and-Gin-Marinated Chicken and Onions",
//     "calories": "666kcal",
//     "protein": "49g",
//     "fat": "42g",
//     "sodium": "729mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lemon-Coriander Chicken",
//     "calories": "963kcal",
//     "protein": "70g",
//     "fat": "72g",
//     "sodium": "702mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lemongrass Beef and Noodle Salad",
//     "calories": "627kcal",
//     "protein": "33g",
//     "fat": "25g",
//     "sodium": "1125mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lemongrass Lamb Chops with Herbs",
//     "calories": "819kcal",
//     "protein": "26g",
//     "fat": "75g",
//     "sodium": "489mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lemon-Herb Poussins",
//     "calories": "937kcal",
//     "protein": "68g",
//     "fat": "71g",
//     "sodium": "439mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lemon-Honey Chicken Breasts",
//     "calories": "391kcal",
//     "protein": "54g",
//     "fat": "13g",
//     "sodium": "327mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lemon-Lime Chicken",
//     "calories": "746kcal",
//     "protein": "50g",
//     "fat": "57g",
//     "sodium": "254mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lemon-Oregano Chicken Drumsticks",
//     "calories": "466kcal",
//     "protein": "48g",
//     "fat": "28g",
//     "sodium": "998mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lobster and Potatoes with Basil Vinaigrette",
//     "calories": "1003kcal",
//     "protein": "110g",
//     "fat": "41g",
//     "sodium": "2960mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lobster Salad with Avocado and Papaya",
//     "calories": "1179kcal",
//     "protein": "137g",
//     "fat": "52g",
//     "sodium": "3418mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lobster with Creamy Chili Vinaigrette",
//     "calories": "2343kcal",
//     "protein": "46g",
//     "fat": "193g",
//     "sodium": "1569mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lobster with Ginger, Garlic, and Soy Sauce",
//     "calories": "1201kcal",
//     "protein": "152g",
//     "fat": "61g",
//     "sodium": "5160mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Lobster with Orange Chipotle Vinaigrette",
//     "calories": "780kcal",
//     "protein": "113g",
//     "fat": "32g",
//     "sodium": "3606mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Mackerel with Spicy Tomato Jam",
//     "calories": "227kcal",
//     "protein": "17g",
//     "fat": "12g",
//     "sodium": "157mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Mahi-Mahi Tacos",
//     "calories": "343kcal",
//     "protein": "26g",
//     "fat": "14g",
//     "sodium": "619mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Mahi-Mahi with Avocado-Melon Salsa",
//     "calories": "264kcal",
//     "protein": "33g",
//     "fat": "10g",
//     "sodium": "162mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Mahimahi with Lime-Ginger Vinaigrette",
//     "calories": "307kcal",
//     "protein": "11g",
//     "fat": "28g",
//     "sodium": "51mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Mahi-Mahi with Tomatillo-Avocado Salsa and Pineapple",
//     "calories": "361kcal",
//     "protein": "42g",
//     "fat": "16g",
//     "sodium": "195mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Mango",
//     "calories": "102kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Maple-Butter Apricots with Vanilla Ice Cream",
//     "calories": "144kcal",
//     "protein": "1g",
//     "fat": "9g",
//     "sodium": "123mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Marinated Leg of Lamb",
//     "calories": "688kcal",
//     "protein": "50g",
//     "fat": "52g",
//     "sodium": "736mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Marinated London Broil",
//     "calories": "524kcal",
//     "protein": "38g",
//     "fat": "38g",
//     "sodium": "372mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Marinated Pork Chops",
//     "calories": "1012kcal",
//     "protein": "86g",
//     "fat": "37g",
//     "sodium": "1994mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Marinated Sirloin Flap Steaks",
//     "calories": "503kcal",
//     "protein": "47g",
//     "fat": "29g",
//     "sodium": "812mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Marinated Tempeh Steak with Avocado, Radicchio, Orange Dressing, and Tahini",
//     "calories": "907kcal",
//     "protein": "30g",
//     "fat": "78g",
//     "sodium": "1232mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Marinated Vegetables with Fresh Mozzarella",
//     "calories": "693kcal",
//     "protein": "23g",
//     "fat": "47g",
//     "sodium": "452mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Monster Pork Chops with Tomatillo and Green Apple Sauce",
//     "calories": "660kcal",
//     "protein": "64g",
//     "fat": "36g",
//     "sodium": "2572mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Monterey Jack and Corn Quesadillas",
//     "calories": "732kcal",
//     "protein": "24g",
//     "fat": "43g",
//     "sodium": "1241mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Monterey Sardines with Lemon and Herbs",
//     "calories": "497kcal",
//     "protein": "69g",
//     "fat": "22g",
//     "sodium": "777mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Moroccan Chicken with Curried Couscous",
//     "calories": "1416kcal",
//     "protein": "76g",
//     "fat": "95g",
//     "sodium": "1158mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Moroccan Spiced Pork Tenderloin",
//     "calories": "409kcal",
//     "protein": "40g",
//     "fat": "25g",
//     "sodium": "616mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Mozzarella Cheeseburgers with Dried Tomato and Arugula Pesto",
//     "calories": "729kcal",
//     "protein": "40g",
//     "fat": "51g",
//     "sodium": "589mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Mushroom Salad with Arugula",
//     "calories": "304kcal",
//     "protein": "4g",
//     "fat": "28g",
//     "sodium": "460mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Mustard Chicken with Fresh Corn Polenta",
//     "calories": "711kcal",
//     "protein": "36g",
//     "fat": "46g",
//     "sodium": "826mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Mustard-Dill Burgers",
//     "calories": "439kcal",
//     "protein": "36g",
//     "fat": "20g",
//     "sodium": "571mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Nectarines with Honey-Balsamic Glaze",
//     "calories": "201kcal",
//     "protein": "1g",
//     "fat": "8g",
//     "sodium": "22mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled New Orleans-Style Shrimp",
//     "calories": "349kcal",
//     "protein": "24g",
//     "fat": "26g",
//     "sodium": "1096mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled New Potatoes with Parmesan and Herbs",
//     "calories": "221kcal",
//     "protein": "6g",
//     "fat": "8g",
//     "sodium": "88mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Paillards of Beef with Red Wine and Port Sauce",
//     "calories": "537kcal",
//     "protein": "31g",
//     "fat": "28g",
//     "sodium": "249mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Peaches with Black Pepper and Basil-Lime Syrup",
//     "calories": "173kcal",
//     "protein": "2g",
//     "fat": "4g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Pepper, Basil, and Turkey Roulade with Basil Sour Cream Sauce",
//     "calories": "699kcal",
//     "protein": "85g",
//     "fat": "34g",
//     "sodium": "245mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Pineapple and Banana Sauce with Honey and Lime",
//     "calories": "518kcal",
//     "protein": "5g",
//     "fat": "5g",
//     "sodium": "10mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Pineapple Salsa",
//     "calories": "47kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "467mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Pineapple with Brown Sugar, Coconut, and Rum",
//     "calories": "367kcal",
//     "protein": "3g",
//     "fat": "4g",
//     "sodium": "40mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Pineapple with Butter-Rum Glaze and Vanilla Mascarpone",
//     "calories": "528kcal",
//     "protein": "3g",
//     "fat": "36g",
//     "sodium": "145mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Pita with Greek Salad",
//     "calories": "455kcal",
//     "protein": "13g",
//     "fat": "27g",
//     "sodium": "775mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Pitas with Tomatoes, Olives, and Feta",
//     "calories": "282kcal",
//     "protein": "7g",
//     "fat": "20g",
//     "sodium": "434mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Pizza Crust",
//     "calories": "252kcal",
//     "protein": "6g",
//     "fat": "5g",
//     "sodium": "1792mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Pizza with Fresh Corn, Bell Pepper, Pancetta, and Fontina",
//     "calories": "4017kcal",
//     "protein": "80g",
//     "fat": "305g",
//     "sodium": "4830mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Pizza with Pears, Fresh Pecorino, and Walnuts",
//     "calories": "545kcal",
//     "protein": "27g",
//     "fat": "44g",
//     "sodium": "1601mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Pizza with Tomato, Mozzarella, and Basil",
//     "calories": "991kcal",
//     "protein": "48g",
//     "fat": "51g",
//     "sodium": "1878mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Pizza with Tomatoes, Corn and Cheese",
//     "calories": "549kcal",
//     "protein": "23g",
//     "fat": "19g",
//     "sodium": "1261mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Pizza with Yellow Squash, Mozzarella, and Lemon Thyme",
//     "calories": "1783kcal",
//     "protein": "59g",
//     "fat": "62g",
//     "sodium": "4105mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Pork Chops with Anise-Seed Rub and Mango Mojo",
//     "calories": "497kcal",
//     "protein": "42g",
//     "fat": "29g",
//     "sodium": "1565mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Pork Chops with Bourbon-Mustard Glaze",
//     "calories": "729kcal",
//     "protein": "36g",
//     "fat": "51g",
//     "sodium": "1340mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Pork Chops with Cherry Relish",
//     "calories": "410kcal",
//     "protein": "43g",
//     "fat": "19g",
//     "sodium": "686mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Pork Chops with Chunky Andouille Barbecue Sauce",
//     "calories": "499kcal",
//     "protein": "47g",
//     "fat": "28g",
//     "sodium": "829mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Pork Chops with Clams and Chorizo",
//     "calories": "792kcal",
//     "protein": "58g",
//     "fat": "51g",
//     "sodium": "2000mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Pork Chops with Classic Barbecue Sauce",
//     "calories": "599kcal",
//     "protein": "48g",
//     "fat": "28g",
//     "sodium": "1038mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Pork Chops with Italian Relish",
//     "calories": "335kcal",
//     "protein": "31g",
//     "fat": "20g",
//     "sodium": "86mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Pork Chops with Maple-Cranberry Glaze",
//     "calories": "496kcal",
//     "protein": "19g",
//     "fat": "29g",
//     "sodium": "1078mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Portobello Mushrooms, Sweet Peppers and Onions",
//     "calories": "117kcal",
//     "protein": "2g",
//     "fat": "7g",
//     "sodium": "9mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Potato Salad with Cornichons and Dill",
//     "calories": "240kcal",
//     "protein": "4g",
//     "fat": "12g",
//     "sodium": "406mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Potato Salad with Watercress, Green Onions, and Blue Cheese Vinaigrette",
//     "calories": "605kcal",
//     "protein": "12g",
//     "fat": "36g",
//     "sodium": "266mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Poussins with Lemon Herb Butter",
//     "calories": "1465kcal",
//     "protein": "108g",
//     "fat": "111g",
//     "sodium": "1741mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Quail Salad with Creamy Garlic Vinaigrette",
//     "calories": "497kcal",
//     "protein": "42g",
//     "fat": "34g",
//     "sodium": "138mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Quail Salad with Honey-Dijon Dressing",
//     "calories": "596kcal",
//     "protein": "24g",
//     "fat": "45g",
//     "sodium": "483mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Quail with Wilted Cabbage Slaw",
//     "calories": "277kcal",
//     "protein": "8g",
//     "fat": "19g",
//     "sodium": "580mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Radicchio and Kale, Sauerkraut Style",
//     "calories": "185kcal",
//     "protein": "3g",
//     "fat": "15g",
//     "sodium": "34mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Ratatouille Salad with Feta Cheese",
//     "calories": "424kcal",
//     "protein": "12g",
//     "fat": "32g",
//     "sodium": "477mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Red and Green Cabbage Slaw",
//     "calories": "315kcal",
//     "protein": "4g",
//     "fat": "19g",
//     "sodium": "116mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Red Snapper and Mango with Cilantro-Lime Vinaigrette",
//     "calories": "290kcal",
//     "protein": "10g",
//     "fat": "21g",
//     "sodium": "31mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Rib Eye with Paprika Vinaigrette",
//     "calories": "759kcal",
//     "protein": "43g",
//     "fat": "63g",
//     "sodium": "262mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Rib-Eye Steaks with Black Bean Sauce",
//     "calories": "594kcal",
//     "protein": "12g",
//     "fat": "59g",
//     "sodium": "55mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Rib-Eye Steaks with Cucumber Relish",
//     "calories": "483kcal",
//     "protein": "34g",
//     "fat": "36g",
//     "sodium": "104mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Rib-Eye Steaks with Parsley-Garlic Butter",
//     "calories": "719kcal",
//     "protein": "42g",
//     "fat": "61g",
//     "sodium": "891mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Roast Beef and Stilton Sandwich",
//     "calories": "641kcal",
//     "protein": "39g",
//     "fat": "37g",
//     "sodium": "907mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Rosemary Garlic Shrimp",
//     "calories": "131kcal",
//     "protein": "5g",
//     "fat": "11g",
//     "sodium": "184mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Rosemary Lamb Chops",
//     "calories": "2064kcal",
//     "protein": "18g",
//     "fat": "215g",
//     "sodium": "106mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Salmon Cakes with Lemon Mayonnaise",
//     "calories": "424kcal",
//     "protein": "16g",
//     "fat": "37g",
//     "sodium": "531mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Salmon Fillets with Balsamic Glaze",
//     "calories": "405kcal",
//     "protein": "32g",
//     "fat": "25g",
//     "sodium": "98mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Salmon Fillets with Creamy Horseradish Sauce",
//     "calories": "573kcal",
//     "protein": "36g",
//     "fat": "46g",
//     "sodium": "590mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Salmon in Corn Husks",
//     "calories": "1210kcal",
//     "protein": "43g",
//     "fat": "99g",
//     "sodium": "67909mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Salmon with Basil and Mint",
//     "calories": "488kcal",
//     "protein": "36g",
//     "fat": "35g",
//     "sodium": "717mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Shellfish and Potato Salad with Avocado Salsa, Scallion Oil, and Plum Coulis",
//     "calories": "360kcal",
//     "protein": "17g",
//     "fat": "26g",
//     "sodium": "566mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Shrimp and Scallions with Southeast Asian Dipping Sauces",
//     "calories": "155kcal",
//     "protein": "18g",
//     "fat": "6g",
//     "sodium": "2513mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Shrimp and Vegetables with Pearl Couscous",
//     "calories": "650kcal",
//     "protein": "36g",
//     "fat": "30g",
//     "sodium": "1980mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Shrimp Greek Salad",
//     "calories": "392kcal",
//     "protein": "25g",
//     "fat": "25g",
//     "sodium": "1112mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Shrimp Salad with Corn and Avocado",
//     "calories": "819kcal",
//     "protein": "46g",
//     "fat": "49g",
//     "sodium": "1331mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Shrimp Salad with Lemongrass and Chiles",
//     "calories": "151kcal",
//     "protein": "18g",
//     "fat": "2g",
//     "sodium": "2669mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Shrimp with Almonds",
//     "calories": "309kcal",
//     "protein": "24g",
//     "fat": "21g",
//     "sodium": "861mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Shrimp with Chile, Cilantro, and Lime",
//     "calories": "95kcal",
//     "protein": "7g",
//     "fat": "1g",
//     "sodium": "2329mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Shrimp with Fiery Lemongrass-Chile Sambal",
//     "calories": "348kcal",
//     "protein": "33g",
//     "fat": "16g",
//     "sodium": "1819mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Shrimp with Ponzu Sauce",
//     "calories": "282kcal",
//     "protein": "22g",
//     "fat": "15g",
//     "sodium": "2129mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Shrimp with Roasted Garlic-Herb Sauce",
//     "calories": "213kcal",
//     "protein": "16g",
//     "fat": "10g",
//     "sodium": "1533mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Shrimp, Corn and Black Bean Tostada Salad",
//     "calories": "3590kcal",
//     "protein": "570g",
//     "fat": "90g",
//     "sodium": "23361mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Sirloin Steaks with Blue Cheese-Walnut Butter",
//     "calories": "307kcal",
//     "protein": "18g",
//     "fat": "25g",
//     "sodium": "523mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Skirt Steak",
//     "calories": "447kcal",
//     "protein": "46g",
//     "fat": "29g",
//     "sodium": "1579mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Skirt Steak and Arugula Salad with Roquefort and Catalina Dressing",
//     "calories": "495kcal",
//     "protein": "30g",
//     "fat": "38g",
//     "sodium": "421mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Skirt Steak Tacos with Corn Relish",
//     "calories": "489kcal",
//     "protein": "28g",
//     "fat": "27g",
//     "sodium": "133mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Skirt Steak Tacos with Roasted Poblano Rajas",
//     "calories": "88kcal",
//     "protein": "8g",
//     "fat": "5g",
//     "sodium": "173mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Skirt Steak with Herb Salsa Verde",
//     "calories": "416kcal",
//     "protein": "25g",
//     "fat": "33g",
//     "sodium": "86mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Skirt Steaks with Parsley Oregano Sauce",
//     "calories": "443kcal",
//     "protein": "12g",
//     "fat": "43g",
//     "sodium": "47mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Soy-Tamarind Denver Steaks",
//     "calories": "426kcal",
//     "protein": "31g",
//     "fat": "28g",
//     "sodium": "827mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Spiced Double-Thick Pork Chops",
//     "calories": "115kcal",
//     "protein": "4g",
//     "fat": "2g",
//     "sodium": "4265mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Spiced Garlic Skirt Steak",
//     "calories": "473kcal",
//     "protein": "46g",
//     "fat": "31g",
//     "sodium": "149mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Spiced Lamb Chops with Cucumber-Mint Sauce",
//     "calories": "1112kcal",
//     "protein": "44g",
//     "fat": "100g",
//     "sodium": "240mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Spiced Lamb Chops with Saffron Vegetables and Red Bell Pepper Sauce",
//     "calories": "1691kcal",
//     "protein": "57g",
//     "fat": "142g",
//     "sodium": "326mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Spice-Rubbed Pork with Tomato Garlic Sauce",
//     "calories": "352kcal",
//     "protein": "38g",
//     "fat": "17g",
//     "sodium": "540mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Strip Steaks with Olive-Oregano Relish",
//     "calories": "474kcal",
//     "protein": "68g",
//     "fat": "22g",
//     "sodium": "394mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Striped Bass",
//     "calories": "412kcal",
//     "protein": "75g",
//     "fat": "10g",
//     "sodium": "293mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Summer Squash and Zucchini",
//     "calories": "294kcal",
//     "protein": "6g",
//     "fat": "10g",
//     "sodium": "340mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Surf-and-Turf with Spicy Garlic-Shallot Butter",
//     "calories": "954kcal",
//     "protein": "74g",
//     "fat": "69g",
//     "sodium": "1131mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Swedish Meatball Kebabs",
//     "calories": "313kcal",
//     "protein": "17g",
//     "fat": "15g",
//     "sodium": "484mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Sweet Potatoes, Onion, and Bell Pepper with Thyme Vinaigrette",
//     "calories": "354kcal",
//     "protein": "3g",
//     "fat": "18g",
//     "sodium": "16mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Sweetbreads",
//     "calories": "338kcal",
//     "protein": "14g",
//     "fat": "30g",
//     "sodium": "3636mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Sweet-Potato Salad",
//     "calories": "249kcal",
//     "protein": "3g",
//     "fat": "9g",
//     "sodium": "493mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Swiss Cheese, Tuna and Red Pepper Sandwiches",
//     "calories": "777kcal",
//     "protein": "49g",
//     "fat": "52g",
//     "sodium": "766mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Swordfish Verde",
//     "calories": "408kcal",
//     "protein": "45g",
//     "fat": "22g",
//     "sodium": "193mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Swordfish with Coriander Lime Butter",
//     "calories": "484kcal",
//     "protein": "41g",
//     "fat": "29g",
//     "sodium": "170mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Swordfish with Cucumber Lime Salsa",
//     "calories": "371kcal",
//     "protein": "35g",
//     "fat": "17g",
//     "sodium": "730mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Swordfish with Eggplant, Anchovy and Green Olives",
//     "calories": "357kcal",
//     "protein": "35g",
//     "fat": "22g",
//     "sodium": "528mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Swordfish with Pineapple Plantain Chutney",
//     "calories": "658kcal",
//     "protein": "47g",
//     "fat": "35g",
//     "sodium": "234mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Swordfish with Rosemary-White Wine Sauce",
//     "calories": "541kcal",
//     "protein": "34g",
//     "fat": "41g",
//     "sodium": "144mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Tamales with Poblanos and Fresh Corn",
//     "calories": "192kcal",
//     "protein": "2g",
//     "fat": "15g",
//     "sodium": "86mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Tandoori-Spiced Chicken Breasts Over Mesclun Salad",
//     "calories": "755kcal",
//     "protein": "117g",
//     "fat": "26g",
//     "sodium": "646mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Tandoori-Style Chicken and Mangoes with Mango Jasmine Rice",
//     "calories": "992kcal",
//     "protein": "59g",
//     "fat": "64g",
//     "sodium": "941mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled T-Bone Steaks with Balsamic Onion Confit",
//     "calories": "1035kcal",
//     "protein": "81g",
//     "fat": "66g",
//     "sodium": "511mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled T-Bone Steaks with Worcestershire-Chive Butter",
//     "calories": "433kcal",
//     "protein": "18g",
//     "fat": "38g",
//     "sodium": "160mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Tea-Brined Turkey with Tea-and-Lemon Gravy",
//     "calories": "1600kcal",
//     "protein": "249g",
//     "fat": "53g",
//     "sodium": "12450mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Tequila-Lime Chicken",
//     "calories": "94kcal",
//     "protein": "4g",
//     "fat": "2g",
//     "sodium": "456mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Turkey Cuban Sandwiches",
//     "calories": "1034kcal",
//     "protein": "52g",
//     "fat": "69g",
//     "sodium": "1553mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Turkey with Cranberry Gravy",
//     "calories": "1187kcal",
//     "protein": "126g",
//     "fat": "58g",
//     "sodium": "1895mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Turkey with Toasted Fennel and Coriander and Fresh Thyme Gravy",
//     "calories": "966kcal",
//     "protein": "118g",
//     "fat": "42g",
//     "sodium": "1118mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Turkey, Bacon, Radicchio, and Blue Cheese Sandwiches",
//     "calories": "869kcal",
//     "protein": "41g",
//     "fat": "73g",
//     "sodium": "1100mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Turmeric and Lemongrass Chicken Wings",
//     "calories": "889kcal",
//     "protein": "63g",
//     "fat": "64g",
//     "sodium": "1609mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Tuscan Pork Rib Roast with Rosemary Coating and Red Pepper Relish",
//     "calories": "431kcal",
//     "protein": "15g",
//     "fat": "36g",
//     "sodium": "602mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Veal Chops with Warm Tomato-Olive Vinaigrette",
//     "calories": "547kcal",
//     "protein": "44g",
//     "fat": "39g",
//     "sodium": "316mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Vegetable Hero",
//     "calories": "460kcal",
//     "protein": "12g",
//     "fat": "31g",
//     "sodium": "373mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Vegetable Salad with Lemon-Mustard Vinaigrette",
//     "calories": "303kcal",
//     "protein": "5g",
//     "fat": "25g",
//     "sodium": "43mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Vegetables on Onion Rolls",
//     "calories": "325kcal",
//     "protein": "6g",
//     "fat": "20g",
//     "sodium": "220mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Vegetables with Chipotle Dressing",
//     "calories": "167kcal",
//     "protein": "3g",
//     "fat": "13g",
//     "sodium": "37mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Vegetables with Cumin, Cilantro, and Salsa Verde",
//     "calories": "255kcal",
//     "protein": "7g",
//     "fat": "8g",
//     "sodium": "379mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Vegetables with Lemon, Thyme and Mustard Basting Sauce",
//     "calories": "474kcal",
//     "protein": "7g",
//     "fat": "38g",
//     "sodium": "163mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Vegetables with Mint Raita",
//     "calories": "201kcal",
//     "protein": "7g",
//     "fat": "13g",
//     "sodium": "456mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Whole Fish with Roasted Tomato-Chile Sauce",
//     "calories": "349kcal",
//     "protein": "37g",
//     "fat": "17g",
//     "sodium": "977mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Yellow Squash with Oregano",
//     "calories": "219kcal",
//     "protein": "1g",
//     "fat": "17g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Zucchini",
//     "calories": "137kcal",
//     "protein": "3g",
//     "fat": "11g",
//     "sodium": "20mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Zucchini and Bell Pepper Fattoush",
//     "calories": "550kcal",
//     "protein": "10g",
//     "fat": "44g",
//     "sodium": "564mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Zucchini and Eggplant Pizza with Tapenade and Fontina",
//     "calories": "1696kcal",
//     "protein": "55g",
//     "fat": "97g",
//     "sodium": "3321mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Grilled Zucchini and Summer Squash Salad with Basil-Parmesan Dressing",
//     "calories": "178kcal",
//     "protein": "5g",
//     "fat": "13g",
//     "sodium": "80mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Zucchini and Tomatoes with Feta Sauce",
//     "calories": "194kcal",
//     "protein": "6g",
//     "fat": "16g",
//     "sodium": "361mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Zucchini and Yogurt Dip",
//     "calories": "152kcal",
//     "protein": "3g",
//     "fat": "13g",
//     "sodium": "694mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Zucchini Bread with Mascarpone and Berries",
//     "calories": "172kcal",
//     "protein": "3g",
//     "fat": "14g",
//     "sodium": "139mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Zucchini Pasta with Pecorino Walnut Crumble",
//     "calories": "352kcal",
//     "protein": "15g",
//     "fat": "15g",
//     "sodium": "262mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Zucchini Salad with Purslane and Tomato",
//     "calories": "182kcal",
//     "protein": "13g",
//     "fat": "3g",
//     "sodium": "407mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled Zucchini with Garlic and Lemon Butter Baste",
//     "calories": "129kcal",
//     "protein": "2g",
//     "fat": "12g",
//     "sodium": "13mg",
//     "status": "false1"
//   },
//   {
//     "food": "Grilled, Korean-Style Steaks with Spicy Cilantro Sauce",
//     "calories": "991kcal",
//     "protein": "69g",
//     "fat": "73g",
//     "sodium": "2377mg",
//     "status": "false1"
//   },
//   {
//     "food": "Guacamole",
//     "calories": "186kcal",
//     "protein": "2g",
//     "fat": "17g",
//     "sodium": "368mg",
//     "status": "false1"
//   },
//   {
//     "food": "Guacamole Tacos with Tomatillo and Steak Sauce",
//     "calories": "1458kcal",
//     "protein": "50g",
//     "fat": "76g",
//     "sodium": "868mg",
//     "status": "false1"
//   },
//   {
//     "food": "Guacamole with Aleppo Pepper",
//     "calories": "180kcal",
//     "protein": "2g",
//     "fat": "16g",
//     "sodium": "247mg",
//     "status": "false1"
//   },
//   {
//     "food": "Guacamole with Lime and Roasted Chilies",
//     "calories": "125kcal",
//     "protein": "4g",
//     "fat": "6g",
//     "sodium": "22mg",
//     "status": "false1"
//   },
//   {
//     "food": "Guacamole with Pear and Pomegranate Seeds",
//     "calories": "218kcal",
//     "protein": "3g",
//     "fat": "17g",
//     "sodium": "249mg",
//     "status": "false1"
//   },
//   {
//     "food": "Guacamole with Roasted Tomatillos",
//     "calories": "209kcal",
//     "protein": "3g",
//     "fat": "17g",
//     "sodium": "11mg",
//     "status": "false1"
//   },
//   {
//     "food": "Guajillo and Tomatillo Salsa",
//     "calories": "46kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Guanabana Sherbet with Tropical Fruit",
//     "calories": "285kcal",
//     "protein": "3g",
//     "fat": "2g",
//     "sodium": "32mg",
//     "status": "false1"
//   },
//   {
//     "food": "Guava and Cream Cheese Pastry",
//     "calories": "949kcal",
//     "protein": "13g",
//     "fat": "62g",
//     "sodium": "489mg",
//     "status": "false1"
//   },
//   {
//     "food": "Guava, in syrup, canned, undrained",
//     "calories": "74.8kcal",
//     "protein": "0.38g",
//     "fat": "0.4g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Guava, raw",
//     "calories": "38.32kcal",
//     "protein": "0.81g",
//     "fat": "0.5g",
//     "sodium": "5mg",
//     "status": "false1"
//   },
//   {
//     "food": "Guava-Lime Glaze",
//     "calories": "235kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "22mg",
//     "status": "false1"
//   },
//   {
//     "food": "Guava-Stuffed Chicken with Caramelized Mango",
//     "calories": "497kcal",
//     "protein": "6g",
//     "fat": "46g",
//     "sodium": "81mg",
//     "status": "false1"
//   },
//   {
//     "food": "Guinness BBQ Sauce",
//     "calories": "168kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "1493mg",
//     "status": "false1"
//   },
//   {
//     "food": "Guinness Mustard",
//     "calories": "62kcal",
//     "protein": "3g",
//     "fat": "3g",
//     "sodium": "854mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ham and Egg Strata",
//     "calories": "523kcal",
//     "protein": "35g",
//     "fat": "27g",
//     "sodium": "2029mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ham and Fresh Peach Chutney on Corn Bread",
//     "calories": "104kcal",
//     "protein": "6g",
//     "fat": "4g",
//     "sodium": "434mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ham Steak on Creamed Spinach",
//     "calories": "438kcal",
//     "protein": "42g",
//     "fat": "26g",
//     "sodium": "3588mg",
//     "status": "false1"
//   },
//   {
//     "food": "Herb Syrup",
//     "calories": "198kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Herb, bay leaf, crumbled",
//     "calories": "350.32kcal",
//     "protein": "7.56g",
//     "fat": "8.36g",
//     "sodium": "22.8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Herbed Chicken Burgers",
//     "calories": "712kcal",
//     "protein": "32g",
//     "fat": "29g",
//     "sodium": "1663mg",
//     "status": "false1"
//   },
//   {
//     "food": "Hermit Bars",
//     "calories": "109kcal",
//     "protein": "1g",
//     "fat": "5g",
//     "sodium": "81mg",
//     "status": "false1"
//   },
//   {
//     "food": "Hershey's \"Perfectly Chocolate\" Chocolate Cake",
//     "calories": "6173kcal",
//     "protein": "69g",
//     "fat": "240g",
//     "sodium": "3196mg",
//     "status": "false1"
//   },
//   {
//     "food": "Homemade Chai",
//     "calories": "105kcal",
//     "protein": "3g",
//     "fat": "3g",
//     "sodium": "50mg",
//     "status": "false1"
//   },
//   {
//     "food": "Homemade Cheese Spread With Garlic and Herbs",
//     "calories": "165kcal",
//     "protein": "2g",
//     "fat": "17g",
//     "sodium": "219mg",
//     "status": "false1"
//   },
//   {
//     "food": "Homemade Chocolate Liqueur",
//     "calories": "570kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Homemade Croutons",
//     "calories": "167kcal",
//     "protein": "5g",
//     "fat": "7g",
//     "sodium": "222mg",
//     "status": "false1"
//   },
//   {
//     "food": "Homemade Curry Powder",
//     "calories": "21kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Homemade Ginger Ale",
//     "calories": "786kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "13mg",
//     "status": "false1"
//   },
//   {
//     "food": "Homemade Grenadine",
//     "calories": "228kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Homemade Herbed Paneer Cheese",
//     "calories": "205kcal",
//     "protein": "8g",
//     "fat": "13g",
//     "sodium": "1186mg",
//     "status": "false1"
//   },
//   {
//     "food": "Homemade Ketchup",
//     "calories": "168kcal",
//     "protein": "2g",
//     "fat": "6g",
//     "sodium": "235mg",
//     "status": "false1"
//   },
//   {
//     "food": "Homemade Montreal Steak Seasoning",
//     "calories": "27kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "1910mg",
//     "status": "false1"
//   },
//   {
//     "food": "Homemade Ranch Dressing",
//     "calories": "225kcal",
//     "protein": "2g",
//     "fat": "23g",
//     "sodium": "382mg",
//     "status": "false1"
//   },
//   {
//     "food": "Homemade Ricotta Cheese",
//     "calories": "202kcal",
//     "protein": "8g",
//     "fat": "13g",
//     "sodium": "469mg",
//     "status": "false1"
//   },
//   {
//     "food": "Homemade Sweet-and-Sour Mix for Margaritas",
//     "calories": "319kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Homemade Thick Cream",
//     "calories": "221kcal",
//     "protein": "2g",
//     "fat": "24g",
//     "sodium": "22mg",
//     "status": "false1"
//   },
//   {
//     "food": "Homemade Tomato Ketchup",
//     "calories": "405kcal",
//     "protein": "11g",
//     "fat": "4g",
//     "sodium": "1233mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey, Mustard and Rosemary Pork Roast",
//     "calories": "683kcal",
//     "protein": "51g",
//     "fat": "38g",
//     "sodium": "460mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-and-Spice Cranberry Sauce",
//     "calories": "230kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "66mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Brandy Oranges",
//     "calories": "174kcal",
//     "protein": "2g",
//     "fat": "0g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Brined Turkey with Giblet Cream Gravy",
//     "calories": "795kcal",
//     "protein": "118g",
//     "fat": "22g",
//     "sodium": "13447mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Butter French Bread",
//     "calories": "317kcal",
//     "protein": "8g",
//     "fat": "4g",
//     "sodium": "586mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Caramel Tart with Apricots and Almonds",
//     "calories": "753kcal",
//     "protein": "8g",
//     "fat": "47g",
//     "sodium": "114mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Cardamom Custards with Strawberry-Orange Compote",
//     "calories": "300kcal",
//     "protein": "9g",
//     "fat": "12g",
//     "sodium": "156mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Cheese Pie with Strawberry Compote",
//     "calories": "534kcal",
//     "protein": "12g",
//     "fat": "31g",
//     "sodium": "300mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Cinnamon Ice Cream",
//     "calories": "240kcal",
//     "protein": "2g",
//     "fat": "16g",
//     "sodium": "74mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Citrus Chicken",
//     "calories": "504kcal",
//     "protein": "71g",
//     "fat": "13g",
//     "sodium": "471mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honeydew and Cantaloupe Mousse",
//     "calories": "300kcal",
//     "protein": "6g",
//     "fat": "2g",
//     "sodium": "114mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honeydew and Cantaloupe with Cinnamon-Clove Syrup",
//     "calories": "249kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "58mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honeydew and Cucumber Salad with Sesame",
//     "calories": "200kcal",
//     "protein": "2g",
//     "fat": "16g",
//     "sodium": "186mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honeydew and Prosciutto with Greens and Mint Vinaigrette",
//     "calories": "1157kcal",
//     "protein": "27g",
//     "fat": "21g",
//     "sodium": "1689mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honeydew Coconut Frappes",
//     "calories": "260kcal",
//     "protein": "4g",
//     "fat": "1g",
//     "sodium": "112mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honeydew Cucumber Smoothie",
//     "calories": "147kcal",
//     "protein": "6g",
//     "fat": "4g",
//     "sodium": "81mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honeydew in Lemon Thyme Syrup",
//     "calories": "194kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "73mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honeydew Melon in Coconut Milk",
//     "calories": "215kcal",
//     "protein": "3g",
//     "fat": "11g",
//     "sodium": "57mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honeydew, Cucumber, and Mint Soda",
//     "calories": "128kcal",
//     "protein": "3g",
//     "fat": "1g",
//     "sodium": "84mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honeydew-Lime Pops",
//     "calories": "179kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "32mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honeyed Chestnut Corn Bread",
//     "calories": "292kcal",
//     "protein": "6g",
//     "fat": "10g",
//     "sodium": "479mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honeyed Peach Tartlets",
//     "calories": "158kcal",
//     "protein": "2g",
//     "fat": "3g",
//     "sodium": "23mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honeyed Red-Onion Confit",
//     "calories": "292kcal",
//     "protein": "3g",
//     "fat": "7g",
//     "sodium": "11mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honeyed Ricotta",
//     "calories": "179kcal",
//     "protein": "12g",
//     "fat": "8g",
//     "sodium": "106mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honeyed Walnut Tart",
//     "calories": "419kcal",
//     "protein": "7g",
//     "fat": "19g",
//     "sodium": "124mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honeyed-Mango Chutney Sauce",
//     "calories": "420kcal",
//     "protein": "7g",
//     "fat": "5g",
//     "sodium": "67mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Ginger Barbecue Sauce",
//     "calories": "298kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "1430mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Ginger Salmon",
//     "calories": "721kcal",
//     "protein": "46g",
//     "fat": "43g",
//     "sodium": "338mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Gingered Pork Tenderloins",
//     "calories": "484kcal",
//     "protein": "66g",
//     "fat": "11g",
//     "sodium": "1564mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Glazed Baby Carrots",
//     "calories": "67kcal",
//     "protein": "1g",
//     "fat": "2g",
//     "sodium": "74mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Glazed Butternut Squash",
//     "calories": "148kcal",
//     "protein": "1g",
//     "fat": "7g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Glazed Carrots with Carrot Top Gremolata",
//     "calories": "186kcal",
//     "protein": "3g",
//     "fat": "8g",
//     "sodium": "197mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Glazed Doughnuts with Raisins and Pine Nuts",
//     "calories": "109kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "40mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Glazed Duck with Fig and Pistachio Red Quinoa",
//     "calories": "724kcal",
//     "protein": "50g",
//     "fat": "28g",
//     "sodium": "278mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Glazed Peach Tart with Mascarpone Cream",
//     "calories": "546kcal",
//     "protein": "6g",
//     "fat": "31g",
//     "sodium": "147mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Glazed Pecans",
//     "calories": "179kcal",
//     "protein": "2g",
//     "fat": "12g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Glazed Rack of Lamb",
//     "calories": "1388kcal",
//     "protein": "47g",
//     "fat": "107g",
//     "sodium": "1407mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Hazelnut Financiers",
//     "calories": "276kcal",
//     "protein": "6g",
//     "fat": "14g",
//     "sodium": "166mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Mustard Chicken-Sausage Kebabs",
//     "calories": "194kcal",
//     "protein": "8g",
//     "fat": "12g",
//     "sodium": "611mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Mustard Glazed Shrimp and Scallops",
//     "calories": "52kcal",
//     "protein": "7g",
//     "fat": "1g",
//     "sodium": "315mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Orange Madeleines",
//     "calories": "133kcal",
//     "protein": "2g",
//     "fat": "8g",
//     "sodium": "9mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Peach Tart with Vanilla Ice Cream",
//     "calories": "326kcal",
//     "protein": "4g",
//     "fat": "19g",
//     "sodium": "151mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Pecan Pumpkin Pie",
//     "calories": "831kcal",
//     "protein": "10g",
//     "fat": "66g",
//     "sodium": "212mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Roasted Carrots with Tahini Yogurt",
//     "calories": "294kcal",
//     "protein": "7g",
//     "fat": "15g",
//     "sodium": "761mg",
//     "status": "false1"
//   },
//   {
//     "food": "Honey-Roasted Chicken with Lemon and Tarragon",
//     "calories": "1029kcal",
//     "protein": "75g",
//     "fat": "69g",
//     "sodium": "719mg",
//     "status": "false1"
//   },
//   {
//     "food": "Hot Chicken Salad",
//     "calories": "356kcal",
//     "protein": "16g",
//     "fat": "30g",
//     "sodium": "423mg",
//     "status": "false1"
//   },
//   {
//     "food": "Hot Chocolate Baked French Toast",
//     "calories": "939kcal",
//     "protein": "20g",
//     "fat": "59g",
//     "sodium": "746mg",
//     "status": "false1"
//   },
//   {
//     "food": "Hummus and Vegetable Lahvash Sandwiches",
//     "calories": "781kcal",
//     "protein": "30g",
//     "fat": "31g",
//     "sodium": "1334mg",
//     "status": "false1"
//   },
//   {
//     "food": "Hummus Tehina",
//     "calories": "151kcal",
//     "protein": "8g",
//     "fat": "5g",
//     "sodium": "694mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Hummus-Crusted Alaskan Wild King Salmon Over a Bed of French Beans, Red Onion, and Cucumber Salad with Lemon Oil",
//     "calories": "1496kcal",
//     "protein": "63g",
//     "fat": "123g",
//     "sodium": "916mg",
//     "status": "false1"
//   },
//   {
//     "food": "Hunan Lamb Chops",
//     "calories": "926kcal",
//     "protein": "35g",
//     "fat": "81g",
//     "sodium": "910mg",
//     "status": "false1"
//   },
//   {
//     "food": "Hungarian Blintz Loaf (Palacsinta Felfujt)",
//     "calories": "385kcal",
//     "protein": "11g",
//     "fat": "28g",
//     "sodium": "310mg",
//     "status": "false1"
//   },
//   {
//     "food": "Hungarian Chocolate Mousse Cake Bars",
//     "calories": "230kcal",
//     "protein": "3g",
//     "fat": "16g",
//     "sodium": "45mg",
//     "status": "false1"
//   },
//   {
//     "food": "Hungarian Hazelnut Torte",
//     "calories": "565kcal",
//     "protein": "9g",
//     "fat": "35g",
//     "sodium": "122mg",
//     "status": "false1"
//   },
//   {
//     "food": "Hungarian Porcini-Potato Latkes",
//     "calories": "153kcal",
//     "protein": "2g",
//     "fat": "10g",
//     "sodium": "247mg",
//     "status": "false1"
//   },
//   {
//     "food": "Hungarian-Style Beef with Bell Peppers and Caraway",
//     "calories": "460kcal",
//     "protein": "26g",
//     "fat": "36g",
//     "sodium": "169mg",
//     "status": "false1"
//   },
//   {
//     "food": "Hurricane",
//     "calories": "201kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Hurricane Bananas",
//     "calories": "296kcal",
//     "protein": "3g",
//     "fat": "9g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Hurricane Marilyn's Couscous and Lentil Salad",
//     "calories": "383kcal",
//     "protein": "16g",
//     "fat": "14g",
//     "sodium": "468mg",
//     "status": "false1"
//   },
//   {
//     "food": "Hushpuppies",
//     "calories": "94kcal",
//     "protein": "1g",
//     "fat": "6g",
//     "sodium": "165mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice block, frozen",
//     "calories": "71.7kcal",
//     "protein": "0.31g",
//     "fat": "0.1g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice Cream Bombe",
//     "calories": "305kcal",
//     "protein": "1g",
//     "fat": "3g",
//     "sodium": "30mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice Cream Soda with Lime, Mint and Ginger",
//     "calories": "347kcal",
//     "protein": "3g",
//     "fat": "7g",
//     "sodium": "89mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice Cream with Figs Poached in Port and Star Anise",
//     "calories": "398kcal",
//     "protein": "5g",
//     "fat": "11g",
//     "sodium": "84mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice cream, assorted berry flavours, standard, composite",
//     "calories": "198.58kcal",
//     "protein": "1.92g",
//     "fat": "9.48g",
//     "sodium": "35mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice cream, chocolate, standard, composite",
//     "calories": "194.07kcal",
//     "protein": "3.13g",
//     "fat": "10.84g",
//     "sodium": "44mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice cream, cone, chocolate, Movenpick, premium",
//     "calories": "292.43kcal",
//     "protein": "4.98g",
//     "fat": "14.6g",
//     "sodium": "51.1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice cream, creamy, fruit ripple, composite",
//     "calories": "177.39kcal",
//     "protein": "2.68g",
//     "fat": "8.32g",
//     "sodium": "37mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Ice cream, exquisamint flavoured covered in biscuit crunch, Moritz",
//     "calories": "325.34kcal",
//     "protein": "5.55g",
//     "fat": "20.27g",
//     "sodium": "40.4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice cream, fruit ripple, composite",
//     "calories": "169.16kcal",
//     "protein": "2.49g",
//     "fat": "7.57g",
//     "sodium": "37mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice cream, Maple Walnut, premium",
//     "calories": "223.2kcal",
//     "protein": "4.66g",
//     "fat": "12.34g",
//     "sodium": "32.2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice cream, reduced energy",
//     "calories": "121.77kcal",
//     "protein": "3.38g",
//     "fat": "6g",
//     "sodium": "93mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice cream, soft serve, composite",
//     "calories": "99.37kcal",
//     "protein": "3.7g",
//     "fat": "0.36g",
//     "sodium": "48.9mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice cream, softserve, caramel topping, Sundae, McDonald's",
//     "calories": "201.78kcal",
//     "protein": "4.02g",
//     "fat": "5.5g",
//     "sodium": "78mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice cream, softserve, chocolate topping, Sundae, McDonald's",
//     "calories": "183.66kcal",
//     "protein": "4.27g",
//     "fat": "4.7g",
//     "sodium": "98mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice cream, softserve, strawberry topping, Sundae, McDonald's",
//     "calories": "165.17kcal",
//     "protein": "3.38g",
//     "fat": "3.1g",
//     "sodium": "56mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice cream, stick, assorted flavours, Paddle Pop",
//     "calories": "133.92kcal",
//     "protein": "3.13g",
//     "fat": "3.87g",
//     "sodium": "49mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice cream, stick, chocolate, Paddle Pop",
//     "calories": "139.55kcal",
//     "protein": "3.32g",
//     "fat": "3.84g",
//     "sodium": "46mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice cream, vanilla, economy",
//     "calories": "199.06kcal",
//     "protein": "3.25g",
//     "fat": "11.17g",
//     "sodium": "71.8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice cream, vanilla, low fat",
//     "calories": "130.28kcal",
//     "protein": "4.85g",
//     "fat": "3.08g",
//     "sodium": "61mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice cream, vanilla, premium",
//     "calories": "215.16kcal",
//     "protein": "3.32g",
//     "fat": "14.6g",
//     "sodium": "42mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice cream, vanilla, standard",
//     "calories": "190.46kcal",
//     "protein": "3.32g",
//     "fat": "10.84g",
//     "sodium": "45mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice cream, with fruit sorbet shell, Paradiso",
//     "calories": "147.66kcal",
//     "protein": "3.19g",
//     "fat": "6.18g",
//     "sodium": "34.2mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Ice cream, with honey comb toffee, creamier, Hokey Pokey, composite",
//     "calories": "229.8kcal",
//     "protein": "4.27g",
//     "fat": "13.2g",
//     "sodium": "50mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice cream, with honey comb toffee, hokey pokey, composite",
//     "calories": "165.46kcal",
//     "protein": "4.27g",
//     "fat": "6.28g",
//     "sodium": "46mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice cream, with jelly & chocolate, Jelly Tip, Tip Top",
//     "calories": "237.34kcal",
//     "protein": "2.74g",
//     "fat": "13.8g",
//     "sodium": "41mg",
//     "status": "false1"
//   },
//   {
//     "food": "Iceberg and Watercress Salad with Blue Cheese Dressing",
//     "calories": "249kcal",
//     "protein": "8g",
//     "fat": "22g",
//     "sodium": "612mg",
//     "status": "false1"
//   },
//   {
//     "food": "Iceberg Wedge with Warm Bacon and Blue Cheese Dressing",
//     "calories": "655kcal",
//     "protein": "10g",
//     "fat": "66g",
//     "sodium": "870mg",
//     "status": "false1"
//   },
//   {
//     "food": "Iceberg Wedges with Creamy Blue Cheese Dressing",
//     "calories": "292kcal",
//     "protein": "6g",
//     "fat": "27g",
//     "sodium": "375mg",
//     "status": "false1"
//   },
//   {
//     "food": "Iceberg with Tomatoes, Blue Cheese, and Bacon",
//     "calories": "651kcal",
//     "protein": "19g",
//     "fat": "61g",
//     "sodium": "1073mg",
//     "status": "false1"
//   },
//   {
//     "food": "Iced Cappuccino Cream Cake",
//     "calories": "244kcal",
//     "protein": "4g",
//     "fat": "13g",
//     "sodium": "87mg",
//     "status": "false1"
//   },
//   {
//     "food": "Iced Chocolate Soda",
//     "calories": "413kcal",
//     "protein": "7g",
//     "fat": "22g",
//     "sodium": "76mg",
//     "status": "false1"
//   },
//   {
//     "food": "Iced Coffee Mousse",
//     "calories": "354kcal",
//     "protein": "7g",
//     "fat": "18g",
//     "sodium": "111mg",
//     "status": "false1"
//   },
//   {
//     "food": "Iced Cucumber Soup with Mint, Watercress, and Feta Cheese",
//     "calories": "162kcal",
//     "protein": "10g",
//     "fat": "9g",
//     "sodium": "647mg",
//     "status": "false1"
//   },
//   {
//     "food": "Iced Ginger Tea with Lemon and Cloves",
//     "calories": "273kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "42mg",
//     "status": "false1"
//   },
//   {
//     "food": "Iced Mint Tea",
//     "calories": "11kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "11mg",
//     "status": "false1"
//   },
//   {
//     "food": "Iced Vodka with Cucumber, Lemon, and Mint",
//     "calories": "185kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "9mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ice-Tray Sushi Blocks",
//     "calories": "47kcal",
//     "protein": "2g",
//     "fat": "2g",
//     "sodium": "34mg",
//     "status": "false1"
//   },
//   {
//     "food": "Icy Lemon-Mint Parfaits",
//     "calories": "229kcal",
//     "protein": "2g",
//     "fat": "6g",
//     "sodium": "18mg",
//     "status": "false1"
//   },
//   {
//     "food": "Imperial",
//     "calories": "127kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Imperial Hotel Fizz",
//     "calories": "181kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Income Tax Cocktail",
//     "calories": "70kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Incredible Melted Ice-Cream Cake",
//     "calories": "194kcal",
//     "protein": "3g",
//     "fat": "7g",
//     "sodium": "241mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indian Baked Rice",
//     "calories": "395kcal",
//     "protein": "9g",
//     "fat": "12g",
//     "sodium": "323mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indian Cheese and Red Peppers in Fragrant Spinach Sauce",
//     "calories": "274kcal",
//     "protein": "9g",
//     "fat": "22g",
//     "sodium": "432mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indian Clarified Butter",
//     "calories": "203kcal",
//     "protein": "0g",
//     "fat": "23g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indian Clarified Butter (Ghee)",
//     "calories": "271kcal",
//     "protein": "0g",
//     "fat": "31g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indian Lentil and Split Pea Spread",
//     "calories": "262kcal",
//     "protein": "10g",
//     "fat": "12g",
//     "sodium": "34mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indian Potato Pancakes with Curry-Lime Yogurt",
//     "calories": "121kcal",
//     "protein": "2g",
//     "fat": "7g",
//     "sodium": "14mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indian Pudding",
//     "calories": "254kcal",
//     "protein": "7g",
//     "fat": "7g",
//     "sodium": "293mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indian Pudding with Dried-Fruit Compote",
//     "calories": "282kcal",
//     "protein": "5g",
//     "fat": "3g",
//     "sodium": "58mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indian Pudding with Nutmeg Ice Cream",
//     "calories": "286kcal",
//     "protein": "6g",
//     "fat": "12g",
//     "sodium": "154mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indian Ratatouille",
//     "calories": "157kcal",
//     "protein": "3g",
//     "fat": "10g",
//     "sodium": "13mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indian Spiced Cauliflower and Potatoes",
//     "calories": "332kcal",
//     "protein": "7g",
//     "fat": "18g",
//     "sodium": "508mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indian Spiced Mayonnaise",
//     "calories": "861kcal",
//     "protein": "4g",
//     "fat": "90g",
//     "sodium": "703mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indian Sweet Coconut Dumplings",
//     "calories": "78kcal",
//     "protein": "1g",
//     "fat": "5g",
//     "sodium": "50mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indian Vegetable Patties",
//     "calories": "60kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "17mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indian-Spiced Chicken Kebabs with Cilantro-Mint Chutney",
//     "calories": "64kcal",
//     "protein": "6g",
//     "fat": "4g",
//     "sodium": "33mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indian-Spiced Chicken With Tomato and Cream",
//     "calories": "770kcal",
//     "protein": "49g",
//     "fat": "51g",
//     "sodium": "382mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indian-Spiced Chicken, Eggplant, and Tomato Skewers",
//     "calories": "570kcal",
//     "protein": "49g",
//     "fat": "35g",
//     "sodium": "1728mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indian-Spiced Pickled Vegetables",
//     "calories": "200kcal",
//     "protein": "3g",
//     "fat": "14g",
//     "sodium": "61mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indian-Spiced Rice with Lentils",
//     "calories": "250kcal",
//     "protein": "10g",
//     "fat": "2g",
//     "sodium": "788mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indian-Spiced Shrimp",
//     "calories": "180kcal",
//     "protein": "17g",
//     "fat": "9g",
//     "sodium": "1087mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indian-Spiced Sturgeon with Mint Yogurt Sauce",
//     "calories": "230kcal",
//     "protein": "30g",
//     "fat": "9g",
//     "sodium": "516mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indian-Style Chicken with Ginger and Curry",
//     "calories": "376kcal",
//     "protein": "54g",
//     "fat": "14g",
//     "sodium": "121mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indian-Style Cucumber Salad",
//     "calories": "39kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "311mg",
//     "status": "false1"
//   },
//   {
//     "food": "Individual Berry Cobblers with Lemon Buttermilk Ice Cream",
//     "calories": "803kcal",
//     "protein": "11g",
//     "fat": "27g",
//     "sodium": "270mg",
//     "status": "false1"
//   },
//   {
//     "food": "Individual Blueberry-Coconut Pound Cakes",
//     "calories": "641kcal",
//     "protein": "8g",
//     "fat": "37g",
//     "sodium": "234mg",
//     "status": "false1"
//   },
//   {
//     "food": "Individual Coconut Rum Chocolate Cakes",
//     "calories": "294kcal",
//     "protein": "4g",
//     "fat": "16g",
//     "sodium": "241mg",
//     "status": "false1"
//   },
//   {
//     "food": "Individual Goat Cheese and Rosemary Bread Puddings",
//     "calories": "265kcal",
//     "protein": "9g",
//     "fat": "20g",
//     "sodium": "248mg",
//     "status": "false1"
//   },
//   {
//     "food": "Individual Meatloaves with Bacon Crisps",
//     "calories": "790kcal",
//     "protein": "42g",
//     "fat": "54g",
//     "sodium": "1635mg",
//     "status": "false1"
//   },
//   {
//     "food": "Individual Orange and Poppy Seed Pound Cakes",
//     "calories": "1222kcal",
//     "protein": "17g",
//     "fat": "68g",
//     "sodium": "483mg",
//     "status": "false1"
//   },
//   {
//     "food": "Individual Plum Cobblers with Hazelnut Topping",
//     "calories": "301kcal",
//     "protein": "3g",
//     "fat": "13g",
//     "sodium": "123mg",
//     "status": "false1"
//   },
//   {
//     "food": "Individual Raspberry and Banana Trifles",
//     "calories": "393kcal",
//     "protein": "7g",
//     "fat": "11g",
//     "sodium": "179mg",
//     "status": "false1"
//   },
//   {
//     "food": "Individual Rhubarb and Orange Crumbles",
//     "calories": "505kcal",
//     "protein": "9g",
//     "fat": "28g",
//     "sodium": "12mg",
//     "status": "false1"
//   },
//   {
//     "food": "Individual Sausage, Tomato, and Artichoke-Heart Pizzas",
//     "calories": "1058kcal",
//     "protein": "45g",
//     "fat": "55g",
//     "sodium": "2161mg",
//     "status": "false1"
//   },
//   {
//     "food": "Individual Zucchini, Lemon, and Ricotta Galettes",
//     "calories": "627kcal",
//     "protein": "17g",
//     "fat": "45g",
//     "sodium": "909mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indonesian Fried Noodles",
//     "calories": "889kcal",
//     "protein": "50g",
//     "fat": "28g",
//     "sodium": "1918mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indonesian Fried Rice",
//     "calories": "1208kcal",
//     "protein": "50g",
//     "fat": "78g",
//     "sodium": "2560mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indonesian Spice Cake",
//     "calories": "5221kcal",
//     "protein": "59g",
//     "fat": "312g",
//     "sodium": "832mg",
//     "status": "false1"
//   },
//   {
//     "food": "Indonesian Spiced Rice",
//     "calories": "365kcal",
//     "protein": "6g",
//     "fat": "12g",
//     "sodium": "620mg",
//     "status": "false1"
//   },
//   {
//     "food": "Insalata Mista",
//     "calories": "129kcal",
//     "protein": "1g",
//     "fat": "11g",
//     "sodium": "40mg",
//     "status": "false1"
//   },
//   {
//     "food": "Japanese Beef and Scallion Rolls",
//     "calories": "187kcal",
//     "protein": "17g",
//     "fat": "9g",
//     "sodium": "482mg",
//     "status": "false1"
//   },
//   {
//     "food": "Japanese Beef and Vegetable Stew",
//     "calories": "702kcal",
//     "protein": "46g",
//     "fat": "33g",
//     "sodium": "2952mg",
//     "status": "false1"
//   },
//   {
//     "food": "Japanese Cucumber Salad with Vinegar",
//     "calories": "40kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "1654mg",
//     "status": "false1"
//   },
//   {
//     "food": "Japanese Noodles with Bok Choy and Tofu",
//     "calories": "583kcal",
//     "protein": "28g",
//     "fat": "16g",
//     "sodium": "910mg",
//     "status": "false1"
//   },
//   {
//     "food": "Japanese-Style Fried Rice (Chahan)",
//     "calories": "1739kcal",
//     "protein": "101g",
//     "fat": "29g",
//     "sodium": "4386mg",
//     "status": "false1"
//   },
//   {
//     "food": "Japanese-Style Grilled Fish",
//     "calories": "290kcal",
//     "protein": "36g",
//     "fat": "10g",
//     "sodium": "989mg",
//     "status": "false1"
//   },
//   {
//     "food": "Japanese-Style Potato Salad with Daikon and Cucumber",
//     "calories": "372kcal",
//     "protein": "5g",
//     "fat": "23g",
//     "sodium": "187mg",
//     "status": "false1"
//   },
//   {
//     "food": "Japanese-Style Quick-Pickled Slaw",
//     "calories": "77kcal",
//     "protein": "2g",
//     "fat": "5g",
//     "sodium": "570mg",
//     "status": "false1"
//   },
//   {
//     "food": "Jasmine Rice Timbales with Black and White Sesame Seeds",
//     "calories": "256kcal",
//     "protein": "4g",
//     "fat": "9g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Jasmine Rice with Cumin and Mustard Seeds",
//     "calories": "301kcal",
//     "protein": "6g",
//     "fat": "5g",
//     "sodium": "12mg",
//     "status": "false1"
//   },
//   {
//     "food": "Jasmine Rice with Garlic, Ginger, and Cilantro",
//     "calories": "328kcal",
//     "protein": "8g",
//     "fat": "7g",
//     "sodium": "266mg",
//     "status": "false1"
//   },
//   {
//     "food": "Jasmine Whipped Cream",
//     "calories": "116kcal",
//     "protein": "1g",
//     "fat": "11g",
//     "sodium": "12mg",
//     "status": "false1"
//   },
//   {
//     "food": "Javanese Chicken Curry",
//     "calories": "1138kcal",
//     "protein": "69g",
//     "fat": "86g",
//     "sodium": "627mg",
//     "status": "false1"
//   },
//   {
//     "food": "Javanese Roasted Salmon and Wilted Spinach",
//     "calories": "628kcal",
//     "protein": "43g",
//     "fat": "43g",
//     "sodium": "1033mg",
//     "status": "false1"
//   },
//   {
//     "food": "Javelin fish, flesh, raw",
//     "calories": "76.05kcal",
//     "protein": "16.69g",
//     "fat": "0.81g",
//     "sodium": "92mg",
//     "status": "false1"
//   },
//   {
//     "food": "Jealous Marys",
//     "calories": "93kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "415mg",
//     "status": "false1"
//   },
//   {
//     "food": "Jeanne's Gluten-Free All-Purpose Flour",
//     "calories": "297kcal",
//     "protein": "4g",
//     "fat": "1g",
//     "sodium": "16mg",
//     "status": "false1"
//   },
//   {
//     "food": "Jellied Apple Cranberry Sauce",
//     "calories": "213kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Jellied Cranberry and Port Sauce",
//     "calories": "186kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Jellied Quinces and Manchego Cheese",
//     "calories": "344kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "12mg",
//     "status": "false1"
//   },
//   {
//     "food": "Jelly, crystals, unprepared",
//     "calories": "397.77kcal",
//     "protein": "7.1g",
//     "fat": "0g",
//     "sodium": "520mg",
//     "status": "false1"
//   },
//   {
//     "food": "Jerusalem Artichoke and Sage Gratin",
//     "calories": "916kcal",
//     "protein": "14g",
//     "fat": "67g",
//     "sodium": "383mg",
//     "status": "false1"
//   },
//   {
//     "food": "Jerusalem Artichoke Chips with Lemon Thyme Dip",
//     "calories": "4188kcal",
//     "protein": "2g",
//     "fat": "464g",
//     "sodium": "171mg",
//     "status": "false1"
//   },
//   {
//     "food": "Jerusalem Artichoke Pickles",
//     "calories": "82kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "2511mg",
//     "status": "false1"
//   },
//   {
//     "food": "Jerusalem Artichoke Soup",
//     "calories": "379kcal",
//     "protein": "15g",
//     "fat": "13g",
//     "sodium": "358mg",
//     "status": "false1"
//   },
//   {
//     "food": "Jerusalem Artichoke Soup with Pumpernickel Croutons",
//     "calories": "274kcal",
//     "protein": "6g",
//     "fat": "10g",
//     "sodium": "387mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Jerusalem artichoke, root vegetable, tuber, flesh, boiled, drained, no salt added",
//     "calories": "19.45kcal",
//     "protein": "1.56g",
//     "fat": "0.1g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Jewel or Bijou",
//     "calories": "187kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Jeweled Rice",
//     "calories": "517kcal",
//     "protein": "7g",
//     "fat": "18g",
//     "sodium": "20mg",
//     "status": "false1"
//   },
//   {
//     "food": "Jeweled Rice with Dried Fruit",
//     "calories": "413kcal",
//     "protein": "6g",
//     "fat": "14g",
//     "sodium": "2642mg",
//     "status": "false1"
//   },
//   {
//     "food": "Juice concentrate, apple & mango, Fresh Up",
//     "calories": "164.55kcal",
//     "protein": "4.25g",
//     "fat": "0.05g",
//     "sodium": "5mg",
//     "status": "false1"
//   },
//   {
//     "food": "Juice concentrate, blackcurrant, frozen",
//     "calories": "152.19kcal",
//     "protein": "1.88g",
//     "fat": "0.5g",
//     "sodium": "18mg",
//     "status": "false1"
//   },
//   {
//     "food": "Juice concentrate, orange & mango",
//     "calories": "140.53kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "74mg",
//     "status": "false1"
//   },
//   {
//     "food": "Juice, apple, ready to drink, Fresh Up",
//     "calories": "43.97kcal",
//     "protein": "1.13g",
//     "fat": "0.04g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Juice, carrot, canned, ready to drink",
//     "calories": "31.28kcal",
//     "protein": "0.58g",
//     "fat": "0.13g",
//     "sodium": "26mg",
//     "status": "false1"
//   },
//   {
//     "food": "Juice, lemon, raw",
//     "calories": "24kcal",
//     "protein": "0.31g",
//     "fat": "0.2g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Juice, orange & mango, Just Juice, fortified vitamin C",
//     "calories": "45.69kcal",
//     "protein": "0.25g",
//     "fat": "0.02g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Juice, orange, raw",
//     "calories": "42.11kcal",
//     "protein": "0.63g",
//     "fat": "0.2g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Juice, pineapple, canned, ready to drink",
//     "calories": "55.84kcal",
//     "protein": "0.31g",
//     "fat": "0.1g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Juice, pineapple, ready to drink, Golden Circle, fortified vitamin C",
//     "calories": "56.03kcal",
//     "protein": "0.31g",
//     "fat": "0.1g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Juice, tomato, ready to drink, McCoy",
//     "calories": "23.73kcal",
//     "protein": "0.94g",
//     "fat": "0.12g",
//     "sodium": "93mg",
//     "status": "false1"
//   },
//   {
//     "food": "Kiwi Tart",
//     "calories": "353kcal",
//     "protein": "5g",
//     "fat": "24g",
//     "sodium": "336mg",
//     "status": "false1"
//   },
//   {
//     "food": "Kiwi-Cream Cheese Tart",
//     "calories": "567kcal",
//     "protein": "6g",
//     "fat": "42g",
//     "sodium": "245mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Kiwifruit, gold, flesh & seed, raw, Zespri SunGold Kiwifruit, Zespri",
//     "calories": "66.87kcal",
//     "protein": "1.02g",
//     "fat": "0.28g",
//     "sodium": "2.72mg",
//     "status": "false1"
//   },
//   {
//     "food": "Korean Barbecued Beef",
//     "calories": "60kcal",
//     "protein": "5g",
//     "fat": "2g",
//     "sodium": "137mg",
//     "status": "false1"
//   },
//   {
//     "food": "Korean Steak Tartare",
//     "calories": "65kcal",
//     "protein": "4g",
//     "fat": "4g",
//     "sodium": "106mg",
//     "status": "false1"
//   },
//   {
//     "food": "Korean Vegetable Rice Bowl",
//     "calories": "738kcal",
//     "protein": "27g",
//     "fat": "28g",
//     "sodium": "1699mg",
//     "status": "false1"
//   },
//   {
//     "food": "Korean-Style Grain Bowls With Spicy Marinated Steak",
//     "calories": "1251kcal",
//     "protein": "67g",
//     "fat": "50g",
//     "sodium": "2056mg",
//     "status": "false1"
//   },
//   {
//     "food": "Korean-Style Grilled Beef Short Ribs and Scallions",
//     "calories": "1285kcal",
//     "protein": "46g",
//     "fat": "116g",
//     "sodium": "1322mg",
//     "status": "false1"
//   },
//   {
//     "food": "Lamb Burgers in Pita with Yogurt Sauce",
//     "calories": "562kcal",
//     "protein": "32g",
//     "fat": "29g",
//     "sodium": "422mg",
//     "status": "false1"
//   },
//   {
//     "food": "Lamb with Peas and Tomatoes",
//     "calories": "568kcal",
//     "protein": "29g",
//     "fat": "43g",
//     "sodium": "246mg",
//     "status": "false1"
//   },
//   {
//     "food": "Lamb, liver, raw",
//     "calories": "162.67kcal",
//     "protein": "21.38g",
//     "fat": "7.5g",
//     "sodium": "67mg",
//     "status": "false1"
//   },
//   {
//     "food": "Lemon Cream Pie",
//     "calories": "3705kcal",
//     "protein": "51g",
//     "fat": "267g",
//     "sodium": "1469mg",
//     "status": "false1"
//   },
//   {
//     "food": "Lemon, flesh, raw",
//     "calories": "19.1kcal",
//     "protein": "0.63g",
//     "fat": "0.3g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Lemon, Honey and Walnut Tart",
//     "calories": "579kcal",
//     "protein": "10g",
//     "fat": "31g",
//     "sodium": "232mg",
//     "status": "false1"
//   },
//   {
//     "food": "Lemony Yogurt Sauce",
//     "calories": "39kcal",
//     "protein": "2g",
//     "fat": "2g",
//     "sodium": "88mg",
//     "status": "false1"
//   },
//   {
//     "food": "Lime Sugar",
//     "calories": "310kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Lime Syrup",
//     "calories": "326kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Malaysian-Style Chicken Curry",
//     "calories": "1227kcal",
//     "protein": "123g",
//     "fat": "72g",
//     "sodium": "461mg",
//     "status": "false1"
//   },
//   {
//     "food": "Malt-Beer-Brined Turkey with Malt Glaze",
//     "calories": "2675kcal",
//     "protein": "343g",
//     "fat": "96g",
//     "sodium": "24382mg",
//     "status": "false1"
//   },
//   {
//     "food": "Malted Milk Ice Cream Cake with Blackberry Topping",
//     "calories": "574kcal",
//     "protein": "10g",
//     "fat": "22g",
//     "sodium": "169mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mandarin Chocolate Cake",
//     "calories": "628kcal",
//     "protein": "8g",
//     "fat": "35g",
//     "sodium": "48mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mandarin, flesh, fresh, raw, composite",
//     "calories": "41.03kcal",
//     "protein": "0.91g",
//     "fat": "0.2g",
//     "sodium": "0.7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mandarin, in syrup, canned, undrained",
//     "calories": "61.51kcal",
//     "protein": "0.63g",
//     "fat": "0.1g",
//     "sodium": "9mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mango and Avocado Salad with Peanut Dressing",
//     "calories": "107kcal",
//     "protein": "3g",
//     "fat": "8g",
//     "sodium": "360mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mango and Coconut Rice Salad",
//     "calories": "502kcal",
//     "protein": "11g",
//     "fat": "23g",
//     "sodium": "675mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mango and Lime Chiffon Cake",
//     "calories": "447kcal",
//     "protein": "7g",
//     "fat": "20g",
//     "sodium": "227mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mango-Coconut Ice Cream Pies with Blackberry Sauce",
//     "calories": "361kcal",
//     "protein": "3g",
//     "fat": "13g",
//     "sodium": "96mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mango-Cucumber Wine Cooler",
//     "calories": "169kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mango-Curry Shrimp Salad in Wonton Cups",
//     "calories": "45kcal",
//     "protein": "2g",
//     "fat": "2g",
//     "sodium": "95mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mango-Filled Cream Puffs with Spiced Mango-Mojito Sauce",
//     "calories": "394kcal",
//     "protein": "7g",
//     "fat": "27g",
//     "sodium": "144mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mango-Lime Ice",
//     "calories": "608kcal",
//     "protein": "7g",
//     "fat": "3g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mango-Lime Salad",
//     "calories": "222kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mango-Orange Mousse Cake",
//     "calories": "528kcal",
//     "protein": "12g",
//     "fat": "24g",
//     "sodium": "63mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mango-Papaya Smoothie",
//     "calories": "246kcal",
//     "protein": "6g",
//     "fat": "5g",
//     "sodium": "62mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mango-Pineapple Tart with Macadamia Nut Crust",
//     "calories": "377kcal",
//     "protein": "5g",
//     "fat": "23g",
//     "sodium": "74mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mango-Pineapple-Lime Cheesecake with Ginger Crust",
//     "calories": "590kcal",
//     "protein": "9g",
//     "fat": "39g",
//     "sodium": "332mg",
//     "status": "false1"
//   },
//   {
//     "food": "Matcha Affogato With Green Tea Ice Cream",
//     "calories": "167kcal",
//     "protein": "3g",
//     "fat": "8g",
//     "sodium": "121mg",
//     "status": "false1"
//   },
//   {
//     "food": "Meat Loaf Plus",
//     "calories": "501kcal",
//     "protein": "27g",
//     "fat": "33g",
//     "sodium": "1228mg",
//     "status": "false1"
//   },
//   {
//     "food": "Meat Loaf With Mushroom Gravy",
//     "calories": "679kcal",
//     "protein": "61g",
//     "fat": "39g",
//     "sodium": "876mg",
//     "status": "false1"
//   },
//   {
//     "food": "Meatball and Vegetable Soup",
//     "calories": "436kcal",
//     "protein": "21g",
//     "fat": "22g",
//     "sodium": "1161mg",
//     "status": "false1"
//   },
//   {
//     "food": "Meatball Sliders",
//     "calories": "766kcal",
//     "protein": "36g",
//     "fat": "43g",
//     "sodium": "1330mg",
//     "status": "false1"
//   },
//   {
//     "food": "Melon",
//     "calories": "121kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Milk, goat, whole, powder",
//     "calories": "511.79kcal",
//     "protein": "26.92g",
//     "fat": "29.79g",
//     "sodium": "342mg",
//     "status": "false1"
//   },
//   {
//     "food": "Milk, human, mature, fluid",
//     "calories": "69.54kcal",
//     "protein": "1.28g",
//     "fat": "4.1g",
//     "sodium": "15mg",
//     "status": "false1"
//   },
//   {
//     "food": "Milk, human, transitional, fluid",
//     "calories": "65.56kcal",
//     "protein": "1.47g",
//     "fat": "3.7g",
//     "sodium": "30mg",
//     "status": "false1"
//   },
//   {
//     "food": "Milk, sheep, whole, fresh, fluid, composite",
//     "calories": "99.03kcal",
//     "protein": "5.51g",
//     "fat": "6.45g",
//     "sodium": "39mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mincemeat Ice Cream",
//     "calories": "297kcal",
//     "protein": "3g",
//     "fat": "13g",
//     "sodium": "138mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mini Vanilla Cupcakes",
//     "calories": "112kcal",
//     "protein": "1g",
//     "fat": "3g",
//     "sodium": "46mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mint Chip Ice Cream",
//     "calories": "247kcal",
//     "protein": "3g",
//     "fat": "14g",
//     "sodium": "64mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mocha Berry-Almond Smoothie",
//     "calories": "249kcal",
//     "protein": "8g",
//     "fat": "11g",
//     "sodium": "32mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mocha Brownies",
//     "calories": "311kcal",
//     "protein": "4g",
//     "fat": "20g",
//     "sodium": "19mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mocha Buttercream",
//     "calories": "267kcal",
//     "protein": "1g",
//     "fat": "21g",
//     "sodium": "190mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mocha Cake with Malted Semifreddo",
//     "calories": "799kcal",
//     "protein": "19g",
//     "fat": "44g",
//     "sodium": "351mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mocha Custard Tart",
//     "calories": "515kcal",
//     "protein": "8g",
//     "fat": "33g",
//     "sodium": "240mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mojito",
//     "calories": "195kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "15mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mozzarella and Tomato Sauce Omelets",
//     "calories": "438kcal",
//     "protein": "23g",
//     "fat": "34g",
//     "sodium": "794mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mozzarella Pesto Spread",
//     "calories": "312kcal",
//     "protein": "14g",
//     "fat": "27g",
//     "sodium": "624mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mozzarella, Tomato, and Ham Layered Sandwiches",
//     "calories": "210kcal",
//     "protein": "12g",
//     "fat": "17g",
//     "sodium": "688mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mushroom and Onion Gratins",
//     "calories": "300kcal",
//     "protein": "11g",
//     "fat": "20g",
//     "sodium": "177mg",
//     "status": "false1"
//   },
//   {
//     "food": "Mushrooms with Garlic and Madeira",
//     "calories": "352kcal",
//     "protein": "6g",
//     "fat": "35g",
//     "sodium": "27mg",
//     "status": "false1"
//   },
//   {
//     "food": "Noodle, wheat flour with egg, boiled, drained",
//     "calories": "65.13kcal",
//     "protein": "2.28g",
//     "fat": "0.5g",
//     "sodium": "15mg",
//     "status": "false1"
//   },
//   {
//     "food": "Noodle, wheat flour with egg, fried",
//     "calories": "153.81kcal",
//     "protein": "1.94g",
//     "fat": "11.5g",
//     "sodium": "84mg",
//     "status": "false1"
//   },
//   {
//     "food": "Noodles with Eggplant Sauce",
//     "calories": "976kcal",
//     "protein": "35g",
//     "fat": "53g",
//     "sodium": "1091mg",
//     "status": "false1"
//   },
//   {
//     "food": "Noodles with Pesto, Parmesan and Broccoli",
//     "calories": "1223kcal",
//     "protein": "40g",
//     "fat": "77g",
//     "sodium": "1438mg",
//     "status": "false1"
//   },
//   {
//     "food": "Nut bar, peanut & chocolate, Choc Peanut, Tasti",
//     "calories": "451.87kcal",
//     "protein": "12.19g",
//     "fat": "28.9g",
//     "sodium": "26mg",
//     "status": "false1"
//   },
//   {
//     "food": "Nut Butter",
//     "calories": "264kcal",
//     "protein": "7g",
//     "fat": "24g",
//     "sodium": "84mg",
//     "status": "false1"
//   },
//   {
//     "food": "Nut, almond, dried, blanched, composite",
//     "calories": "619.44kcal",
//     "protein": "21.75g",
//     "fat": "55.71g",
//     "sodium": "0mg",
//     "status": "false1"
//   },
//   {
//     "food": "Nut, almond, dry roasted, salt added",
//     "calories": "601.49kcal",
//     "protein": "22.09g",
//     "fat": "52.83g",
//     "sodium": "339mg",
//     "status": "false1"
//   },
//   {
//     "food": "Nut, cashew, raw",
//     "calories": "584.31kcal",
//     "protein": "17.01g",
//     "fat": "49.2g",
//     "sodium": "11mg",
//     "status": "false1"
//   },
//   {
//     "food": "Nut, cashew, roasted, no salt added",
//     "calories": "637.4kcal",
//     "protein": "16.75g",
//     "fat": "51.3g",
//     "sodium": "16mg",
//     "status": "false1"
//   },
//   {
//     "food": "Nut, chestnut, raw",
//     "calories": "188.28kcal",
//     "protein": "4.77g",
//     "fat": "0.81g",
//     "sodium": "0.53mg",
//     "status": "false1"
//   },
//   {
//     "food": "Nut, hazelnut, kernel, whole, raw, unblanched, composite",
//     "calories": "661.68kcal",
//     "protein": "13.46g",
//     "fat": "64.5g",
//     "sodium": "0mg",
//     "status": "false1"
//   },
//   {
//     "food": "Nut, mixed, salted",
//     "calories": "610.68kcal",
//     "protein": "22.63g",
//     "fat": "52.45g",
//     "sodium": "346mg",
//     "status": "false1"
//   },
//   {
//     "food": "Nut, peanut, coated with milk chocolate",
//     "calories": "527.41kcal",
//     "protein": "11.06g",
//     "fat": "29.5g",
//     "sodium": "41mg",
//     "status": "false1"
//   },
//   {
//     "food": "Nut, peanut, raw",
//     "calories": "580.97kcal",
//     "protein": "24.35g",
//     "fat": "49g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Oatmeal Coconut Raspberry Bars",
//     "calories": "170kcal",
//     "protein": "2g",
//     "fat": "8g",
//     "sodium": "69mg",
//     "status": "false1"
//   },
//   {
//     "food": "Oatmeal Coconut Squares with Chocolate Chips",
//     "calories": "134kcal",
//     "protein": "2g",
//     "fat": "7g",
//     "sodium": "61mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Oats, quick sachets, plain, sweetened with honey and/or sugar, dry, composite",
//     "calories": "379.54kcal",
//     "protein": "9.31g",
//     "fat": "6.5g",
//     "sodium": "15mg",
//     "status": "false1"
//   },
//   {
//     "food": "Orange and Banana Yogurt Smoothie",
//     "calories": "183kcal",
//     "protein": "5g",
//     "fat": "1g",
//     "sodium": "50mg",
//     "status": "false1"
//   },
//   {
//     "food": "Orange and Radish Salad",
//     "calories": "38kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Orange and Spice Pumpkin Pie",
//     "calories": "375kcal",
//     "protein": "7g",
//     "fat": "19g",
//     "sodium": "268mg",
//     "status": "false1"
//   },
//   {
//     "food": "Panfried Almond-and Sesame-Dusted Chicken",
//     "calories": "2607kcal",
//     "protein": "132g",
//     "fat": "188g",
//     "sodium": "5967mg",
//     "status": "false1"
//   },
//   {
//     "food": "Panfried Bean Burritos",
//     "calories": "665kcal",
//     "protein": "20g",
//     "fat": "45g",
//     "sodium": "1438mg",
//     "status": "false1"
//   },
//   {
//     "food": "Paprika Rice",
//     "calories": "213kcal",
//     "protein": "4g",
//     "fat": "0g",
//     "sodium": "27mg",
//     "status": "false1"
//   },
//   {
//     "food": "Passion Fruit and Guava Pops",
//     "calories": "107kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "14mg",
//     "status": "false1"
//   },
//   {
//     "food": "Passion Fruit Tart",
//     "calories": "457kcal",
//     "protein": "10g",
//     "fat": "22g",
//     "sodium": "136mg",
//     "status": "false1"
//   },
//   {
//     "food": "Passion fruit, flesh & seed, raw",
//     "calories": "72.27kcal",
//     "protein": "2.75g",
//     "fat": "0.5g",
//     "sodium": "28mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pasta with Clams",
//     "calories": "288kcal",
//     "protein": "16g",
//     "fat": "14g",
//     "sodium": "580mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pasta with Eggplant, Capers, and Olives",
//     "calories": "2519kcal",
//     "protein": "17g",
//     "fat": "230g",
//     "sodium": "871mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pasta with Goat Cheese, Lemon, and Asparagus",
//     "calories": "442kcal",
//     "protein": "16g",
//     "fat": "15g",
//     "sodium": "120mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pasta with Shrimp, Tomato, and Arugula",
//     "calories": "763kcal",
//     "protein": "34g",
//     "fat": "23g",
//     "sodium": "752mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pea Pesto",
//     "calories": "278kcal",
//     "protein": "19g",
//     "fat": "2g",
//     "sodium": "518mg",
//     "status": "false1"
//   },
//   {
//     "food": "Peach Crisp",
//     "calories": "876kcal",
//     "protein": "2g",
//     "fat": "8g",
//     "sodium": "125mg",
//     "status": "false1"
//   },
//   {
//     "food": "Peanut Punch",
//     "calories": "490kcal",
//     "protein": "18g",
//     "fat": "33g",
//     "sodium": "116mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pepper Monkey Lamb Meatballs",
//     "calories": "648kcal",
//     "protein": "38g",
//     "fat": "51g",
//     "sodium": "1427mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pepper Vinegar",
//     "calories": "109kcal",
//     "protein": "3g",
//     "fat": "1g",
//     "sodium": "20mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pepper, red chilli, flesh, raw",
//     "calories": "35.95kcal",
//     "protein": "1.06g",
//     "fat": "0.4g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pepper, Rosemary, and Cheese Bread",
//     "calories": "290kcal",
//     "protein": "12g",
//     "fat": "9g",
//     "sodium": "500mg",
//     "status": "false1"
//   },
//   {
//     "food": "Peppercorn- and Thyme-Roasted Goose",
//     "calories": "1982kcal",
//     "protein": "77g",
//     "fat": "181g",
//     "sodium": "659mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pie Crust",
//     "calories": "252kcal",
//     "protein": "4g",
//     "fat": "15g",
//     "sodium": "243mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pie, apple, ready to eat, McDonald's",
//     "calories": "251.72kcal",
//     "protein": "2.26g",
//     "fat": "13.99g",
//     "sodium": "509mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pine Nut and Basil Rice",
//     "calories": "272kcal",
//     "protein": "5g",
//     "fat": "16g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pine Nut Caramel Bars",
//     "calories": "315kcal",
//     "protein": "3g",
//     "fat": "24g",
//     "sodium": "41mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pine Nut Cardamom Scones",
//     "calories": "195kcal",
//     "protein": "4g",
//     "fat": "10g",
//     "sodium": "256mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pine Nut Cookies",
//     "calories": "141kcal",
//     "protein": "3g",
//     "fat": "8g",
//     "sodium": "34mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pineapple and Banana Couscous Pudding",
//     "calories": "283kcal",
//     "protein": "3g",
//     "fat": "16g",
//     "sodium": "22mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pineapple and Bell Pepper Gazpacho",
//     "calories": "123kcal",
//     "protein": "2g",
//     "fat": "0g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pineapple Bowl",
//     "calories": "562kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "46mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pizza 6: Pan-fried Hawaiian Pizza",
//     "calories": "2036kcal",
//     "protein": "58g",
//     "fat": "137g",
//     "sodium": "3191mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pizza Dough",
//     "calories": "232kcal",
//     "protein": "7g",
//     "fat": "1g",
//     "sodium": "556mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pizza Dough Rounds",
//     "calories": "250kcal",
//     "protein": "9g",
//     "fat": "6g",
//     "sodium": "463mg",
//     "status": "false1"
//   },
//   {
//     "food": "Poached Salmon with Artichoke Confit",
//     "calories": "2213kcal",
//     "protein": "43g",
//     "fat": "216g",
//     "sodium": "610mg",
//     "status": "false1"
//   },
//   {
//     "food": "Popcorn, buttered, salted, Pop N Good",
//     "calories": "460.54kcal",
//     "protein": "7.44g",
//     "fat": "23.53g",
//     "sodium": "535mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pope",
//     "calories": "228kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Popover Pudding with Irish Bacon",
//     "calories": "532kcal",
//     "protein": "15g",
//     "fat": "41g",
//     "sodium": "801mg",
//     "status": "false1"
//   },
//   {
//     "food": "Popped Amaranth and Toasted Wheat Berry Fool",
//     "calories": "372kcal",
//     "protein": "8g",
//     "fat": "19g",
//     "sodium": "55mg",
//     "status": "false1"
//   },
//   {
//     "food": "Poppy Cheddar Moon Crackers",
//     "calories": "14kcal",
//     "protein": "0g",
//     "fat": "1g",
//     "sodium": "12mg",
//     "status": "false1"
//   },
//   {
//     "food": "Poppy Seed Chocolate Torte",
//     "calories": "231kcal",
//     "protein": "5g",
//     "fat": "14g",
//     "sodium": "40mg",
//     "status": "false1"
//   },
//   {
//     "food": "Poppy Seed Crackers",
//     "calories": "27kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "50mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Poppy Seed Layer Cake with Strawberries and White Chocolate Cream",
//     "calories": "794kcal",
//     "protein": "10g",
//     "fat": "43g",
//     "sodium": "325mg",
//     "status": "false1"
//   },
//   {
//     "food": "Poppy-Seed Onion Cheddar Bread",
//     "calories": "265kcal",
//     "protein": "11g",
//     "fat": "14g",
//     "sodium": "471mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pop's No-Cook Barbecue Sauce",
//     "calories": "233kcal",
//     "protein": "3g",
//     "fat": "15g",
//     "sodium": "1423mg",
//     "status": "false1"
//   },
//   {
//     "food": "Porae, flesh, raw",
//     "calories": "117.39kcal",
//     "protein": "20.81g",
//     "fat": "3.63g",
//     "sodium": "53mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Fried Rice",
//     "calories": "2511kcal",
//     "protein": "107g",
//     "fat": "132g",
//     "sodium": "1821mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Gyros with Yogurt-Tomato Sauce, Red Onion, and Arugula",
//     "calories": "236kcal",
//     "protein": "21g",
//     "fat": "10g",
//     "sodium": "302mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Kebabs al Pastor",
//     "calories": "641kcal",
//     "protein": "32g",
//     "fat": "34g",
//     "sodium": "137mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Kebabs Marinated in Honey, Rosemary, and Orange",
//     "calories": "779kcal",
//     "protein": "33g",
//     "fat": "63g",
//     "sodium": "81mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Loin Braised in Milk",
//     "calories": "490kcal",
//     "protein": "51g",
//     "fat": "28g",
//     "sodium": "1101mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Loin Roast with Fennel-Garlic Rub",
//     "calories": "720kcal",
//     "protein": "67g",
//     "fat": "46g",
//     "sodium": "889mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Loin with Apples, Prunes, and Mustard Cream Sauce",
//     "calories": "505kcal",
//     "protein": "50g",
//     "fat": "24g",
//     "sodium": "675mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork meat, salted, raw, Parma",
//     "calories": "146.36kcal",
//     "protein": "27.5g",
//     "fat": "3.9g",
//     "sodium": "2440mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Medallions with Lemon and Capers",
//     "calories": "336kcal",
//     "protein": "37g",
//     "fat": "18g",
//     "sodium": "277mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Medallions with Mustard Sauce",
//     "calories": "362kcal",
//     "protein": "26g",
//     "fat": "23g",
//     "sodium": "536mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Medallions with Mustard-Chive Sauce",
//     "calories": "334kcal",
//     "protein": "33g",
//     "fat": "18g",
//     "sodium": "191mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Medallions with Spiced Tomato Pan Gravy",
//     "calories": "351kcal",
//     "protein": "37g",
//     "fat": "17g",
//     "sodium": "112mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork on a Bun with Bourbon-Barbecue Sauce",
//     "calories": "752kcal",
//     "protein": "32g",
//     "fat": "31g",
//     "sodium": "1065mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Rib Chops with Sauteed Apple and Star Anise",
//     "calories": "1503kcal",
//     "protein": "54g",
//     "fat": "105g",
//     "sodium": "287mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Roast Braised with Milk and Fresh Herbs (Maiale al Latte )",
//     "calories": "689kcal",
//     "protein": "85g",
//     "fat": "34g",
//     "sodium": "723mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Roast with Black Bean Sauce",
//     "calories": "434kcal",
//     "protein": "40g",
//     "fat": "23g",
//     "sodium": "199mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Roast with Winter Fruits and Port Sauce",
//     "calories": "992kcal",
//     "protein": "73g",
//     "fat": "64g",
//     "sodium": "394mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Satay",
//     "calories": "616kcal",
//     "protein": "22g",
//     "fat": "29g",
//     "sodium": "1468mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Sausage with Braised Purple Cabbage and Apple Chutney",
//     "calories": "909kcal",
//     "protein": "27g",
//     "fat": "64g",
//     "sodium": "1646mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Sausage with Coconut-Chile Sauce and Lychees",
//     "calories": "845kcal",
//     "protein": "22g",
//     "fat": "73g",
//     "sodium": "84mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Scaloppine with Herbed Noodles",
//     "calories": "608kcal",
//     "protein": "56g",
//     "fat": "25g",
//     "sodium": "239mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Shoulder Al'Diavolo",
//     "calories": "939kcal",
//     "protein": "59g",
//     "fat": "75g",
//     "sodium": "223mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Shoulder with Mustard-Mushroom Gravy",
//     "calories": "1102kcal",
//     "protein": "81g",
//     "fat": "72g",
//     "sodium": "505mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Spice Rub",
//     "calories": "62kcal",
//     "protein": "3g",
//     "fat": "3g",
//     "sodium": "3023mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Stew with Apricots and Prunes",
//     "calories": "988kcal",
//     "protein": "55g",
//     "fat": "64g",
//     "sodium": "730mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Stew with Lettuce, Onions, Lemon and Dill",
//     "calories": "1034kcal",
//     "protein": "57g",
//     "fat": "64g",
//     "sodium": "236mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Stew with Olives and Green Beans",
//     "calories": "1245kcal",
//     "protein": "60g",
//     "fat": "97g",
//     "sodium": "495mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Tamale Potpie with Corn Bread Crust",
//     "calories": "586kcal",
//     "protein": "36g",
//     "fat": "21g",
//     "sodium": "655mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Tenderloin Churrasco",
//     "calories": "776kcal",
//     "protein": "48g",
//     "fat": "64g",
//     "sodium": "702mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Tenderloin Cubano",
//     "calories": "243kcal",
//     "protein": "36g",
//     "fat": "6g",
//     "sodium": "672mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Tenderloin Stir-Fry with Tangerines and Chili Sauce",
//     "calories": "267kcal",
//     "protein": "31g",
//     "fat": "12g",
//     "sodium": "745mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Tenderloin with Apricot Mustard",
//     "calories": "272kcal",
//     "protein": "29g",
//     "fat": "6g",
//     "sodium": "600mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Tenderloin With Arugula Endive and Walnut Vinaigrette",
//     "calories": "507kcal",
//     "protein": "32g",
//     "fat": "40g",
//     "sodium": "87mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Tenderloin with Balsamic-Cranberry Sauce",
//     "calories": "331kcal",
//     "protein": "28g",
//     "fat": "14g",
//     "sodium": "103mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Tenderloin with Calvados Sauce and Dried Fruit Compote",
//     "calories": "484kcal",
//     "protein": "20g",
//     "fat": "41g",
//     "sodium": "87mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Pork Tenderloin with Caramelized Pears and Pear-Brandy Cream Sauce",
//     "calories": "556kcal",
//     "protein": "32g",
//     "fat": "26g",
//     "sodium": "91mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Tenderloin with Maple Glaze",
//     "calories": "153kcal",
//     "protein": "14g",
//     "fat": "4g",
//     "sodium": "56mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Tenderloin with Roasted Apples and Onions",
//     "calories": "295kcal",
//     "protein": "22g",
//     "fat": "14g",
//     "sodium": "139mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Tenderloin with Sauteed Onion and Fennel and Fennel Cream",
//     "calories": "448kcal",
//     "protein": "40g",
//     "fat": "22g",
//     "sodium": "155mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Tenderloin with Spiced Rhubarb Chutney",
//     "calories": "444kcal",
//     "protein": "37g",
//     "fat": "10g",
//     "sodium": "102mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Tenderloin with Tart Cherry, Port, and Caraway Sauce",
//     "calories": "372kcal",
//     "protein": "48g",
//     "fat": "12g",
//     "sodium": "123mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Tenderloin With Turmeric, Squash, and Collard Greens Salad",
//     "calories": "557kcal",
//     "protein": "45g",
//     "fat": "24g",
//     "sodium": "1445mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Tostadas with Corn Salsa",
//     "calories": "1038kcal",
//     "protein": "49g",
//     "fat": "68g",
//     "sodium": "191mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Walnut Stuffing with Squash and Sage",
//     "calories": "612kcal",
//     "protein": "32g",
//     "fat": "46g",
//     "sodium": "144mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork with Apples, Calvados and Apple Cider",
//     "calories": "1164kcal",
//     "protein": "31g",
//     "fat": "67g",
//     "sodium": "120mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork with Gorgonzola Sauce",
//     "calories": "430kcal",
//     "protein": "48g",
//     "fat": "24g",
//     "sodium": "450mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork with Guajillo Sauce",
//     "calories": "468kcal",
//     "protein": "30g",
//     "fat": "30g",
//     "sodium": "1487mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork with Prunes",
//     "calories": "889kcal",
//     "protein": "45g",
//     "fat": "42g",
//     "sodium": "486mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork Wrapped in Sage and Prosciutto",
//     "calories": "244kcal",
//     "protein": "37g",
//     "fat": "9g",
//     "sodium": "782mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork, bacon, rasher, lean, grilled",
//     "calories": "295kcal",
//     "protein": "30.5g",
//     "fat": "18.9g",
//     "sodium": "2240mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Pork, bacon, rasher, rindless, pan fried with no added fat, assorted types, composite",
//     "calories": "375.64kcal",
//     "protein": "31.79g",
//     "fat": "27.83g",
//     "sodium": "2366.67mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Pork, bacon, rasher, rindless, pan fried with no fat added, Shoulder, composite",
//     "calories": "313.44kcal",
//     "protein": "28.28g",
//     "fat": "22.42g",
//     "sodium": "2500mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork, bacon, rasher, rindless, raw, assorted types, composite",
//     "calories": "250.68kcal",
//     "protein": "14.63g",
//     "fat": "21.6g",
//     "sodium": "1153.33mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork, bacon, rasher, rindless, raw, Shoulder, composite",
//     "calories": "179.72kcal",
//     "protein": "13.94g",
//     "fat": "13.9g",
//     "sodium": "1270mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Pork, bacon, rasher, tail end of loin or belly, rindless, pan fried with no added fat, streaky, composite",
//     "calories": "438.55kcal",
//     "protein": "34.8g",
//     "fat": "33.56g",
//     "sodium": "2300mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Pork, bacon, rasher, tail end of loin or belly, rindless, raw, streaky, composite",
//     "calories": "318.44kcal",
//     "protein": "13.88g",
//     "fat": "29.6g",
//     "sodium": "1050mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Pork, bacon, rasher, whole loin including  belly, rindless & fat trimmed, grilled, Middle, composite",
//     "calories": "270.46kcal",
//     "protein": "34.83g",
//     "fat": "14.55g",
//     "sodium": "2400mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Pork, bacon, rasher, whole loin including belly, rindless & fat trimmed, pan fried with no added fat, Middle, composite",
//     "calories": "277.31kcal",
//     "protein": "34.89g",
//     "fat": "15.3g",
//     "sodium": "2700mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Pork, bacon, rasher, whole loin including belly, rindless & fat trimmed, raw, Middle, composite",
//     "calories": "148.3kcal",
//     "protein": "17.31g",
//     "fat": "8.8g",
//     "sodium": "1380mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Pork, bacon, rasher, whole loin including belly, rindless, grilled, Middle, composite",
//     "calories": "320.06kcal",
//     "protein": "29.4g",
//     "fat": "22.65g",
//     "sodium": "2100mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Pork, bacon, rasher, whole loin including belly, rindless, pan fried with no added fat, Middle, composite",
//     "calories": "374.94kcal",
//     "protein": "32.28g",
//     "fat": "27.53g",
//     "sodium": "2300mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Pork, bacon, rasher, whole loin including belly, rindless, raw, Middle, composite",
//     "calories": "253.87kcal",
//     "protein": "16.06g",
//     "fat": "21.3g",
//     "sodium": "1140mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork, forequarter scotch fillet, separable lean, grilled",
//     "calories": "207.93kcal",
//     "protein": "30.19g",
//     "fat": "9.62g",
//     "sodium": "98mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork, ham steak, raw",
//     "calories": "124.25kcal",
//     "protein": "14.38g",
//     "fat": "6.1g",
//     "sodium": "1090mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork, ham steak, separable lean & fat, grilled",
//     "calories": "162.89kcal",
//     "protein": "19.38g",
//     "fat": "7.8g",
//     "sodium": "1400mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork, ham, canned",
//     "calories": "121.88kcal",
//     "protein": "18.44g",
//     "fat": "5.1g",
//     "sodium": "1250mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork, ham, off the bone, separable fat, raw",
//     "calories": "434.12kcal",
//     "protein": "6.56g",
//     "fat": "45.1g",
//     "sodium": "660mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork, ham, off the bone, separable lean, raw",
//     "calories": "70.94kcal",
//     "protein": "15.38g",
//     "fat": "0.95g",
//     "sodium": "1300mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork, heart, separable lean, raw",
//     "calories": "93.55kcal",
//     "protein": "17.13g",
//     "fat": "2.7g",
//     "sodium": "80mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork, kidney, core removed, raw",
//     "calories": "96.16kcal",
//     "protein": "17.38g",
//     "fat": "2.88g",
//     "sodium": "203mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork, kidney, core removed, stewed, salt added",
//     "calories": "153.38kcal",
//     "protein": "24.44g",
//     "fat": "6.1g",
//     "sodium": "370mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork, leg roast, lean, raw",
//     "calories": "105.89kcal",
//     "protein": "20.81g",
//     "fat": "2.4g",
//     "sodium": "81mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork, leg roast, lean, roasted",
//     "calories": "174.71kcal",
//     "protein": "31.75g",
//     "fat": "5.15g",
//     "sodium": "85mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork, leg steak, separable lean, grilled",
//     "calories": "121.38kcal",
//     "protein": "23.52g",
//     "fat": "2.9g",
//     "sodium": "85.45mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork, leg steak, separable lean, raw",
//     "calories": "107.39kcal",
//     "protein": "20.81g",
//     "fat": "2.57g",
//     "sodium": "84mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork, leg steak, separable lean, stewed",
//     "calories": "176.93kcal",
//     "protein": "35.13g",
//     "fat": "3.85g",
//     "sodium": "55mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork, liver in flour, stewed",
//     "calories": "189.3kcal",
//     "protein": "25.56g",
//     "fat": "8.1g",
//     "sodium": "130mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork, liver, raw",
//     "calories": "154.6kcal",
//     "protein": "21.31g",
//     "fat": "6.8g",
//     "sodium": "87mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pork, loin chops, lean, grilled",
//     "calories": "177.26kcal",
//     "protein": "29.44g",
//     "fat": "6.5g",
//     "sodium": "94mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pot Luck Soup",
//     "calories": "222kcal",
//     "protein": "7g",
//     "fat": "11g",
//     "sodium": "657mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pot Roast in Rich Gravy",
//     "calories": "516kcal",
//     "protein": "62g",
//     "fat": "16g",
//     "sodium": "409mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pot Roast with Caramelized Onions and Roasted Carrots",
//     "calories": "1462kcal",
//     "protein": "77g",
//     "fat": "108g",
//     "sodium": "899mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pot Roast with Orange and Dates",
//     "calories": "906kcal",
//     "protein": "57g",
//     "fat": "53g",
//     "sodium": "284mg",
//     "status": "false1"
//   },
//   {
//     "food": "Potato Chowder",
//     "calories": "217kcal",
//     "protein": "8g",
//     "fat": "10g",
//     "sodium": "1040mg",
//     "status": "false1"
//   },
//   {
//     "food": "Potato Salad with Buttermilk Dressing",
//     "calories": "282kcal",
//     "protein": "4g",
//     "fat": "17g",
//     "sodium": "303mg",
//     "status": "false1"
//   },
//   {
//     "food": "Potato Salad with Creamy Caviar Dressing",
//     "calories": "276kcal",
//     "protein": "12g",
//     "fat": "14g",
//     "sodium": "457mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Potato, fries, straight cut, frozen, precooked in beef fat, baked",
//     "calories": "190.23kcal",
//     "protein": "3.56g",
//     "fat": "5.38g",
//     "sodium": "67mg",
//     "status": "false1"
//   },
//   {
//     "food": "Potato-Apple Pancakes with Smoked Salmon and Horseradish",
//     "calories": "216kcal",
//     "protein": "4g",
//     "fat": "18g",
//     "sodium": "235mg",
//     "status": "false1"
//   },
//   {
//     "food": "Potato-Chive Soup",
//     "calories": "253kcal",
//     "protein": "8g",
//     "fat": "9g",
//     "sodium": "2139mg",
//     "status": "false1"
//   },
//   {
//     "food": "Potato-Crusted Goat Cheese Tart with Heirloom Tomato Salad",
//     "calories": "353kcal",
//     "protein": "11g",
//     "fat": "19g",
//     "sodium": "167mg",
//     "status": "false1"
//   },
//   {
//     "food": "Potato-Crusted Halibut Steaks",
//     "calories": "447kcal",
//     "protein": "39g",
//     "fat": "24g",
//     "sodium": "358mg",
//     "status": "false1"
//   },
//   {
//     "food": "Potato-Crusted Quiche with Smoked Cheddar and Canadian Bacon",
//     "calories": "487kcal",
//     "protein": "34g",
//     "fat": "25g",
//     "sodium": "899mg",
//     "status": "false1"
//   },
//   {
//     "food": "Potatoes and Sausage with Parsley",
//     "calories": "507kcal",
//     "protein": "20g",
//     "fat": "27g",
//     "sodium": "957mg",
//     "status": "false1"
//   },
//   {
//     "food": "Potatoes and Snap Peas with Egg Mint Mimosa",
//     "calories": "339kcal",
//     "protein": "10g",
//     "fat": "17g",
//     "sodium": "1502mg",
//     "status": "false1"
//   },
//   {
//     "food": "Potatoes Roasted in Goose Fat",
//     "calories": "975kcal",
//     "protein": "20g",
//     "fat": "29g",
//     "sodium": "47mg",
//     "status": "false1"
//   },
//   {
//     "food": "Potatoes Topped with Smoked Salmon and Fennel",
//     "calories": "18kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "18mg",
//     "status": "false1"
//   },
//   {
//     "food": "Potatoes with Parsley and Green Onions",
//     "calories": "346kcal",
//     "protein": "6g",
//     "fat": "19g",
//     "sodium": "59mg",
//     "status": "false1"
//   },
//   {
//     "food": "Potato-Green Chile Gratin",
//     "calories": "391kcal",
//     "protein": "13g",
//     "fat": "11g",
//     "sodium": "73mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pretzel-Crusted Pork Chops with Orange-Mustard Sauce",
//     "calories": "679kcal",
//     "protein": "23g",
//     "fat": "46g",
//     "sodium": "443mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pride of Erin Soup",
//     "calories": "175kcal",
//     "protein": "9g",
//     "fat": "9g",
//     "sodium": "155mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pudding, sponge, fruit, steamed",
//     "calories": "353.12kcal",
//     "protein": "5.56g",
//     "fat": "15.11g",
//     "sodium": "244.68mg",
//     "status": "false1"
//   },
//   {
//     "food": "Pumpkin Seed Pesto",
//     "calories": "442kcal",
//     "protein": "16g",
//     "fat": "42g",
//     "sodium": "12mg",
//     "status": "false1"
//   },
//   {
//     "food": "Raspberry and Brown Sugar Custard Tart",
//     "calories": "504kcal",
//     "protein": "5g",
//     "fat": "37g",
//     "sodium": "183mg",
//     "status": "false1"
//   },
//   {
//     "food": "Raspberry Syllabub",
//     "calories": "548kcal",
//     "protein": "5g",
//     "fat": "48g",
//     "sodium": "77mg",
//     "status": "false1"
//   },
//   {
//     "food": "Raspberry Tart May",
//     "calories": "272kcal",
//     "protein": "4g",
//     "fat": "15g",
//     "sodium": "79mg",
//     "status": "false1"
//   },
//   {
//     "food": "Raspberry Whipped Cream Truffle Cake",
//     "calories": "635kcal",
//     "protein": "8g",
//     "fat": "34g",
//     "sodium": "286mg",
//     "status": "false1"
//   },
//   {
//     "food": "Red Flannel Hash with Dilled Sour Cream",
//     "calories": "439kcal",
//     "protein": "15g",
//     "fat": "30g",
//     "sodium": "912mg",
//     "status": "false1"
//   },
//   {
//     "food": "Red Grape Granita",
//     "calories": "231kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "4mg",
//     "status": "false1"
//   },
//   {
//     "food": "Red Leaf Caesar Salad with Grilled Parmesan Croutons",
//     "calories": "169kcal",
//     "protein": "1g",
//     "fat": "18g",
//     "sodium": "180mg",
//     "status": "false1"
//   },
//   {
//     "food": "Red Leaf, Radish, and Pine Nut Salad",
//     "calories": "191kcal",
//     "protein": "3g",
//     "fat": "19g",
//     "sodium": "36mg",
//     "status": "false1"
//   },
//   {
//     "food": "Red Lentil and Tofu Curry",
//     "calories": "481kcal",
//     "protein": "31g",
//     "fat": "25g",
//     "sodium": "622mg",
//     "status": "false1"
//   },
//   {
//     "food": "Red Lion",
//     "calories": "216kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Red Mole",
//     "calories": "280kcal",
//     "protein": "7g",
//     "fat": "21g",
//     "sodium": "72mg",
//     "status": "false1"
//   },
//   {
//     "food": "Red Mullet Fillets with Haricots Verts and Dried Apricots",
//     "calories": "346kcal",
//     "protein": "24g",
//     "fat": "24g",
//     "sodium": "78mg",
//     "status": "false1"
//   },
//   {
//     "food": "Red Onion Marmalade",
//     "calories": "235kcal",
//     "protein": "2g",
//     "fat": "7g",
//     "sodium": "15mg",
//     "status": "false1"
//   },
//   {
//     "food": "Red Onion Marmalade with Chestnuts",
//     "calories": "216kcal",
//     "protein": "2g",
//     "fat": "10g",
//     "sodium": "395mg",
//     "status": "false1"
//   },
//   {
//     "food": "Red Onion Sauerkraut",
//     "calories": "156kcal",
//     "protein": "2g",
//     "fat": "8g",
//     "sodium": "519mg",
//     "status": "false1"
//   },
//   {
//     "food": "Red Wine and Pear Brioche Tart",
//     "calories": "486kcal",
//     "protein": "7g",
//     "fat": "14g",
//     "sodium": "322mg",
//     "status": "false1"
//   },
//   {
//     "food": "Red Wine Barbecue Sauce",
//     "calories": "151kcal",
//     "protein": "1g",
//     "fat": "7g",
//     "sodium": "986mg",
//     "status": "false1"
//   },
//   {
//     "food": "Red Wine Beef Stew",
//     "calories": "894kcal",
//     "protein": "62g",
//     "fat": "17g",
//     "sodium": "1415mg",
//     "status": "false1"
//   },
//   {
//     "food": "Red Wine Brasato with Glazed Root Vegetables",
//     "calories": "940kcal",
//     "protein": "100g",
//     "fat": "38g",
//     "sodium": "800mg",
//     "status": "false1"
//   },
//   {
//     "food": "Ribollita with Italian Sausage",
//     "calories": "471kcal",
//     "protein": "36g",
//     "fat": "19g",
//     "sodium": "1324mg",
//     "status": "false1"
//   },
//   {
//     "food": "Rice and Lentil Salad with Orange and Dried Cherries",
//     "calories": "296kcal",
//     "protein": "7g",
//     "fat": "10g",
//     "sodium": "203mg",
//     "status": "false1"
//   },
//   {
//     "food": "Roast Chicken with Crisp Toasts and Ricotta",
//     "calories": "1382kcal",
//     "protein": "90g",
//     "fat": "101g",
//     "sodium": "1461mg",
//     "status": "false1"
//   },
//   {
//     "food": "Roast Chicken with Cumin, Paprika and Allspice",
//     "calories": "1586kcal",
//     "protein": "122g",
//     "fat": "117g",
//     "sodium": "783mg",
//     "status": "false1"
//   },
//   {
//     "food": "Roast Chicken with Dried Fruit and Almonds",
//     "calories": "1649kcal",
//     "protein": "98g",
//     "fat": "91g",
//     "sodium": "400mg",
//     "status": "false1"
//   },
//   {
//     "food": "Roast Chicken With Harissa And Schmaltz",
//     "calories": "1248kcal",
//     "protein": "91g",
//     "fat": "87g",
//     "sodium": "22932mg",
//     "status": "false1"
//   },
//   {
//     "food": "Roast Chicken with Herb Butter, Onions and Garlic",
//     "calories": "4544kcal",
//     "protein": "347g",
//     "fat": "332g",
//     "sodium": "1655mg",
//     "status": "false1"
//   },
//   {
//     "food": "Roast Chicken with Herb-and-Garlic Pan Drippings",
//     "calories": "982kcal",
//     "protein": "76g",
//     "fat": "66g",
//     "sodium": "4584mg",
//     "status": "false1"
//   },
//   {
//     "food": "Roast Chicken with Hot-Sauce Butter",
//     "calories": "927kcal",
//     "protein": "64g",
//     "fat": "63g",
//     "sodium": "3109mg",
//     "status": "false1"
//   },
//   {
//     "food": "Roast Chicken With Lemon and Butter",
//     "calories": "786kcal",
//     "protein": "56g",
//     "fat": "55g",
//     "sodium": "334mg",
//     "status": "false1"
//   },
//   {
//     "food": "Roast Chicken with Lemon and Fresh Herbs",
//     "calories": "1063kcal",
//     "protein": "86g",
//     "fat": "75g",
//     "sodium": "329mg",
//     "status": "false1"
//   },
//   {
//     "food": "Roast Chicken with Lemon and Tarragon Butter",
//     "calories": "1078kcal",
//     "protein": "85g",
//     "fat": "80g",
//     "sodium": "610mg",
//     "status": "false1"
//   },
//   {
//     "food": "Roast Chicken with Lemon and Thyme",
//     "calories": "1784kcal",
//     "protein": "138g",
//     "fat": "130g",
//     "sodium": "567mg",
//     "status": "false1"
//   },
//   {
//     "food": "Roast Chicken with Maple-Soy Glaze",
//     "calories": "4718kcal",
//     "protein": "1g",
//     "fat": "515g",
//     "sodium": "240mg",
//     "status": "false1"
//   },
//   {
//     "food": "Roast Chicken with Mashed-Potato Stuffing and Root Vegetables",
//     "calories": "1062kcal",
//     "protein": "83g",
//     "fat": "33g",
//     "sodium": "526mg",
//     "status": "false1"
//   },
//   {
//     "food": "Roast Chicken with Mushroom Stuffing and Sauce",
//     "calories": "1100kcal",
//     "protein": "159g",
//     "fat": "32g",
//     "sodium": "1292mg",
//     "status": "false1"
//   },
//   {
//     "food": "Roast Goose with Garlic, Onion and Sage Stuffing",
//     "calories": "8603kcal",
//     "protein": "13g",
//     "fat": "923g",
//     "sodium": "1401mg",
//     "status": "false1"
//   },
//   {
//     "food": "Roast Pork Calypso Style",
//     "calories": "977kcal",
//     "protein": "80g",
//     "fat": "41g",
//     "sodium": "1447mg",
//     "status": "false1"
//   },
//   {
//     "food": "Roast Turkey with Port Gravy",
//     "calories": "2636kcal",
//     "protein": "402g",
//     "fat": "95g",
//     "sodium": "2980mg",
//     "status": "false1"
//   },
//   {
//     "food": "Roasted Beet, Shallot and Pecan Salad",
//     "calories": "359kcal",
//     "protein": "8g",
//     "fat": "27g",
//     "sodium": "222mg",
//     "status": "false1"
//   },
//   {
//     "food": "Roasted Chicken with Garlic Confit",
//     "calories": "1161kcal",
//     "protein": "64g",
//     "fat": "98g",
//     "sodium": "1404mg",
//     "status": "false1"
//   },
//   {
//     "food": "Roasted Stuffed Onions",
//     "calories": "1492kcal",
//     "protein": "42g",
//     "fat": "57g",
//     "sodium": "1396mg",
//     "status": "false1"
//   },
//   {
//     "food": "Roasted Sweet Onions with Cabrales Blue Cheese",
//     "calories": "275kcal",
//     "protein": "6g",
//     "fat": "21g",
//     "sodium": "180mg",
//     "status": "false1"
//   },
//   {
//     "food": "Roasted Sweet Potatoes & Fresh Figs",
//     "calories": "1335kcal",
//     "protein": "20g",
//     "fat": "19g",
//     "sodium": "575mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon Fillet with Soy Glaze",
//     "calories": "354kcal",
//     "protein": "32g",
//     "fat": "20g",
//     "sodium": "674mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon Fillets in Dill-Peperoncini Cream Sauce",
//     "calories": "478kcal",
//     "protein": "37g",
//     "fat": "33g",
//     "sodium": "174mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon Fillets with a Wasabi Coating",
//     "calories": "842kcal",
//     "protein": "46g",
//     "fat": "43g",
//     "sodium": "1399mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon Fillets with Lemon-Thyme Sauce",
//     "calories": "581kcal",
//     "protein": "36g",
//     "fat": "45g",
//     "sodium": "111mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon Glazed with Honey and Mustard",
//     "calories": "596kcal",
//     "protein": "38g",
//     "fat": "43g",
//     "sodium": "419mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon Hash with Horseradish-Dill Cream",
//     "calories": "734kcal",
//     "protein": "40g",
//     "fat": "49g",
//     "sodium": "280mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon Horseradish Mousse with Caviar",
//     "calories": "113kcal",
//     "protein": "7g",
//     "fat": "9g",
//     "sodium": "314mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon in Saffron Mussel Sauce",
//     "calories": "692kcal",
//     "protein": "61g",
//     "fat": "43g",
//     "sodium": "523mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon Paillards with Lettuce and Pea Salad",
//     "calories": "405kcal",
//     "protein": "26g",
//     "fat": "30g",
//     "sodium": "280mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon Papillotes with Fennel, Potatoes, and Olives",
//     "calories": "579kcal",
//     "protein": "45g",
//     "fat": "36g",
//     "sodium": "303mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon Platter with Caper Dressing",
//     "calories": "617kcal",
//     "protein": "23g",
//     "fat": "40g",
//     "sodium": "1741mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon Spring Rolls with Coriander Dipping Sauce",
//     "calories": "219kcal",
//     "protein": "9g",
//     "fat": "17g",
//     "sodium": "160mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon Steaks with Littleneck Clams and Saffron-Mint Broth",
//     "calories": "66kcal",
//     "protein": "5g",
//     "fat": "5g",
//     "sodium": "75mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon Steaks with Red-Wine Butter",
//     "calories": "851kcal",
//     "protein": "46g",
//     "fat": "66g",
//     "sodium": "681mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon Teriyaki with Carrots and Onions",
//     "calories": "398kcal",
//     "protein": "25g",
//     "fat": "21g",
//     "sodium": "2493mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon Tournedos with Herb Sauce",
//     "calories": "795kcal",
//     "protein": "42g",
//     "fat": "59g",
//     "sodium": "259mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon Trout Poached in White Wine",
//     "calories": "138kcal",
//     "protein": "7g",
//     "fat": "4g",
//     "sodium": "1254mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon with Arugula, Tomato and Caper Sauce",
//     "calories": "686kcal",
//     "protein": "36g",
//     "fat": "57g",
//     "sodium": "160mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon with Bacon and Lentils",
//     "calories": "870kcal",
//     "protein": "65g",
//     "fat": "51g",
//     "sodium": "448mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon with Beurre Rouge and Smoked-Salmon-Stuffed Baked Potato",
//     "calories": "902kcal",
//     "protein": "52g",
//     "fat": "65g",
//     "sodium": "353mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon with Breadcrumb, Olive and Sun-Dried Tomato Crust",
//     "calories": "525kcal",
//     "protein": "36g",
//     "fat": "31g",
//     "sodium": "557mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon with Caper-Anchovy Butter",
//     "calories": "503kcal",
//     "protein": "36g",
//     "fat": "38g",
//     "sodium": "244mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon with Chili-Mango Salsa",
//     "calories": "571kcal",
//     "protein": "36g",
//     "fat": "37g",
//     "sodium": "106mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salmon with Endive, Dill, and Cream",
//     "calories": "555kcal",
//     "protein": "39g",
//     "fat": "39g",
//     "sodium": "562mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salted Brown Butter Cookies",
//     "calories": "136kcal",
//     "protein": "1g",
//     "fat": "4g",
//     "sodium": "55mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salted Caramel Ice Cream",
//     "calories": "265kcal",
//     "protein": "3g",
//     "fat": "18g",
//     "sodium": "123mg",
//     "status": "false1"
//   },
//   {
//     "food": "Salt-Grilled Shrimp",
//     "calories": "175kcal",
//     "protein": "16g",
//     "fat": "8g",
//     "sodium": "23273mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage and Wild Mushroom Lasagne with Red Pepper Tomato Sauce",
//     "calories": "837kcal",
//     "protein": "54g",
//     "fat": "50g",
//     "sodium": "1490mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage Cheese Grits",
//     "calories": "481kcal",
//     "protein": "23g",
//     "fat": "31g",
//     "sodium": "630mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage Links with Apricot-Mustard Glaze",
//     "calories": "267kcal",
//     "protein": "10g",
//     "fat": "20g",
//     "sodium": "566mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage Patties with Cranberry-Kumquat Relish",
//     "calories": "605kcal",
//     "protein": "27g",
//     "fat": "43g",
//     "sodium": "1306mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage roll, individual size, microwaved",
//     "calories": "284.77kcal",
//     "protein": "8.22g",
//     "fat": "15g",
//     "sodium": "550mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage roll, party size, baked",
//     "calories": "277.73kcal",
//     "protein": "8.7g",
//     "fat": "15.5g",
//     "sodium": "540mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage roll, with cheese, baked, composite",
//     "calories": "307.1kcal",
//     "protein": "9.87g",
//     "fat": "18.45g",
//     "sodium": "550mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage Rolls",
//     "calories": "198kcal",
//     "protein": "6g",
//     "fat": "15g",
//     "sodium": "268mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage Shepherd's Pie with Sweet Potatoes and Squash",
//     "calories": "692kcal",
//     "protein": "37g",
//     "fat": "25g",
//     "sodium": "1126mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage Stew",
//     "calories": "734kcal",
//     "protein": "42g",
//     "fat": "45g",
//     "sodium": "1906mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage Stuffed Potatoes with Green Salad",
//     "calories": "858kcal",
//     "protein": "27g",
//     "fat": "53g",
//     "sodium": "1218mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage Stuffing",
//     "calories": "634kcal",
//     "protein": "21g",
//     "fat": "24g",
//     "sodium": "1158mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage with Sauerkraut, Apples, and Bok Choy",
//     "calories": "837kcal",
//     "protein": "38g",
//     "fat": "70g",
//     "sodium": "2762mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, Apple and Rye-Bread Stuffing",
//     "calories": "487kcal",
//     "protein": "14g",
//     "fat": "30g",
//     "sodium": "821mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, assorted meat & flavours, precooked, composite",
//     "calories": "199.73kcal",
//     "protein": "10.94g",
//     "fat": "13.9g",
//     "sodium": "925mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, assorted meats & flavours, dry fried, composite",
//     "calories": "220.48kcal",
//     "protein": "12.65g",
//     "fat": "15.63g",
//     "sodium": "880mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, assorted meats & flavours, fresh, raw, composite",
//     "calories": "241.84kcal",
//     "protein": "12.13g",
//     "fat": "17.76g",
//     "sodium": "800mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, assorted meats & flavours, grilled, composite",
//     "calories": "284.4kcal",
//     "protein": "14.26g",
//     "fat": "20.89g",
//     "sodium": "705.59mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Sausage, assorted meats & flavours, precooked, dry fried, composite",
//     "calories": "224.57kcal",
//     "protein": "11.91g",
//     "fat": "15.88g",
//     "sodium": "1000mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Sausage, assorted meats & flavours, precooked, grilled, composite",
//     "calories": "234.62kcal",
//     "protein": "12.85g",
//     "fat": "16.33g",
//     "sodium": "814.95mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, beef, barbecued, with no added fat, composite",
//     "calories": "259.52kcal",
//     "protein": "15.07g",
//     "fat": "20.68g",
//     "sodium": "552.39mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, beef, boiled, drained, composite",
//     "calories": "243.5kcal",
//     "protein": "13.53g",
//     "fat": "19.75g",
//     "sodium": "496.1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, beef, fresh, raw, composite",
//     "calories": "246kcal",
//     "protein": "12.89g",
//     "fat": "20.4g",
//     "sodium": "630mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, beef, grilled, with no added fat, composite",
//     "calories": "271.97kcal",
//     "protein": "14.82g",
//     "fat": "22.22g",
//     "sodium": "543.53mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, beef, pan fried, with no added fat, composite",
//     "calories": "250.62kcal",
//     "protein": "15.81g",
//     "fat": "19.25g",
//     "sodium": "579.67mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, black pudding, fried",
//     "calories": "305.57kcal",
//     "protein": "12.88g",
//     "fat": "21.9g",
//     "sodium": "1210mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, breakfast, McDonald's",
//     "calories": "251.04kcal",
//     "protein": "14.75g",
//     "fat": "19.38g",
//     "sodium": "797mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, Broccoli Rabe, and Tomato Lasagne",
//     "calories": "673kcal",
//     "protein": "29g",
//     "fat": "44g",
//     "sodium": "883mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, Cheese and Basil Lasagna",
//     "calories": "1062kcal",
//     "protein": "60g",
//     "fat": "69g",
//     "sodium": "2980mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, Chestnut and Fig Stuffing",
//     "calories": "628kcal",
//     "protein": "19g",
//     "fat": "18g",
//     "sodium": "1032mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, chicken, barbecued, with no added fat, composite",
//     "calories": "213.82kcal",
//     "protein": "14.05g",
//     "fat": "15.03g",
//     "sodium": "731.38mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, chicken, boiled, drained, composite",
//     "calories": "192.16kcal",
//     "protein": "12.62g",
//     "fat": "13.51g",
//     "sodium": "656.89mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, chicken, fresh, raw, composite",
//     "calories": "186.15kcal",
//     "protein": "12.83g",
//     "fat": "12.7g",
//     "sodium": "890mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, chicken, grilled, with no added fat, composite",
//     "calories": "224.54kcal",
//     "protein": "14.93g",
//     "fat": "15.67g",
//     "sodium": "776.99mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, chicken, pan fried, with no added fat, composite",
//     "calories": "214.26kcal",
//     "protein": "13.76g",
//     "fat": "15.27g",
//     "sodium": "716.37mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, Cranberry, and Corn Bread Stuffing",
//     "calories": "257kcal",
//     "protein": "6g",
//     "fat": "20g",
//     "sodium": "183mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, Cranberry, and Pecan Stuffing",
//     "calories": "314kcal",
//     "protein": "10g",
//     "fat": "22g",
//     "sodium": "406mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, frankfurters, precooked",
//     "calories": "275.5kcal",
//     "protein": "9.5g",
//     "fat": "25g",
//     "sodium": "980mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, Greens, and Beans Pasta",
//     "calories": "999kcal",
//     "protein": "36g",
//     "fat": "52g",
//     "sodium": "987mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, lamb, barbecued, with no added fat, composite",
//     "calories": "209.98kcal",
//     "protein": "17.24g",
//     "fat": "14.22g",
//     "sodium": "641.15mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, lamb, boiled, drained, composite",
//     "calories": "206.95kcal",
//     "protein": "14.9g",
//     "fat": "15.16g",
//     "sodium": "554.31mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, lamb, fresh, raw, composite",
//     "calories": "210.7kcal",
//     "protein": "14.52g",
//     "fat": "15.8g",
//     "sodium": "720mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, lamb, grilled, with no added fat, composite",
//     "calories": "239.37kcal",
//     "protein": "16.99g",
//     "fat": "17.68g",
//     "sodium": "631.95mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, lamb, pan fried, with no added fat, composite",
//     "calories": "224.81kcal",
//     "protein": "16.23g",
//     "fat": "16.45g",
//     "sodium": "603.83mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, Leek and Currant Stuffing",
//     "calories": "385kcal",
//     "protein": "18g",
//     "fat": "12g",
//     "sodium": "571mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, liver, Liverwurst, commercial",
//     "calories": "332.66kcal",
//     "protein": "18g",
//     "fat": "28.8g",
//     "sodium": "770mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, liver, raw",
//     "calories": "309.64kcal",
//     "protein": "12.88g",
//     "fat": "26.9g",
//     "sodium": "860mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Sausage, luncheon, assorted meats & flavours, ready to eat, composite",
//     "calories": "184.53kcal",
//     "protein": "12.32g",
//     "fat": "11.4g",
//     "sodium": "1030mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, luncheon, chicken",
//     "calories": "162.55kcal",
//     "protein": "14.38g",
//     "fat": "9.3g",
//     "sodium": "745mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, mutton, dry fried",
//     "calories": "266.3kcal",
//     "protein": "16.94g",
//     "fat": "17.86g",
//     "sodium": "1180mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, mutton, grilled",
//     "calories": "217.47kcal",
//     "protein": "17.25g",
//     "fat": "10.81g",
//     "sodium": "1190mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, mutton, raw",
//     "calories": "197.54kcal",
//     "protein": "15.19g",
//     "fat": "10.81g",
//     "sodium": "1180mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, Pear and Parsnip Stuffing",
//     "calories": "410kcal",
//     "protein": "14g",
//     "fat": "20g",
//     "sodium": "468mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, polony, raw",
//     "calories": "281.21kcal",
//     "protein": "9.38g",
//     "fat": "21.1g",
//     "sodium": "870mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sausage, pork, barbecued, with no added fat, composite",
//     "calories": "222.97kcal",
//     "protein": "16.34g",
//     "fat": "16.24g",
//     "sodium": "637.94mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sauteed Apple Salad with Roquefort Cheese and Walnuts",
//     "calories": "284kcal",
//     "protein": "2g",
//     "fat": "22g",
//     "sodium": "20mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sauteed Apples",
//     "calories": "351kcal",
//     "protein": "2g",
//     "fat": "5g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Savory Bread Pudding with Mushrooms and Parmesan Cheese",
//     "calories": "471kcal",
//     "protein": "14g",
//     "fat": "34g",
//     "sodium": "840mg",
//     "status": "false1"
//   },
//   {
//     "food": "Savory Crepes with Mushroom and Bacon Filling",
//     "calories": "351kcal",
//     "protein": "10g",
//     "fat": "27g",
//     "sodium": "440mg",
//     "status": "false1"
//   },
//   {
//     "food": "Savory Lentil and Squash Soup",
//     "calories": "250kcal",
//     "protein": "13g",
//     "fat": "1g",
//     "sodium": "340mg",
//     "status": "false1"
//   },
//   {
//     "food": "Savory Lobster Bread Puddings with Vanilla Chive Sauce",
//     "calories": "851kcal",
//     "protein": "43g",
//     "fat": "49g",
//     "sodium": "1100mg",
//     "status": "false1"
//   },
//   {
//     "food": "Savory Parmesan Pain Perdu with Poached Eggs and Greens",
//     "calories": "490kcal",
//     "protein": "27g",
//     "fat": "32g",
//     "sodium": "738mg",
//     "status": "false1"
//   },
//   {
//     "food": "Savory Red Pepper and Onion Matzo Brei",
//     "calories": "218kcal",
//     "protein": "7g",
//     "fat": "11g",
//     "sodium": "202mg",
//     "status": "false1"
//   },
//   {
//     "food": "Savory Semolina",
//     "calories": "226kcal",
//     "protein": "9g",
//     "fat": "4g",
//     "sodium": "648mg",
//     "status": "false1"
//   },
//   {
//     "food": "Savory Spring Vegetable and Goat Cheese Tart",
//     "calories": "335kcal",
//     "protein": "11g",
//     "fat": "24g",
//     "sodium": "282mg",
//     "status": "false1"
//   },
//   {
//     "food": "Savory Streusel",
//     "calories": "105kcal",
//     "protein": "5g",
//     "fat": "7g",
//     "sodium": "130mg",
//     "status": "false1"
//   },
//   {
//     "food": "Savory Summer Tarts",
//     "calories": "369kcal",
//     "protein": "8g",
//     "fat": "27g",
//     "sodium": "212mg",
//     "status": "false1"
//   },
//   {
//     "food": "Savory Yogurt Cooler",
//     "calories": "268kcal",
//     "protein": "6g",
//     "fat": "25g",
//     "sodium": "60mg",
//     "status": "false1"
//   },
//   {
//     "food": "Savory, ground",
//     "calories": "262.29kcal",
//     "protein": "6.73g",
//     "fat": "5.91g",
//     "sodium": "24.1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Savoury, bacon & egg, baked, composite",
//     "calories": "287.49kcal",
//     "protein": "12.3g",
//     "fat": "18.3g",
//     "sodium": "620mg",
//     "status": "false1"
//   },
//   {
//     "food": "Savoury, mince & cheese, heated, composite",
//     "calories": "276.85kcal",
//     "protein": "8.78g",
//     "fat": "16.25g",
//     "sodium": "400mg",
//     "status": "false1"
//   },
//   {
//     "food": "Savoury, mince, heated, composite",
//     "calories": "264.43kcal",
//     "protein": "7.59g",
//     "fat": "15.55g",
//     "sodium": "430mg",
//     "status": "false1"
//   },
//   {
//     "food": "Savoury, potato top, heated, composite",
//     "calories": "212.78kcal",
//     "protein": "5.87g",
//     "fat": "11.25g",
//     "sodium": "390mg",
//     "status": "false1"
//   },
//   {
//     "food": "Savoy Cabbage and Arugula Salad",
//     "calories": "126kcal",
//     "protein": "3g",
//     "fat": "9g",
//     "sodium": "46mg",
//     "status": "false1"
//   },
//   {
//     "food": "Savoy Cabbage and Radicchio Slaw with Blood Orange Dressing",
//     "calories": "150kcal",
//     "protein": "2g",
//     "fat": "10g",
//     "sodium": "65mg",
//     "status": "false1"
//   },
//   {
//     "food": "Savoy Cabbage Wedges With Buttermilk Dressing",
//     "calories": "256kcal",
//     "protein": "8g",
//     "fat": "23g",
//     "sodium": "378mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sazerac",
//     "calories": "163kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "0mg",
//     "status": "false1"
//   },
//   {
//     "food": "Scaffa",
//     "calories": "288kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "7mg",
//     "status": "false1"
//   },
//   {
//     "food": "Scallion Cilantro Pancakes",
//     "calories": "27kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "149mg",
//     "status": "false1"
//   },
//   {
//     "food": "Scallion Mashed Potatoes",
//     "calories": "295kcal",
//     "protein": "7g",
//     "fat": "10g",
//     "sodium": "335mg",
//     "status": "false1"
//   },
//   {
//     "food": "Scallion Potato Pancake and Smoked-Salmon Sandwiches",
//     "calories": "558kcal",
//     "protein": "21g",
//     "fat": "34g",
//     "sodium": "708mg",
//     "status": "false1"
//   },
//   {
//     "food": "Scallion Rice",
//     "calories": "285kcal",
//     "protein": "5g",
//     "fat": "6g",
//     "sodium": "512mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Scallion Wild Rice Crepes with Mushroom Filling and Red Pepper Sauce",
//     "calories": "645kcal",
//     "protein": "19g",
//     "fat": "35g",
//     "sodium": "1275mg",
//     "status": "false1"
//   },
//   {
//     "food": "Scallop \"Porcupines\" with Basil-Mint Sauce",
//     "calories": "180kcal",
//     "protein": "13g",
//     "fat": "4g",
//     "sodium": "404mg",
//     "status": "false1"
//   },
//   {
//     "food": "Scallop and Bacon Chowder",
//     "calories": "518kcal",
//     "protein": "20g",
//     "fat": "37g",
//     "sodium": "1140mg",
//     "status": "false1"
//   },
//   {
//     "food": "Scallop and Shrimp Creole",
//     "calories": "304kcal",
//     "protein": "34g",
//     "fat": "12g",
//     "sodium": "1809mg",
//     "status": "false1"
//   },
//   {
//     "food": "Scallop and Shrimp Fritters with Chipotle Mayonnaise",
//     "calories": "876kcal",
//     "protein": "19g",
//     "fat": "60g",
//     "sodium": "944mg",
//     "status": "false1"
//   },
//   {
//     "food": "Scallop and Vegetable Stir-Fry",
//     "calories": "411kcal",
//     "protein": "21g",
//     "fat": "29g",
//     "sodium": "1347mg",
//     "status": "false1"
//   },
//   {
//     "food": "Scallop Brochettes with Mango-Tarragon Salsa",
//     "calories": "281kcal",
//     "protein": "19g",
//     "fat": "15g",
//     "sodium": "593mg",
//     "status": "false1"
//   },
//   {
//     "food": "Scallop Cakes with Cilantro-Lime Mayonnaise and New Potatoes",
//     "calories": "301kcal",
//     "protein": "30g",
//     "fat": "13g",
//     "sodium": "1582mg",
//     "status": "false1"
//   },
//   {
//     "food": "Scallop Ceviche on Black Pasta Cakes with Cilantro Salsa",
//     "calories": "21kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "345mg",
//     "status": "false1"
//   },
//   {
//     "food": "Scallop Chowder with Bacon",
//     "calories": "427kcal",
//     "protein": "26g",
//     "fat": "17g",
//     "sodium": "1021mg",
//     "status": "false1"
//   },
//   {
//     "food": "Scallop Gratins with Garlic-Lemon Butter",
//     "calories": "442kcal",
//     "protein": "27g",
//     "fat": "18g",
//     "sodium": "1080mg",
//     "status": "false1"
//   },
//   {
//     "food": "Scrambled Eggs with Ramps, Morels, and Asparagus",
//     "calories": "237kcal",
//     "protein": "16g",
//     "fat": "16g",
//     "sodium": "162mg",
//     "status": "false1"
//   },
//   {
//     "food": "Shrimp and Scallops with Asian Eggplant",
//     "calories": "474kcal",
//     "protein": "31g",
//     "fat": "32g",
//     "sodium": "1533mg",
//     "status": "false1"
//   },
//   {
//     "food": "Skirt Steak with Red-Wine Sauce",
//     "calories": "447kcal",
//     "protein": "34g",
//     "fat": "31g",
//     "sodium": "556mg",
//     "status": "false1"
//   },
//   {
//     "food": "Skordalia",
//     "calories": "44kcal",
//     "protein": "2g",
//     "fat": "2g",
//     "sodium": "362mg",
//     "status": "false1"
//   },
//   {
//     "food": "Skordalia (Garlic Dip)",
//     "calories": "1114kcal",
//     "protein": "8g",
//     "fat": "91g",
//     "sodium": "1114mg",
//     "status": "false1"
//   },
//   {
//     "food": "Slice-and-Bake Oatmeal Raisin Cookies",
//     "calories": "118kcal",
//     "protein": "2g",
//     "fat": "5g",
//     "sodium": "42mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sliced Baked Apples",
//     "calories": "253kcal",
//     "protein": "1g",
//     "fat": "12g",
//     "sodium": "6mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sliced Baked Potatoes with Parsley Butter",
//     "calories": "280kcal",
//     "protein": "5g",
//     "fat": "12g",
//     "sodium": "14mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Sliced Filet Mignon with Fava Beans, Radishes, and Mustard Dressing",
//     "calories": "810kcal",
//     "protein": "54g",
//     "fat": "51g",
//     "sodium": "272mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sliced Melon with Serrano Ham, Marcona Almonds, and Basil Oil",
//     "calories": "453kcal",
//     "protein": "19g",
//     "fat": "37g",
//     "sodium": "2030mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sliced Steak with Arugula",
//     "calories": "464kcal",
//     "protein": "24g",
//     "fat": "38g",
//     "sodium": "658mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sliced Steak with Roasted-Corn Salsa",
//     "calories": "649kcal",
//     "protein": "50g",
//     "fat": "40g",
//     "sodium": "874mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sliced Strip Steak with Arugula and Parsley",
//     "calories": "493kcal",
//     "protein": "35g",
//     "fat": "35g",
//     "sodium": "296mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sliced Tomato Salad",
//     "calories": "19kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "23mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sliced Tomatoes and Mozzarella with Three-Herb Pesto",
//     "calories": "212kcal",
//     "protein": "14g",
//     "fat": "14g",
//     "sodium": "411mg",
//     "status": "false1"
//   },
//   {
//     "food": "Slickhead, black, flesh, raw",
//     "calories": "46.92kcal",
//     "protein": "9.94g",
//     "fat": "0.62g",
//     "sodium": "228mg",
//     "status": "false1"
//   },
//   {
//     "food": "Slickhead, brown, large scaled, flesh, raw",
//     "calories": "55.61kcal",
//     "protein": "10.81g",
//     "fat": "1.2g",
//     "sodium": "228mg",
//     "status": "false1"
//   },
//   {
//     "food": "Slickhead, brown, small scaled, flesh, raw",
//     "calories": "60.56kcal",
//     "protein": "11.38g",
//     "fat": "1.5g",
//     "sodium": "228mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Snack, cassava crisps, plain or assorted flavours, salt added, composite",
//     "calories": "506.91kcal",
//     "protein": "1.1g",
//     "fat": "27.2g",
//     "sodium": "1190mg",
//     "status": "false1"
//   },
//   {
//     "food": "Snack, cheese & grain",
//     "calories": "513.06kcal",
//     "protein": "9.13g",
//     "fat": "27.9g",
//     "sodium": "1000mg",
//     "status": "false1"
//   },
//   {
//     "food": "Snack, chickpea noodle, fried, Bombay mix",
//     "calories": "480.16kcal",
//     "protein": "16.59g",
//     "fat": "26.2g",
//     "sodium": "710mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Snack, corn based, extruded, assorted shapes, cheese flavour, salted, assorted oils, ready to eat, composite",
//     "calories": "521.74kcal",
//     "protein": "6.29g",
//     "fat": "33.8g",
//     "sodium": "890mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Snack, corn chip, assorted flavours, salted, fried in assorted oils, ready to eat, composite",
//     "calories": "469.96kcal",
//     "protein": "6.84g",
//     "fat": "22.1g",
//     "sodium": "500mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Snack, corn chip, plain, salted, fried in assorted oils, ready to eat, composite",
//     "calories": "473.05kcal",
//     "protein": "6.57g",
//     "fat": "23.5g",
//     "sodium": "370mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Snack, corn chip, plain, unsalted, fried in assorted oils, ready to eat, composite",
//     "calories": "475.55kcal",
//     "protein": "6.91g",
//     "fat": "20.5g",
//     "sodium": "0mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Snack, kumara chips, plain or assorted flavours, salt added, composite",
//     "calories": "440.08kcal",
//     "protein": "2.96g",
//     "fat": "24.7g",
//     "sodium": "330mg",
//     "status": "false1"
//   },
//   {
//     "food": "Snack, multigrain chip, assorted flavours, Grainwaves, Bluebird",
//     "calories": "467.08kcal",
//     "protein": "7.77g",
//     "fat": "18.8g",
//     "sodium": "787mg",
//     "status": "false1"
//   },
//   {
//     "food": "Snack, popcorn, air popped",
//     "calories": "345.8kcal",
//     "protein": "13.06g",
//     "fat": "4.54g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Snack, popcorn, candied, composite",
//     "calories": "404.04kcal",
//     "protein": "2.84g",
//     "fat": "7.46g",
//     "sodium": "86.3mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Snack, potato chip or crisp, assorted flavours, salted, fried in assorted oils, ready to eat, composite",
//     "calories": "471kcal",
//     "protein": "6.58g",
//     "fat": "29.9g",
//     "sodium": "770mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Snack, potato chip or crisp, plain, salted, fried in assorted oils, ready to eat, composite",
//     "calories": "483.47kcal",
//     "protein": "6.83g",
//     "fat": "30.6g",
//     "sodium": "380mg",
//     "status": "false1"
//   },
//   {
//     "food": "Snack, potato crisp, Natural, Eta",
//     "calories": "523.82kcal",
//     "protein": "7.47g",
//     "fat": "29.17g",
//     "sodium": "88mg",
//     "status": "false1"
//   },
//   {
//     "food": "Snack, potato crisp, salted, Kettle",
//     "calories": "515.94kcal",
//     "protein": "6.21g",
//     "fat": "32.15g",
//     "sodium": "288mg",
//     "status": "false1"
//   },
//   {
//     "food": "Snack, pretzels, wheat flour, salted, baked",
//     "calories": "336.09kcal",
//     "protein": "9.1g",
//     "fat": "3.5g",
//     "sodium": "1715mg",
//     "status": "false1"
//   },
//   {
//     "food": "Snack, soy chips, salted",
//     "calories": "381.46kcal",
//     "protein": "26.5g",
//     "fat": "7.35g",
//     "sodium": "842mg",
//     "status": "false1"
//   },
//   {
//     "food": "Snapper, flesh, raw",
//     "calories": "111.56kcal",
//     "protein": "20.13g",
//     "fat": "3.2g",
//     "sodium": "78mg",
//     "status": "false1"
//   },
//   {
//     "food": "Soft Beef Tacos with Salsa",
//     "calories": "455kcal",
//     "protein": "43g",
//     "fat": "14g",
//     "sodium": "904mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Soft drink, assorted tea flavours, artificially-sweetened, ready to drink, composite",
//     "calories": "0kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "1.9mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Soft drink, assorted tea flavours, reduced sugar, ready to drink, composite",
//     "calories": "17.89kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "1.9mg",
//     "status": "false1"
//   },
//   {
//     "food": "Soft Oatmeal Cookies",
//     "calories": "194kcal",
//     "protein": "3g",
//     "fat": "9g",
//     "sodium": "5697mg",
//     "status": "false1"
//   },
//   {
//     "food": "Soft Polenta with Bay Leaves",
//     "calories": "221kcal",
//     "protein": "4g",
//     "fat": "4g",
//     "sodium": "1292mg",
//     "status": "false1"
//   },
//   {
//     "food": "Soft Polenta with Leeks",
//     "calories": "518kcal",
//     "protein": "14g",
//     "fat": "17g",
//     "sodium": "772mg",
//     "status": "false1"
//   },
//   {
//     "food": "Soft-Shelled Crab Sandwiches",
//     "calories": "437kcal",
//     "protein": "31g",
//     "fat": "23g",
//     "sodium": "617mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spice, mace, ground",
//     "calories": "436.68kcal",
//     "protein": "6.69g",
//     "fat": "32.38g",
//     "sodium": "80.1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spice, nutmeg, ground",
//     "calories": "469.04kcal",
//     "protein": "5.81g",
//     "fat": "36.31g",
//     "sodium": "16.2mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spice, oregano, dried",
//     "calories": "170.66kcal",
//     "protein": "9g",
//     "fat": "4.28g",
//     "sodium": "25mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spice, paprika",
//     "calories": "356.51kcal",
//     "protein": "14.73g",
//     "fat": "12.95g",
//     "sodium": "33.9mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spice, pepper, black",
//     "calories": "318.74kcal",
//     "protein": "12.81g",
//     "fat": "3.3g",
//     "sodium": "44mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spice, pepper, red or cayenne",
//     "calories": "378.04kcal",
//     "protein": "12g",
//     "fat": "17.27g",
//     "sodium": "30mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spice, turmeric, ground",
//     "calories": "322.25kcal",
//     "protein": "7.81g",
//     "fat": "9.88g",
//     "sodium": "37.8mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Spice-Coated Rack of Lamb for Two with Arugula, Avocado, and Blood Orange Salad",
//     "calories": "2137kcal",
//     "protein": "59g",
//     "fat": "199g",
//     "sodium": "2373mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spice-Crusted Ham with Maple Mustard Sauce",
//     "calories": "1068kcal",
//     "protein": "94g",
//     "fat": "63g",
//     "sodium": "5893mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spice-Crusted Pork Tenderloin with Andouille Sausage Gravy",
//     "calories": "459kcal",
//     "protein": "40g",
//     "fat": "29g",
//     "sodium": "771mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spice-Crusted Rack of Lamb",
//     "calories": "1552kcal",
//     "protein": "73g",
//     "fat": "134g",
//     "sodium": "348mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spiced and Steamed Couscous With Brown Butter",
//     "calories": "349kcal",
//     "protein": "10g",
//     "fat": "10g",
//     "sodium": "571mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spiced Apple Cake with Eggnog Sauce",
//     "calories": "583kcal",
//     "protein": "6g",
//     "fat": "28g",
//     "sodium": "254mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spiced Apple Cider",
//     "calories": "269kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "24mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spiced Apple Cider with Rum Whipped Cream",
//     "calories": "279kcal",
//     "protein": "1g",
//     "fat": "7g",
//     "sodium": "25mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spiced Apple Pie with Raisins",
//     "calories": "565kcal",
//     "protein": "5g",
//     "fat": "24g",
//     "sodium": "301mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spiced Apple-Cider Granita with Ginger Whipped Cream",
//     "calories": "186kcal",
//     "protein": "1g",
//     "fat": "1g",
//     "sodium": "19mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spiced Banana Ice Cream",
//     "calories": "209kcal",
//     "protein": "4g",
//     "fat": "16g",
//     "sodium": "33mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spiced Bananas",
//     "calories": "500kcal",
//     "protein": "3g",
//     "fat": "1g",
//     "sodium": "24mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spiced Basmati Rice",
//     "calories": "191kcal",
//     "protein": "5g",
//     "fat": "2g",
//     "sodium": "245mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spiced Beef and Onion Pitas with Parsley Sauce",
//     "calories": "535kcal",
//     "protein": "30g",
//     "fat": "34g",
//     "sodium": "850mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spiced Beef Corn Bread Cobbler",
//     "calories": "533kcal",
//     "protein": "34g",
//     "fat": "27g",
//     "sodium": "1039mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spiced Braised Lamb with Carrots and Spinach",
//     "calories": "617kcal",
//     "protein": "37g",
//     "fat": "47g",
//     "sodium": "730mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spiced Brisket with Leeks and Dried Apricots",
//     "calories": "940kcal",
//     "protein": "52g",
//     "fat": "67g",
//     "sodium": "650mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spiced Brown Butter Linzer Cookies",
//     "calories": "207kcal",
//     "protein": "2g",
//     "fat": "14g",
//     "sodium": "117mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spiced Carrot and Zucchini Quinoa",
//     "calories": "241kcal",
//     "protein": "7g",
//     "fat": "10g",
//     "sodium": "169mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spiced Carrot Cauliflower Soup",
//     "calories": "81kcal",
//     "protein": "3g",
//     "fat": "3g",
//     "sodium": "943mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spiced Carrot Salad",
//     "calories": "99kcal",
//     "protein": "2g",
//     "fat": "5g",
//     "sodium": "83mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spiced Cherry Cider with Kirsch Cream",
//     "calories": "195kcal",
//     "protein": "1g",
//     "fat": "3g",
//     "sodium": "15mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spiced Chicken Couscous with Cinnamon Onions",
//     "calories": "636kcal",
//     "protein": "18g",
//     "fat": "24g",
//     "sodium": "147mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spiced Chicken Stew with Carrots",
//     "calories": "752kcal",
//     "protein": "50g",
//     "fat": "48g",
//     "sodium": "391mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spiced Chickpea Sauce",
//     "calories": "368kcal",
//     "protein": "10g",
//     "fat": "22g",
//     "sodium": "340mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spiced Chocolate Chunk Walnut Cookies",
//     "calories": "228kcal",
//     "protein": "3g",
//     "fat": "14g",
//     "sodium": "130mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spiced Chocolate Torte Wrapped in Chocolate Ribbons",
//     "calories": "1466kcal",
//     "protein": "12g",
//     "fat": "100g",
//     "sodium": "123mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Chicken Cacciatore",
//     "calories": "931kcal",
//     "protein": "63g",
//     "fat": "29g",
//     "sodium": "297mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Shrimp with Andouille Sausage on Grits",
//     "calories": "877kcal",
//     "protein": "17g",
//     "fat": "65g",
//     "sodium": "449mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Sichuan Tofu (Mapo Doufu)",
//     "calories": "238kcal",
//     "protein": "20g",
//     "fat": "14g",
//     "sodium": "473mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Soba Noodles with Shiitakes and Cabbage",
//     "calories": "495kcal",
//     "protein": "21g",
//     "fat": "21g",
//     "sodium": "1888mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Southern Barbeque Sauce",
//     "calories": "191kcal",
//     "protein": "1g",
//     "fat": "5g",
//     "sodium": "1505mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Spaghetti with Clams and Red Bell Pepper",
//     "calories": "484kcal",
//     "protein": "21g",
//     "fat": "9g",
//     "sodium": "501mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Spiked Hot Chocolate",
//     "calories": "387kcal",
//     "protein": "6g",
//     "fat": "22g",
//     "sodium": "68mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Spinach and Goat Cheese Pizzas",
//     "calories": "853kcal",
//     "protein": "31g",
//     "fat": "28g",
//     "sodium": "1677mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Spinach Linguine with Olive Oil and Garlic",
//     "calories": "708kcal",
//     "protein": "27g",
//     "fat": "35g",
//     "sodium": "717mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Steak and Corn Soft Tacos",
//     "calories": "855kcal",
//     "protein": "54g",
//     "fat": "62g",
//     "sodium": "1980mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Stir-Fried Brown Rice with Broccolini and Scallops",
//     "calories": "394kcal",
//     "protein": "18g",
//     "fat": "8g",
//     "sodium": "787mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Stir-Fried Chinese Long Beans with Peanuts",
//     "calories": "222kcal",
//     "protein": "9g",
//     "fat": "14g",
//     "sodium": "453mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Straw Potatoes",
//     "calories": "804kcal",
//     "protein": "33g",
//     "fat": "54g",
//     "sodium": "323mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Sweet Corn and Poblano Soup",
//     "calories": "266kcal",
//     "protein": "6g",
//     "fat": "19g",
//     "sodium": "228mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Sweet Potato Spread",
//     "calories": "266kcal",
//     "protein": "1g",
//     "fat": "24g",
//     "sodium": "301mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Sweet-and-Sour Grilled Chicken",
//     "calories": "761kcal",
//     "protein": "56g",
//     "fat": "41g",
//     "sodium": "2918mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Tamarind Shrimp",
//     "calories": "161kcal",
//     "protein": "5g",
//     "fat": "11g",
//     "sodium": "1028mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Tamarind Skirt Steak",
//     "calories": "452kcal",
//     "protein": "35g",
//     "fat": "30g",
//     "sodium": "1547mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Tart Cherry Chutney",
//     "calories": "136kcal",
//     "protein": "2g",
//     "fat": "0g",
//     "sodium": "303mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Thai Dip",
//     "calories": "20kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "496mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Thai Steamed Mussels",
//     "calories": "488kcal",
//     "protein": "47g",
//     "fat": "22g",
//     "sodium": "1354mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Toasted Garbanzo Beans and Pistachios",
//     "calories": "241kcal",
//     "protein": "9g",
//     "fat": "13g",
//     "sodium": "378mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Toasted Pecans",
//     "calories": "284kcal",
//     "protein": "3g",
//     "fat": "30g",
//     "sodium": "66mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Tofu Crumbles",
//     "calories": "178kcal",
//     "protein": "13g",
//     "fat": "13g",
//     "sodium": "577mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Tomato Barbecue Sauce",
//     "calories": "298kcal",
//     "protein": "2g",
//     "fat": "15g",
//     "sodium": "1029mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Tomato Chutney",
//     "calories": "200kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "595mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Tomato Salsa with Cilantro and Chiles",
//     "calories": "65kcal",
//     "protein": "2g",
//     "fat": "4g",
//     "sodium": "725mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Tomato Sauce",
//     "calories": "112kcal",
//     "protein": "2g",
//     "fat": "7g",
//     "sodium": "12mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Tortilla Strips",
//     "calories": "189kcal",
//     "protein": "3g",
//     "fat": "11g",
//     "sodium": "242mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Tuna \"Tarts\" with Stuffed Tomatoes",
//     "calories": "211kcal",
//     "protein": "16g",
//     "fat": "13g",
//     "sodium": "497mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Turkey Paella",
//     "calories": "708kcal",
//     "protein": "41g",
//     "fat": "31g",
//     "sodium": "1004mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Vietnamese Beef and Noodle Soup",
//     "calories": "1024kcal",
//     "protein": "59g",
//     "fat": "61g",
//     "sodium": "1160mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Wok Shrimp with Coconut Rice",
//     "calories": "337kcal",
//     "protein": "24g",
//     "fat": "7g",
//     "sodium": "1518mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy Yogurt Dip with Chips and Vegetables",
//     "calories": "212kcal",
//     "protein": "7g",
//     "fat": "16g",
//     "sodium": "58mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy-Smoky Peanuts",
//     "calories": "229kcal",
//     "protein": "9g",
//     "fat": "20g",
//     "sodium": "237mg",
//     "status": "false1"
//   },
//   {
//     "food": "Spicy-Sour Dressing",
//     "calories": "226kcal",
//     "protein": "1g",
//     "fat": "14g",
//     "sodium": "17mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sports drink, flavoured, ready to drink, E2",
//     "calories": "40.89kcal",
//     "protein": "0.13g",
//     "fat": "0g",
//     "sodium": "9.1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sports drink, flavoured, ready to drink, Lucozade",
//     "calories": "56.94kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "29mg",
//     "status": "false1"
//   },
//   {
//     "food": "Squid in Vinegar Sauce",
//     "calories": "221kcal",
//     "protein": "21g",
//     "fat": "9g",
//     "sodium": "940mg",
//     "status": "false1"
//   },
//   {
//     "food": "Squid Ink Pasta with Shrimp, Nduja, and Tomato",
//     "calories": "603kcal",
//     "protein": "31g",
//     "fat": "22g",
//     "sodium": "867mg",
//     "status": "false1"
//   },
//   {
//     "food": "Squid, in flour, fried",
//     "calories": "186.16kcal",
//     "protein": "20.69g",
//     "fat": "8.4g",
//     "sodium": "313mg",
//     "status": "false1"
//   },
//   {
//     "food": "Steak and Boursin Sandwiches",
//     "calories": "470kcal",
//     "protein": "36g",
//     "fat": "29g",
//     "sodium": "864mg",
//     "status": "false1"
//   },
//   {
//     "food": "Steak and Eggs Korean Style",
//     "calories": "700kcal",
//     "protein": "40g",
//     "fat": "33g",
//     "sodium": "1516mg",
//     "status": "false1"
//   },
//   {
//     "food": "Steak Salad Sandwiches with Capers",
//     "calories": "699kcal",
//     "protein": "49g",
//     "fat": "51g",
//     "sodium": "390mg",
//     "status": "false1"
//   },
//   {
//     "food": "Steak Salad with Pickled Vegetables",
//     "calories": "682kcal",
//     "protein": "47g",
//     "fat": "50g",
//     "sodium": "150mg",
//     "status": "false1"
//   },
//   {
//     "food": "Steak Salad with Shallots and Red Wine",
//     "calories": "562kcal",
//     "protein": "30g",
//     "fat": "40g",
//     "sodium": "962mg",
//     "status": "false1"
//   },
//   {
//     "food": "Steak Sandwiches with Tomato Pesto",
//     "calories": "629kcal",
//     "protein": "30g",
//     "fat": "40g",
//     "sodium": "451mg",
//     "status": "false1"
//   },
//   {
//     "food": "Stir-Fried Beef and Broccoli",
//     "calories": "753kcal",
//     "protein": "46g",
//     "fat": "53g",
//     "sodium": "1204mg",
//     "status": "false1"
//   },
//   {
//     "food": "Stir-Fried Cabbage",
//     "calories": "105kcal",
//     "protein": "2g",
//     "fat": "7g",
//     "sodium": "30mg",
//     "status": "false1"
//   },
//   {
//     "food": "Strawberry Banana Smoothie",
//     "calories": "122kcal",
//     "protein": "4g",
//     "fat": "2g",
//     "sodium": "8mg",
//     "status": "false1"
//   },
//   {
//     "food": "Strawberry Cream Cake",
//     "calories": "481kcal",
//     "protein": "10g",
//     "fat": "20g",
//     "sodium": "238mg",
//     "status": "false1"
//   },
//   {
//     "food": "Strawberry Cream Cheese Tart",
//     "calories": "630kcal",
//     "protein": "9g",
//     "fat": "30g",
//     "sodium": "167mg",
//     "status": "false1"
//   },
//   {
//     "food": "Strawberry Ice Cream",
//     "calories": "228kcal",
//     "protein": "3g",
//     "fat": "14g",
//     "sodium": "156mg",
//     "status": "false1"
//   },
//   {
//     "food": "Strawberry Jam",
//     "calories": "348kcal",
//     "protein": "2g",
//     "fat": "1g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Strawberry Lemonade",
//     "calories": "78kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "5mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sushi Rice",
//     "calories": "191kcal",
//     "protein": "3g",
//     "fat": "0g",
//     "sodium": "303mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sushi-Roll Rice Salad",
//     "calories": "446kcal",
//     "protein": "6g",
//     "fat": "13g",
//     "sodium": "604mg",
//     "status": "false1"
//   },
//   {
//     "food": "Swedish Potato, Ham and Pea Salad",
//     "calories": "790kcal",
//     "protein": "32g",
//     "fat": "45g",
//     "sodium": "1287mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sweet Cheese Pie",
//     "calories": "529kcal",
//     "protein": "16g",
//     "fat": "28g",
//     "sodium": "706mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sweet Chili Sauce",
//     "calories": "212kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "585mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sweet Chocolate Glaze",
//     "calories": "146kcal",
//     "protein": "1g",
//     "fat": "10g",
//     "sodium": "47mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sweet corn, fruit vegetable, kernel, frozen, raw, composite",
//     "calories": "83.9kcal",
//     "protein": "2.87g",
//     "fat": "2.1g",
//     "sodium": "0mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sweet Pastry Dough",
//     "calories": "197kcal",
//     "protein": "3g",
//     "fat": "12g",
//     "sodium": "76mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sweet Rosemary Syrup",
//     "calories": "150kcal",
//     "protein": "0g",
//     "fat": "0g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sweet Spiced Nuts",
//     "calories": "276kcal",
//     "protein": "7g",
//     "fat": "21g",
//     "sodium": "80mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sweet-Potato Gratins",
//     "calories": "118kcal",
//     "protein": "3g",
//     "fat": "7g",
//     "sodium": "77mg",
//     "status": "false1"
//   },
//   {
//     "food": "Sweet-Potato Hash",
//     "calories": "542kcal",
//     "protein": "18g",
//     "fat": "34g",
//     "sodium": "780mg",
//     "status": "false1"
//   },
//   {
//     "food": "Syrup, banana, McDonald's",
//     "calories": "208.77kcal",
//     "protein": "0g",
//     "fat": "0.13g",
//     "sodium": "12.5mg",
//     "status": "false1"
//   },
//   {
//     "food": "Teriyaki Pork Chops",
//     "calories": "328kcal",
//     "protein": "24g",
//     "fat": "16g",
//     "sodium": "2395mg",
//     "status": "false1"
//   },
//   {
//     "food": "Teriyaki Salmon",
//     "calories": "119kcal",
//     "protein": "12g",
//     "fat": "8g",
//     "sodium": "62mg",
//     "status": "false1"
//   },
//   {
//     "food": "Teriyaki-Style Chicken",
//     "calories": "457kcal",
//     "protein": "49g",
//     "fat": "21g",
//     "sodium": "1243mg",
//     "status": "false1"
//   },
//   {
//     "food": "Texas Beef Tacos",
//     "calories": "175kcal",
//     "protein": "9g",
//     "fat": "9g",
//     "sodium": "119mg",
//     "status": "false1"
//   },
//   {
//     "food": "Tomato-Rubbed Bruschetta",
//     "calories": "155kcal",
//     "protein": "2g",
//     "fat": "11g",
//     "sodium": "126mg",
//     "status": "false1"
//   },
//   {
//     "food": "Tomato-Sausage Sauce",
//     "calories": "291kcal",
//     "protein": "10g",
//     "fat": "25g",
//     "sodium": "614mg",
//     "status": "false1"
//   },
//   {
//     "food": "Tossed Pizza Salad",
//     "calories": "695kcal",
//     "protein": "29g",
//     "fat": "45g",
//     "sodium": "1251mg",
//     "status": "false1"
//   },
//   {
//     "food": "Traditional Apple-Walnut Charoset",
//     "calories": "174kcal",
//     "protein": "2g",
//     "fat": "7g",
//     "sodium": "3mg",
//     "status": "false1"
//   },
//   {
//     "food": "Tropical Fruit Smoothie",
//     "calories": "189kcal",
//     "protein": "8g",
//     "fat": "1g",
//     "sodium": "99mg",
//     "status": "false1"
//   },
//   {
//     "food": "Tropical Fruit Sparkler",
//     "calories": "220kcal",
//     "protein": "3g",
//     "fat": "1g",
//     "sodium": "15mg",
//     "status": "false1"
//   },
//   {
//     "food":
//         "Tropical Fruit Splits with Rum Sauce and Chile-Macadamia Brittle",
//     "calories": "645kcal",
//     "protein": "6g",
//     "fat": "13g",
//     "sodium": "113mg",
//     "status": "false1"
//   },
//   {
//     "food": "Tropical Fruit Tart",
//     "calories": "412kcal",
//     "protein": "2g",
//     "fat": "24g",
//     "sodium": "384mg",
//     "status": "false1"
//   },
//   {
//     "food": "Tropical Lime Torte with Mango Compote",
//     "calories": "921kcal",
//     "protein": "14g",
//     "fat": "23g",
//     "sodium": "315mg",
//     "status": "false1"
//   },
//   {
//     "food": "Tropical Margarita",
//     "calories": "162kcal",
//     "protein": "1g",
//     "fat": "0g",
//     "sodium": "1mg",
//     "status": "false1"
//   },
//   {
//     "food": "Tuna Fish Salad Plate",
//     "calories": "256kcal",
//     "protein": "13g",
//     "fat": "22g",
//     "sodium": "692mg",
//     "status": "false1"
//   },
//   {
//     "food": "Tuna Noodle Casserole",
//     "calories": "689kcal",
//     "protein": "36g",
//     "fat": "35g",
//     "sodium": "839mg",
//     "status": "false1"
//   },
//   {
//     "food": "Tuna Pasta Salad",
//     "calories": "498kcal",
//     "protein": "20g",
//     "fat": "25g",
//     "sodium": "394mg",
//     "status": "false1"
//   },
//   {
//     "food": "Tuna Sates with Wasabi Mayonnaise",
//     "calories": "252kcal",
//     "protein": "11g",
//     "fat": "22g",
//     "sodium": "331mg",
//     "status": "false1"
//   },
//   {
//     "food": "Tuna with Tomato-Basil Sauce",
//     "calories": "198kcal",
//     "protein": "29g",
//     "fat": "5g",
//     "sodium": "64mg",
//     "status": "false1"
//   },
//   {
//     "food": "Turkey Wraps with Chipotle Mayonnaise",
//     "calories": "716kcal",
//     "protein": "29g",
//     "fat": "55g",
//     "sodium": "829mg",
//     "status": "false1"
//   },
//   {
//     "food": "Turkey, breast, flesh, raw",
//     "calories": "100.38kcal",
//     "protein": "22.38g",
//     "fat": "1.06g",
//     "sodium": "280mg",
//     "status": "false1"
//   },
//   {
//     "food": "Turkey, breast, flesh, roasted",
//     "calories": "152.42kcal",
//     "protein": "30.69g",
//     "fat": "3.12g",
//     "sodium": "207mg",
//     "status": "false1"
//   },
//   {
//     "food": "Turkey, drumstick, flesh, raw",
//     "calories": "103.22kcal",
//     "protein": "20.38g",
//     "fat": "2.3g",
//     "sodium": "268mg",
//     "status": "false1"
//   },
//   {
//     "food": "Turkey, drumstick, flesh, roasted",
//     "calories": "174.55kcal",
//     "protein": "33.13g",
//     "fat": "4.5g",
//     "sodium": "236mg",
//     "status": "false1"
//   },
//   {
//     "food": "Turkey, flesh, raw",
//     "calories": "102.8kcal",
//     "protein": "20.75g",
//     "fat": "2.08g",
//     "sodium": "249mg",
//     "status": "false1"
//   },
//   {
//     "food": "Turkey, flesh, roasted",
//     "calories": "162.08kcal",
//     "protein": "30.63g",
//     "fat": "4.24g",
//     "sodium": "229mg",
//     "status": "false1"
//   },
//   {
//     "food": "Turkey, wing, flesh, raw",
//     "calories": "102.25kcal",
//     "protein": "20.38g",
//     "fat": "2.19g",
//     "sodium": "280mg",
//     "status": "false1"
//   },
//   {
//     "food": "Walnut-Blackberry Torte with Mocha Buttercream",
//     "calories": "542kcal",
//     "protein": "11g",
//     "fat": "36g",
//     "sodium": "293mg",
//     "status": "false1"
//   },
//   {
//     "food": "Yam Neua",
//     "calories": "216kcal",
//     "protein": "16g",
//     "fat": "14g",
//     "sodium": "515mg",
//     "status": "false1"
//   },
//   {
//     "food": "Yam Soup with Coriander",
//     "calories": "193kcal",
//     "protein": "10g",
//     "fat": "7g",
//     "sodium": "145mg",
//     "status": "false1"
//   },
//   {
//     "food": "Yoghurt, from coconut cream, plain, unsweetened, composite",
//     "calories": "227.76kcal",
//     "protein": "1.98g",
//     "fat": "23.75g",
//     "sodium": "13.5mg",
//     "status": "false1"
//   },
//   {
//     "food": "Yogurt Pie with Grape and Black-Pepper Compote",
//     "calories": "454kcal",
//     "protein": "11g",
//     "fat": "19g",
//     "sodium": "339mg",
//     "status": "false1"
//   },
// ];
