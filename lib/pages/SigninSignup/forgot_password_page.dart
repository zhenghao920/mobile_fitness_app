import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:fitness_ui_kit/widget/utils.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gym,
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter your email to reset the password.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: emailController,
                  cursorColor: black.withOpacity(0.5),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (email) =>
                      email != null && !EmailValidator.validate(email)
                          ? 'Enter a valid email'
                          : null,
                  decoration: InputDecoration(
                      hintText: "Email", border: InputBorder.none),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: resetPassword,
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [secondary, primary]),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Reset Password",
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
                        gradient: LinearGradient(colors: [secondary, primary]),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Back",
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
            )),
      ),
    );
  }

  Future resetPassword() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(
        child: CircularProgressIndicator(),
      ),
    );

    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());

      Utils.showSnackBar('Email sent!');
      Navigator.of(context).popUntil((route) => route.isFirst);
    } on FirebaseAuthException catch (e) {
      print(e);

      Utils.showSnackBar(e.message);
      Navigator.of(context).pop();
    }
  }
}
