import 'package:flutter/material.dart';
// import 'package:uts_flutter/Loginn/page_login.dart';
import 'dart:async';
import 'Screens/Login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _iconSplash(),
            SizedBox(
              height: 50.0,
            ),
            Text(
              "Developed by Melani 2020",
              style: TextStyle(
                color: Colors.brown,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconSplash() {
    return Image.asset(
      "assets/images/boba.png",
      width: 430.0,
      height: 430.0,
    );
  }
}
