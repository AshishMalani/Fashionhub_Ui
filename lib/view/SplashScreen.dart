import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'PageView.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => PageViewScreen(),
            )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff2D6A4F),
            Color(0xff86C6A4),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/1.png"),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Fashion",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: height * 0.055,
                      color: Colors.white),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Text(
                  "Hub",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: height * 0.055,
                      color: Color(0xffE7B844)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
