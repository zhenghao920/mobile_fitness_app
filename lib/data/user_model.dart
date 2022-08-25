class UserModel {
  String? uid;
  String? email;
  String? name;
  String? age;
  String? height;
  String? weight;
  String? targetWeight;
  String? bmi;

  UserModel({this.uid, this.email, this.name, age, height, weight, targetWeight, bmi});

  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      name: map['name'],
      age: map['age'],
      height: map['height'],
      weight: map['weight'],
      targetWeight: map['targetWeight'],
      bmi: map['map']
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
      'age': age,
      'height': height,
      'weight': weight,
      'targetWeight' : targetWeight,
      'bmi' : bmi,
    };
  }
}
