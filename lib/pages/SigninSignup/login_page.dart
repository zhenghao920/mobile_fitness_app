import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_ui_kit/pages/SigninSignup/forgot_password_page.dart';
import 'package:fitness_ui_kit/pages/SigninSignup/sign_up_page.dart';
import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:fitness_ui_kit/widget/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:line_icons/line_icons.dart';

import '../../main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
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
          child: Column(
            children: [
              Container(
                height: (size.height - 60) * 0.6,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Hey there,",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Welcome Back",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 100,
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
                              child: TextField(
                                controller: emailController,
                                cursorColor: black.withOpacity(0.5),
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
                      height: 20,
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
                              child: TextField(
                                obscureText: _obscureText,
                                controller: passwordController,
                                cursorColor: black.withOpacity(0.5),
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
                      height: 25,
                    ),
                    GestureDetector(
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 14),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => ForgotPasswordPage()));
                      },
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'New user?',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          GestureDetector(
                            child: Text(
                              'Create New Account',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontSize: 14),
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => SignUpPage()));
                            },
                          ),
                        ])
                  ],
                ),
              ),
              SizedBox(
                height: 65,
              ),
              // login button and social login
              Container(
                  height: (size.height - 60) * 0.5,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: signIn,
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              gradient:
                                  LinearGradient(colors: [secondary, primary]),
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: white,
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
    );
  }

  Future signIn() async {
    // showDialog(
    //   context: context,
    //   barrierDismissible: false,
    //   builder: (context) => Center(
    //     //child: CircularProgressIndicator(),
    //   ),
    // );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
      Utils.showSnackBar(e.message);
    }
  }
}
