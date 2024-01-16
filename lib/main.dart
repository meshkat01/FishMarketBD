import 'package:fish_market_bd/splashscreen/splash_screen.dart';
import 'package:fish_market_bd/utils/mycolors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fish Market BD',
     theme: ThemeData(
       colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primaryColors),
       useMaterial3: true,
     ),
     home: SplashScreen(),
    );
  }
}
