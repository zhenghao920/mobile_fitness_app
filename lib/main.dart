// @dart=2.9

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_ui_kit/pages/SigninSignup/login_page.dart';
import 'package:fitness_ui_kit/pages/auth_page.dart';
import 'package:fitness_ui_kit/pages/root_app.dart';
import 'package:fitness_ui_kit/theme/colors.dart';
import 'package:fitness_ui_kit/widget/utils.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'router.dart' as router;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

//final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: Utils.messageKey,
      //navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      //onGenerateRoute: router.generateRoute,
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        backgroundColor: gym,
        duration: 2000,
        splashIconSize: 500,
        animationDuration: Duration(seconds: 1),
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Lottie.asset('assets/images/splash_screen.json'),
            ),
            Center(
              child: Text('Fitness Application', style: GoogleFonts.mcLaren(fontSize: 26)),
            )
          ],
        ),
        nextScreen: MainPage());
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Something wrong'),
            );
          } else if (snapshot.hasData) {
            return RootApp();
          } else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
