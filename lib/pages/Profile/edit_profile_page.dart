import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_ui_kit/pages/SigninSignup/forgot_password_page.dart';
import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final user = FirebaseAuth.instance.currentUser!;
  final ageController = TextEditingController();
  final weightController = TextEditingController();
  final heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5c6bc0),
        title: Text(
          "Manage profile information",
        ),
      ),
      backgroundColor: gym,
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 13, right: 13),
            child: FutureBuilder<DocumentSnapshot>(
                future: FirebaseFirestore.instance
                    .collection('users')
                    .doc(user.uid)
                    .get(),
                builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasError)
                    return Center(
                      child: Text(snapshot.hasError.toString()),
                    );
                  if (snapshot.hasData) {
                    return ListTile(
                      title: Text(
                        "Name ",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "${snapshot.data!['name'] ?? ''}",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    );
                  } else {
                    return Container();
                  }
                }),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10, left: 13, right: 13),
            child: FutureBuilder<DocumentSnapshot>(
                future: FirebaseFirestore.instance
                    .collection('users')
                    .doc(user.uid)
                    .get(),
                builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasError)
                    return Center(
                      child: Text(snapshot.hasError.toString()),
                    );
                  if (snapshot.hasData) {
                    return ListTile(
                      title: Text(
                        "Age",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "${snapshot.data!['age'] ?? ''}",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      trailing: IconButton(
                          onPressed: editAgeDialog, icon: Icon(Icons.edit)),
                    );
                  } else {
                    return Container();
                  }
                }),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10, left: 13, right: 13),
            child: FutureBuilder<DocumentSnapshot>(
                future: FirebaseFirestore.instance
                    .collection('users')
                    .doc(user.uid)
                    .get(),
                builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasError)
                    return Center(
                      child: Text(snapshot.hasError.toString()),
                    );
                  if (snapshot.hasData) {
                    return ListTile(
                      title: Text(
                        "Height ",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "${snapshot.data!['height'] ?? ''}",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      trailing: IconButton(
                          onPressed: editHeightDialog, icon: Icon(Icons.edit)),
                    );
                  } else {
                    return Container();
                  }
                }),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10, left: 13, right: 13),
            child: FutureBuilder<DocumentSnapshot>(
                future: FirebaseFirestore.instance
                    .collection('users')
                    .doc(user.uid)
                    .get(),
                builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasError)
                    return Center(
                      child: Text(snapshot.hasError.toString()),
                    );
                  if (snapshot.hasData) {
                    return ListTile(
                      title: Text(
                        "Weight ",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "${snapshot.data!['weight'] ?? ''}",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      trailing: IconButton(
                          onPressed: editWeightDialog,
                          icon: Icon(Icons.edit)),
                    );
                    // Row(
                    //   children: [
                    //     Text(
                    //       "Occupation: ",
                    //       style: TextStyle(
                    //           fontSize: 22, fontWeight: FontWeight.bold),
                    //       textAlign: TextAlign.center,
                    //     ),
                    //     SizedBox(
                    //       width: 150,
                    //     ),
                    //     Text(
                    //       "${snapshot.data!['Occupation'] ?? ''}",
                    //       style: TextStyle(
                    //         fontSize: 20,
                    //       ),
                    //       textAlign: TextAlign.center,
                    //     ),
                    //   ],
                    // );
                  } else {
                    return Container();
                  }
                }),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10, left: 13, right: 13),
            child: FutureBuilder<DocumentSnapshot>(
                future: FirebaseFirestore.instance
                    .collection('users')
                    .doc(user.uid)
                    .get(),
                builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasError)
                    return Center(
                      child: Text(snapshot.hasError.toString()),
                    );
                  if (snapshot.hasData) {
                    return ListTile(
                      title: Text(
                        "Password ",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) {
                                  return ForgotPasswordPage();
                                },
                              ),
                            );
                          },
                          icon: Icon(Icons.edit)),
                    );
                    // Row(
                    //   children: [
                    //     Text(
                    //       "Occupation: ",
                    //       style: TextStyle(
                    //           fontSize: 22, fontWeight: FontWeight.bold),
                    //       textAlign: TextAlign.center,
                    //     ),
                    //     SizedBox(
                    //       width: 150,
                    //     ),
                    //     Text(
                    //       "${snapshot.data!['Occupation'] ?? ''}",
                    //       style: TextStyle(
                    //         fontSize: 20,
                    //       ),
                    //       textAlign: TextAlign.center,
                    //     ),
                    //   ],
                    // );
                  } else {
                    return Container();
                  }
                }),
          ),

          // Padding(
          //   padding: const EdgeInsets.only(top: 20, left: 13, right: 13),
          //   child: TextFormField(
          //     //cursorColor: Theme.of(context).cursorColor,
          //     //initialValue: 'Edit your phone number',
          //     maxLength: 25,
          //     decoration: InputDecoration(
          //       icon: Icon(Icons.phone_android),
          //       labelText: 'Phone No',
          //       //helperText: 'Helper text',
          //       suffixIcon: Icon(Icons.check_circle),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 20, left: 13, right: 13),
          //   child: TextFormField(
          //     //cursorColor: Theme.of(context).cursorColor,
          //     //initialValue: 'Edit your password',
          //     //maxLength: 6,
          //     decoration: InputDecoration(
          //       icon: Icon(Icons.password),
          //       labelText: 'Password',
          //       //helperText: 'Helper text',
          //       suffixIcon: Icon(
          //         Icons.check_circle,
          //       ),
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 80,
          // ),
          // InkWell(
          //   onTap: editDialog,
          //   child: Container(
          //     height: 50,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //         gradient:
          //             LinearGradient(colors: [kSecondaryDarkColor, Colors.grey]),
          //         borderRadius: BorderRadius.circular(30)),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Text(
          //           "Edit",
          //           style: TextStyle(
          //               fontSize: 16, color: white, fontWeight: FontWeight.bold),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
        ]),
      ),
    );
  }

  Future editHeightDialog() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Edit your height'),
              content: TextFormField(
                controller: heightController,
                decoration: InputDecoration(hintText: 'Enter your new height'),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Cancel')),
                TextButton(
                    onPressed: updateHeight,
                    child: Text(
                      'Confirm',
                      style: TextStyle(fontSize: 18),
                    )),
              ],
            ));
  }

  Future editAgeDialog() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Edit your age'),
              content: TextFormField(
                controller: ageController,
                decoration: InputDecoration(hintText: 'Enter your new age'),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Cancel')),
                TextButton(
                    onPressed: updateAge,
                    child: Text(
                      'Confirm',
                      style: TextStyle(fontSize: 18),
                    )),
              ],
            ));
  }

  Future editWeightDialog() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Edit your weight'),
              content: TextFormField(
                controller: weightController,
                decoration:
                    InputDecoration(hintText: 'Enter your new weight'),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Cancel')),
                TextButton(
                    onPressed: updateWeight,
                    child: Text(
                      'Confirm',
                      style: TextStyle(fontSize: 18),
                    )),
              ],
            ));
  }

  updateHeight() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = FirebaseAuth.instance.currentUser;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .update({'height': heightController.text});
    Fluttertoast.showToast(msg: "Update successfully :) ");
    setState(() {});
    // Navigator.pushNamedAndRemoveUntil(context, "/profile", (route) => false);
  }

  updateAge() async {
    // calling our firestore
    // calling our user model
    // sending these values

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = FirebaseAuth.instance.currentUser;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .update({'age': ageController.text});
    Fluttertoast.showToast(msg: "Update successfully :) ");
    setState(() {});
    // Navigator.pushNamedAndRemoveUntil(context, "/profile", (route) => false);
  }

  updateWeight() async {
    // calling our firestore
    // calling our user model
    // sending these values

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = FirebaseAuth.instance.currentUser;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .update({'weight': weightController.text});
    Fluttertoast.showToast(msg: "Update successfully :) ");
    setState(() {});
    // Navigator.pushNamedAndRemoveUntil(context, "/profile", (route) => false);
  }
}
