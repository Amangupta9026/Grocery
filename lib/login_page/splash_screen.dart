import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nector_grocery/constance/color_constant.dart';
import 'package:nector_grocery/constance/icon_constant.dart';
import 'package:nector_grocery/login_page/get_started.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
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
