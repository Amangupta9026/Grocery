import 'package:flutter/material.dart';

import '../constance/color_constant.dart';
import '../constance/icon_constant.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.COLOR_WHITE,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorConstant.COLOR_WHITE,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      ImgConstants.WHITE_BACKGROUND_SCREEN,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.22,
                    ),
                    Positioned(
                      top: 50,
                      left: 20,
                      right: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 0,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Icon(
                                    Icons.arrow_back_ios,
                                    size: 25,
                                    color: ColorConstant.COLOR_BLACK,
                                  ),
                                ),
                              ),
                              // const SizedBox(
                              //   width: 10,
                              // ),
                              Expanded(
                                flex: 1,
                                child: Image.asset(
                                  ImgConstants.CARROT,
                                  height: 45,
                                  width: 45,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Enter your 4-digit code",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  color: ColorConstant.COLOR_BLACK,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    maxLength: 4,
                    controller: otpController,
                    keyboardType: TextInputType.number,
                    validator: (mobileNum) {
                      if (mobileNum!.length < 4) {
                        return "Valid otp is required";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(
                          top: 20, bottom: 10), // add padding to adjust text
                      isDense: true,
                      hintText: "Enter your 4-digit code",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Resend code",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                  color: ColorConstant.COLOR_RED,
                                  fontWeight: FontWeight.w600,
                                ),
                          )),
                      InkWell(
                        onTap: () {
                          // if (otpController.text.length == 4) {
                          Navigator.pushNamed(context, "/mapScreen");
                          // } else if (otpController.text.isEmpty) {
                          //   UtilsFlushBar.showDefaultSnackbar(
                          //       context, "Please enter otp");
                          // } else if (otpController.text.length < 4) {
                          //   UtilsFlushBar.showDefaultSnackbar(
                          //       context, "Please enter coreect otp");
                          // }
                        },
                        child: const CircleAvatar(
                          backgroundColor: ColorConstant.COLOR_RED,
                          radius: 20,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: ColorConstant.COLOR_WHITE,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
