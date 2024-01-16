import 'dart:async';

import 'package:fish_market_bd/utils/config.dart';
import 'package:fish_market_bd/utils/mycolors.dart';
import 'package:fish_market_bd/views/welcomescreen/welcome_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(
      seconds: 3
    ), () { 
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => WelcomeScreen()),
              (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColors,
      body: Center(
        child: Text(AppConfig.appName,
        style: TextStyle(
          fontSize: 25.0,fontWeight: FontWeight.bold, color: MyColors.whiteColors,
        ),
        ),
      ),

    );
  }
}
