import 'dart:async';

import 'package:flutter/material.dart';

import '../IntroScreen/introscreen.dart';
import '../ScreenView/welcomeScreen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> WelcomeScreen()));});
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
              decoration: BoxDecoration(
                  image:DecorationImage(
                      image:AssetImage('assets/splashlogo/splashlogo.png'),
                      fit: BoxFit.fill
                  )
              )
          ),
        ),
      ),
    );
  }
}
