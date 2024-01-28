import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery_uikit/constance/color_constant.dart';
import 'package:grocery_uikit/constance/icon_constant.dart';
import 'package:grocery_uikit/login_page/get_started.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _loadNextScreen();
    super.initState();
  }

  _loadNextScreen() async {
    if (!mounted) return;
    Timer(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil<dynamic>(
        context,
        MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const GetStarted(),
        ),
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.COLOR_RED,
      child: SafeArea(
        child: Material(
          child: Scaffold(
            body: Image.asset(ImgConstants.SPLASH,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
