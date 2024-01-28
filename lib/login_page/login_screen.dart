import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grocery_uikit/constance/color_constant.dart';
import 'package:grocery_uikit/login_page/sign_up.dart';

import '../constance/icon_constant.dart';
import '../widget/flushbar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String _errorMessage = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                "Loging",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                      color: ColorConstant.COLOR_BLACK,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Enter your emails and password",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
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
              padding: const EdgeInsets.only(top: 15, left: 15.0, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
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
                          top: 20, bottom: 10), // add padding to adjust text
                      isDense: true,
                      hintText: "Enter your Email-id",
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
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: ColorConstant.COLOR_BLACK,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(
                          top: 20, bottom: 10), // add padding to adjust text
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
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password ?",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: ColorConstant.COLOR_BLACK,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ),
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
                                  side: const BorderSide(color: Colors.red)))),
                      onPressed: () {
                        if (!emailController.text.contains("@") ||
                            !emailController.text.contains(".")) {
                          UtilsFlushBar.showDefaultSnackbar(
                              context, "Please enter valid email");
                        } else if (emailController.text.isNotEmpty &&
                            passwordController.text.isNotEmpty) {
                          UtilsFlushBar.showDefaultSnackbar(
                              context, "Login Successfully");
                          Future.delayed(const Duration(seconds: 2), () {
                            Navigator.pushNamed(context, "home");
                          });
                        } else if (emailController.text.isNotEmpty &&
                            passwordController.text.isEmpty) {
                          UtilsFlushBar.showDefaultSnackbar(
                              context, "Please enter password");
                        } else if (emailController.text.isEmpty &&
                            passwordController.text.isNotEmpty) {
                          UtilsFlushBar.showDefaultSnackbar(
                              context, "Please enter email");
                        } else {
                          UtilsFlushBar.showDefaultSnackbar(
                              context, "Please enter email and password");
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 12, bottom: 12),
                        child: Text(
                          "Log In",
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: ColorConstant.COLOR_BLACK,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: "Don't have an account? ",
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: ColorConstant.COLOR_BLACK,
                                  fontWeight: FontWeight.w400,
                                ),
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignUpScreen(),
                                  ),
                                );
                              },
                            text: "Sign Up",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: ColorConstant.COLOR_RED,
                                  fontWeight: FontWeight.w400,
                                ),
                          ),
                        ],
                      ),
                    ),
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
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

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
