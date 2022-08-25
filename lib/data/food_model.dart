class Food {
  final String mealTime,
      name,
      imagePath,
      kiloCaloriesBurnt,
      protein,
      carbs,
      fat;
  final List ingredients;

  Food(
      {required this.mealTime,
      required this.protein,
      required this.carbs,
      required this.fat,
      required this.name,
      required this.imagePath,
      required this.kiloCaloriesBurnt,
      required this.ingredients});
}

final allFoods = [
  Food(
      mealTime: "BREAKFAST",
      name: "Fruit Granola",
      kiloCaloriesBurnt: "271",
      imagePath: "assets/images/fruit_granola.jpg",
      ingredients: [
        "1 cup of granola",
        "1 banana",
        "1/2 cup of raisins",
        "1 tbsp of honey",
      ],
      carbs: '',
      fat: '',
      protein: ''),
  Food(
      mealTime: "DINNER",
      name: "Pesto Pasta",
      kiloCaloriesBurnt: "612",
      imagePath: "assets/images/pesto_pasta.jpg",
      ingredients: [
        "1 cup of granola",
        "1 banana",
        "1/2 cup of raisins",
        "1 tbsp of honey",
      ],
      carbs: '',
      fat: '',
      protein: ''),
  Food(
      mealTime: "SNACK",
      name: "Keto Snack",
      kiloCaloriesBurnt: "414",
      imagePath: "assets/images/keto_snack.jpg",
      ingredients: [
        "1 cup of granola",
        "1 banana",
        "1/2 cup of raisins",
        "1 tbsp of honey",
      ],
      carbs: '',
      fat: '',
      protein: ''),
];
