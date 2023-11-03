import 'dart:async';

import 'package:flutter/material.dart';
import 'package:madroid_status_saver/utils/color_constant.dart';
import 'package:madroid_status_saver/utils/image_constant.dart';
import 'package:madroid_status_saver/view/home_screen/home_screen.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    requestStoragePremission();
    Timer(
      Duration(
        milliseconds: 3000,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      ),
    );
    super.initState();
  }

  Future<void> requestStoragePremission() async {
    var status = await Permission.storage.status;
    if (!status.isGranted) await Permission.storage.request();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgColor,
      body: Center(
        child: Image.asset(
          ImageConstant.appLogo,
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
