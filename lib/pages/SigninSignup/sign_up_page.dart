import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_ui_kit/data/user_model.dart';
import 'package:fitness_ui_kit/main.dart';
import 'package:fitness_ui_kit/router.dart';
import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:fitness_ui_kit/widget/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:email_validator/email_validator.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final heightController = TextEditingController();
  final weightController = TextEditingController();
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gym,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Container(
                  height: (size.height - 60) * 0.8,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Account Registration",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: bgTextField,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              Icon(
                                LineIcons.envelope,
                                color: black.withOpacity(0.5),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Flexible(
                                child: TextFormField(
                                  controller: emailController,
                                  cursorColor: black.withOpacity(0.5),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (email) => email != null &&
                                          !EmailValidator.validate(email)
                                      ? 'Enter a valid email'
                                      : null,
                                  decoration: InputDecoration(
                                      hintText: "Email",
                                      border: InputBorder.none),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: bgTextField,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Icon(
                                LineIcons.lock,
                                color: black.withOpacity(0.5),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Flexible(
                                child: TextFormField(
                                  obscureText: _obscureText,
                                  controller: passwordController,
                                  cursorColor: black.withOpacity(0.5),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (value) =>
                                      value != null && value.length < 6
                                          ? 'Required at least 6 characters'
                                          : null,
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      border: InputBorder.none),
                                ),
                              ),
                              IconButton(
                                  onPressed: _toggle,
                                  icon: Icon(
                                    LineIcons.eyeAlt,
                                    color: black.withOpacity(0.5),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: bgTextField,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.people_alt_outlined,
                                color: black.withOpacity(0.5),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Flexible(
                                child: TextFormField(
                                  controller: nameController,
                                  cursorColor: black.withOpacity(0.5),
                                  decoration: InputDecoration(
                                      hintText: "Full Name",
                                      border: InputBorder.none),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: bgTextField,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person_pin_circle_rounded,
                                color: black.withOpacity(0.5),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Flexible(
                                child: TextFormField(
                                  controller: ageController,
                                  cursorColor: black.withOpacity(0.5),
                                  decoration: InputDecoration(
                                      hintText: "Age",
                                      border: InputBorder.none),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: bgTextField,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.height_outlined,
                                color: black.withOpacity(0.5),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Flexible(
                                child: TextFormField(
                                  controller: heightController,
                                  cursorColor: black.withOpacity(0.5),
                                  decoration: InputDecoration(
                                      hintText: "Height (in cm)",
                                      border: InputBorder.none),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: bgTextField,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.monitor_weight_outlined,
                                color: black.withOpacity(0.5),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Flexible(
                                child: TextFormField(
                                  controller: weightController,
                                  cursorColor: black.withOpacity(0.5),
                                  decoration: InputDecoration(
                                      hintText: "Weight (in kg)",
                                      border: InputBorder.none),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: (size.height - 60) * 0.5,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: signUp,
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [secondary, primary]),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Confirm",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(color: black),
                                color: white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Back to Login",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  postDetailsToFirestore() async {
    // calling our firestore
    // calling our user model
    // sedning these values

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = FirebaseAuth.instance.currentUser;

    UserModel userModel = UserModel();

    // writing all the values
    userModel.email = user.email;
    userModel.uid = user.uid;
    userModel.name = nameController.text;
    userModel.age = ageController.text;
    userModel.height = heightController.text;
    userModel.weight = weightController.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Account created successfully :) ");

    // Future.delayed(const Duration(seconds: 2));
    // Navigator.popAndPushNamed(context, 'auth_page');
    //navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }

  Future signUp() async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(
        child: CircularProgressIndicator(),
      ),
    );
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailController.text.trim(),
              password: passwordController.text.trim())
          .then((value) => {postDetailsToFirestore()})
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    } on FirebaseAuthException catch (e) {
      print(e);
      Utils.showSnackBar(e.message);
    }
    //navigatorKey.currentState!.popUntil((route) => route.isFirst);
    //Navigator.popAndPushNamed(context, 'auth_page');
  }
}
