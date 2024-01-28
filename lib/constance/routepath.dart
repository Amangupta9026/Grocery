import 'package:flutter/material.dart';
import 'package:grocery_uikit/login_page/login_screen.dart';
import 'package:grocery_uikit/login_page/map_screen.dart';
import 'package:grocery_uikit/login_page/otp_page.dart';
import 'package:grocery_uikit/login_page/sign_up.dart';
import 'package:grocery_uikit/login_page/splash_screen.dart';

import '../home_screen/home_screen.dart';
import '../login_page/signin.dart';

Route generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case RoutePath.initRoutePath:
      return MaterialPageRoute(builder: (context) => const SplashScreen());

    case RoutePath.signRoutePath:
      return MaterialPageRoute(builder: (context) => const SignInWith());

    case RoutePath.otpRoutePath:
      return MaterialPageRoute(builder: (context) => const OtpScreen());

    case RoutePath.mapRoutePath:
      return MaterialPageRoute(builder: (context) => const MapScreen());

    case RoutePath.loginRoutePath:
      return MaterialPageRoute(builder: (context) => const LoginScreen());

    case RoutePath.signupRoutePath:
      return MaterialPageRoute(builder: (context) => const SignUpScreen());

    case RoutePath.homeScreenRoutePath:
      return MaterialPageRoute(builder: (context) => const HomeScreen());

    default:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
  }
}

class RoutePath {
  static const String initRoutePath = "/";
  static const String loginRoutePath = "login";
  static const String signRoutePath = "signin";
  static const String otpRoutePath = "otpscreen";
  static const String mapRoutePath = "/mapScreen";
  static const String signupRoutePath = "signup";

  static const String homeScreenRoutePath = "home";
}
