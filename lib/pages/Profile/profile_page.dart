import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_ui_kit/pages/Calculator/bmi_calculator_page.dart';
import 'package:fitness_ui_kit/pages/Profile/edit_profile_page.dart';
import 'package:fitness_ui_kit/pages/Profile/set_goals_page.dart';
import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:fitness_ui_kit/widget/icon_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final userEmail = FirebaseAuth.instance.currentUser!;
    final userId = userEmail.uid;
    final today = DateTime.now();

    return Scaffold(
      backgroundColor: gym,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: FutureBuilder<DocumentSnapshot>(
                future: FirebaseFirestore.instance
                    .collection('users')
                    .doc(userId)
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
                            color: thirdColor,
                            padding: const EdgeInsets.only(
                                top: 20, left: 32, right: 16, bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      //"${DateFormat("EEEE").format(today)}, ${DateFormat("d MMMM").format(today)}",
                                      "Wednesday, 27 April",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  subtitle: Text(
                                    "Hello, ${snapshot.data!['name'] ?? ''}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 26,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 18, top: 8),
                                  child: Text(
                                    'Target weight: ${snapshot.data!['targetWeight'] ?? ''}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      : Container();
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return EditProfile();
                    },
                  ),
                );
              },
              child: ListTile(
                leading: IconCardWidget(
                    icon: Icons.supervised_user_circle_outlined,
                    color: Colors.blueAccent),
                title: Text('Manage profile information'),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return SetGoals();
                    },
                  ),
                );
              },
              child: ListTile(
                leading: IconCardWidget(
                    icon: Icons.flag_outlined, color: Colors.blueAccent),
                title: Text('Set the goals'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () async {
                final url = 'https://forms.gle/5hvdFWFwEoVP66AL7';

                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: ListTile(
                leading: IconCardWidget(
                    icon: Icons.feedback_outlined, color: Colors.blueAccent),
                title: Text('Review our APP'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () async {
                final url = 'https://forms.gle/GJHVSueNEyCd9ygKA';

                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: ListTile(
                leading: IconCardWidget(
                    icon: Icons.bug_report_outlined, color: Colors.blueAccent),
                title: Text('Report bugs'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () => FirebaseAuth.instance.signOut(),
              child: ListTile(
                leading: IconCardWidget(
                    icon: Icons.logout_outlined, color: Colors.blueAccent),
                title: Text('Sign Out'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}