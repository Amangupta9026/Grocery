import 'dart:developer';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nector_grocery/constance/color_constant.dart';

import '../constance/icon_constant.dart';
import '../widget/flushbar.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.COLOR_WHITE,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorConstant.COLOR_WHITE,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      ImgConstants.WHITE_BACKGROUND_SCREEN,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    Positioned(
                      top: 80,
                      left: 0,
                      right: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                              child: Image.asset(
                            ImgConstants.CARROT,
                            height: 50,
                            width: 50,
                          )),
                          Padding(
                              padding: const EdgeInsets.only(
                                  top: 30, left: 20.0, right: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sign Up",
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        ?.copyWith(
                                          color: ColorConstant.COLOR_BLACK,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Enter your credentials to continue",
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15, left: 15.0, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Username",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              color: ColorConstant.COLOR_BLACK,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                      TextFormField(
                        controller: userNameController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(
                              top: 20,
                              bottom: 10), // add padding to adjust text
                          isDense: true,
                          hintText: "Enter your Username",
                          hintStyle: TextStyle(
                            color: ColorConstant.COLOR_BLACK,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Email",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              color: ColorConstant.COLOR_BLACK,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                      TextFormField(
                        onChanged: (val) {
                          validateEmail(val);
                        },
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(
                              top: 20,
                              bottom: 10), // add padding to adjust text
                          isDense: true,
                          hintText: "Enter your Email",
                          hintStyle: TextStyle(
                            color: ColorConstant.COLOR_BLACK,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          _errorMessage,
                          style: const TextStyle(color: Colors.red),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Password",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              color: ColorConstant.COLOR_BLACK,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                      TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(
                              top: 20,
                              bottom: 10), // add padding to adjust text
                          isDense: true,
                          hintText: "Enter your Password",
                          hintStyle: TextStyle(
                            color: ColorConstant.COLOR_BLACK,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      RichText(
                          text: TextSpan(
                        text: "By continuing you agree to our",
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              color: ColorConstant.COLOR_BLACK,
                              fontWeight: FontWeight.w400,
                            ),
                        children: <TextSpan>[
                          TextSpan(
                            text: " Terms of Service",
                            style:
                                Theme.of(context).textTheme.bodyText2?.copyWith(
                                      color: ColorConstant.COLOR_RED,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                          TextSpan(
                            text: " and ",
                            style:
                                Theme.of(context).textTheme.bodyText2?.copyWith(
                                      color: ColorConstant.COLOR_BLACK,
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                          TextSpan(
                            text: "Privacy Policy",
                            style:
                                Theme.of(context).textTheme.bodyText2?.copyWith(
                                      color: ColorConstant.COLOR_RED,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ],
                      )),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      side: const BorderSide(
                                          color: Colors.red)))),
                          onPressed: () {
                            if (!emailController.text.contains("@") ||
                                !emailController.text.contains(".")) {
                              UtilsFlushBar.showDefaultSnackbar(
                                  context, "Please enter valid email");
                            } else if (userNameController.text.isEmpty) {
                              UtilsFlushBar.showDefaultSnackbar(
                                  context, "Please enter username");
                            } else if (passwordController.text.isEmpty) {
                              UtilsFlushBar.showDefaultSnackbar(
                                  context, "Please enter password");
                            } else {
                              UtilsFlushBar.showDefaultSnackbar(
                                  context, "Signup Successful");

                              Future.delayed(const Duration(seconds: 2), () {
                                Navigator.pushNamed(context, "home");
                              });
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, top: 12, bottom: 12),
                            child: Text(
                              "Sign Up",
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(
                                    color: ColorConstant.COLOR_WHITE,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: "Already have an account?",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2
                                    ?.copyWith(
                                      color: ColorConstant.COLOR_BLACK,
                                      fontWeight: FontWeight.w400,
                                    ),
                                children: <TextSpan>[
                                  TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginScreen(),
                                          ),
                                        );
                                        log("print");
                                      },
                                    text: " Sign In",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(
                                          color: ColorConstant.COLOR_RED,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  )
                                ])),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Stack(
                  children: [
                    Image.asset(
                      ImgConstants.WHITE_BACKGROUND_SCREEN,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _errorMessage = '';

  void validateEmail(String val) {
    if (val.isEmpty) {
      setState(() {
        _errorMessage = "Email can not be empty";
      });
    } else if (!EmailValidator.validate(val, true)) {
      setState(() {
        _errorMessage = "Invalid Email Address";
      });
    } else {
      setState(() {
        _errorMessage = "";
      });
    }
  }
}
