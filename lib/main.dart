import 'package:flutter/material.dart';
import 'package:madroid_status_saver/view/splash_screen/splash_screen.dart';

void main() => runApp(Madroid());

class Madroid extends StatelessWidget {
  Madroid({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
