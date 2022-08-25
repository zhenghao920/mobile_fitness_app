import 'dart:math';

class KcalFormular {
  final int height;
  final int weight;
  final int activityLevel;
  final int age;

  late double _bmi;
  late double _bmr;

  KcalFormular({
    required this.height,
    required this.weight,
    required this.activityLevel,
    required this.age,
  });

  String calculateKcal() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  double calculateMaintain() {
    _bmr = 88.362 + (13.397 * weight) + (4.799 * height) - (5.677 * age);

    if (activityLevel == 0) {
      return 1.2 * _bmr;
    } else if (activityLevel <= 3) {
      return 1.375 * _bmr;
    } else if (activityLevel <= 5) {
      return 1.55 * _bmr;
    } else {
      return 1.725 * _bmr;
    }
  }

  double calculateBulk() {
    _bmr = 88.362 + (13.397 * weight) + (4.799 * height) - (5.677 * age);
    if (activityLevel == 0) {
      return 1.2 * _bmr*1.12;
    } else if (activityLevel <= 3) {
      return 1.375 * _bmr*1.12;
    } else if (activityLevel <= 5) {
      return 1.55 * _bmr*1.12;
    } else {
      return 1.725 * _bmr*1.12;
    }
  }

  double calculateCut() {
    _bmr = 88.362 + (13.397 * weight) + (4.799 * height) - (5.677 * age);
    if (activityLevel == 0) {
      return 1.2 * _bmr*0.88;
    } else if (activityLevel <= 3) {
      return 1.375 * _bmr*0.88;
    } else if (activityLevel <= 5) {
      return 1.55 * _bmr*0.88;
    } else {
      return 1.725 * _bmr*0.88;
    }
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.\n 💪🚵🚴🏊🏇🏃';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!\n 🍇🍉🍍🍒🌽';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.\n 🍲🍱🍳🍗🍒🍎';
    }
  }
}
