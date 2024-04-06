import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../model/accounts_model.dart';
import '../auth/screen/authentication.dart';
import '../auth/screen/login_page.dart';
import '../home/screen/home_screen.dart';
import '../widget/firebase_constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool login = false;

  @override
  void initState() {
    super.initState();
    localstorage();
  }

  localstorage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getBool('isLogged') ?? false) {
      setState(() {
        login = true;
      });
      currentUserId = prefs.getString('userUid') ?? '';
      usersmodel = await getUser(currentUserId);
      var updatedata = usersmodel!.copyWith(lastLogged: DateTime.now());
      FirebaseFirestore.instance
          .collection(FirebaseConstants.user)
          .doc(currentUserId)
          .update(updatedata!.toJson());
    }
    navigateToPage();
  }

  navigateToPage() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        login
            ? MaterialPageRoute(builder: (context) => HomeScreen())
            : MaterialPageRoute(builder: (context) => LoginPage()),
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade900,
        body: Center(
          child: Text(
            "ICERP",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 65,
              fontFamily: "JosefinSans",
            ),
          ),
        ),
        // body: AnimatedSplashScreen(
        //   splash: Image.asset(
        //     "assets/img/education-search.png",
        //     fit: BoxFit.cover,
        //   ),
        //   nextScreen: login ? HomeScreen() : LoginPage(),
        //   // splashTransition: SplashTransition.scaleTransition,
        //   duration: 5000,
        //   splashIconSize: 80,
        // )
    );
  }
}
