import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SetGoals extends StatefulWidget {
  const SetGoals({Key? key}) : super(key: key);

  @override
  _SetGoalsState createState() => _SetGoalsState();
}

class _SetGoalsState extends State<SetGoals> {
  final user = FirebaseAuth.instance.currentUser!;
  final targetController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bar,
        title: Text('Set the goals'),
      ),
      backgroundColor: gym,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
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
                return snapshot.hasData
                    ? ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: const Radius.circular(45),
                          bottom: const Radius.circular(45),
                        ),
                        child: Container(
                          height: 150,
                          padding: const EdgeInsets.only(
                              top: 10, right: 16, bottom: 10),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8),
                                child: Text(
                                  'Current weight: ${snapshot.data!['weight'] ?? ''}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 24,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only( top: 8),
                                child: Text(
                                  'Your target weight: ${snapshot.data!['targetWeight'] ?? ''}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 24,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ))
                    : Container();
              },
            ),
          ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: setTargetDialog,
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
                          "Set/update goal",
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
      ),
    );
  }
  Future setTargetDialog() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Set your target weight'),
              content: TextFormField(
                controller: targetController,
                decoration:
                    InputDecoration(hintText: 'Enter your target weight'),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Cancel')),
                TextButton(
                    onPressed: updateTarget,
                    child: Text(
                      'Confirm',
                      style: TextStyle(fontSize: 18),
                    )),
              ],
            ));
  }

  updateTarget() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = FirebaseAuth.instance.currentUser;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .update({'targetWeight': targetController.text});
    Fluttertoast.showToast(msg: "Update successfully :) ");
    setState(() {});
  }
}
