import 'package:flutter/material.dart';
import 'package:grocery_uikit/constance/icon_constant.dart';

import '../constance/color_constant.dart';
import '../widget/flushbar.dart';

class SignInWith extends StatefulWidget {
  const SignInWith({super.key});

  @override
  State<SignInWith> createState() => _SignInWithState();
}

class _SignInWithState extends State<SignInWith> {
  TextEditingController mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.COLOR_WHITE,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              ImgConstants.SIGN_IN_WITH,
              fit: BoxFit.cover,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 50, left: 25.0, right: 25, bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Get your groceries with nectar",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: ColorConstant.COLOR_BLACK,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),

                  // Text Field
                  TextFormField(
                    //  maxLength: 10,
                    controller: mobileController,
                    keyboardType: TextInputType.number,
                    validator: (mobileNum) {
                      if (mobileNum!.length < 10) {
                        return "Valid mobile number is required";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      prefix: Text(
                        "+91",
                      ),

                      contentPadding: EdgeInsets.only(
                          left: 40,
                          right: 40,
                          top: 20), // add padding to adjust text
                      isDense: true,
                      hintText: "Enter Mobile Number",

                      prefixIcon: Padding(
                        padding: EdgeInsets.only(
                            top: 15,
                            right: 0,
                            left: 0), // add padding to adjust icon
                        child: Icon(Icons.phone_android),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  side: const BorderSide(color: Colors.red)))),
                      onPressed: () {
                        if (mobileController.text.length == 10) {
                          Navigator.pushNamed(context, "otpscreen");
                        } else if (mobileController.text.length < 10) {
                          UtilsFlushBar.showDefaultSnackbar(
                              context, "Please enter valid mobile number");
                        } else if (mobileController.text.isEmpty) {
                          UtilsFlushBar.showDefaultSnackbar(
                              context, "Please enter mobile number");
                        } else if (mobileController.text.length > 10) {
                          UtilsFlushBar.showDefaultSnackbar(
                              context, "Please enter valid mobile number");
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10),
                        child: Text(
                          "Submit",
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
                    height: 20,
                  ),

                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        side: const BorderSide(
                                            color: Colors.red)))),
                            onPressed: () {
                              Navigator.pushNamed(context, "login");
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 12.0, bottom: 12),
                              child: Text(
                                "SignIn",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      color: ColorConstant.COLOR_BLACK,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        side: const BorderSide(
                                            color: Colors.red)))),
                            onPressed: () {
                              Navigator.pushNamed(context, "signup");
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 12.0, bottom: 12),
                              child: Text(
                                "SignUp",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      color: ColorConstant.COLOR_BLACK,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  Center(
                    child: Text(
                      "Or connect with social media",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: ColorConstant.COLOR_BLACK,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side:
                                        const BorderSide(color: Colors.red)))),
                    onPressed: () {
                      Navigator.pushNamed(context, "home");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, top: 11, bottom: 11),
                      child: Row(
                        children: [
                          Image.asset(
                            ImgConstants.GOOGLE,
                            height: 25,
                            width: 25,
                            color: ColorConstant.COLOR_BLACK,
                          ),
                          const Spacer(),
                          Text(
                            "Continue with Google",
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: ColorConstant.COLOR_BLACK,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side:
                                        const BorderSide(color: Colors.red)))),
                    onPressed: () {
                      Navigator.pushNamed(context, "home");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, top: 11, bottom: 11),
                      child: Row(
                        children: [
                          Image.asset(
                            ImgConstants.FACEBOOK,
                            height: 25,
                            width: 25,
                            color: ColorConstant.COLOR_BLACK,
                          ),
                          const Spacer(),
                          Text(
                            "Continue with Facebook",
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: ColorConstant.COLOR_BLACK,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
