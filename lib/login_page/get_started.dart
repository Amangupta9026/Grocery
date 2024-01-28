import 'package:flutter/material.dart';
import 'package:grocery_uikit/constance/icon_constant.dart';

import '../constance/color_constant.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          ImgConstants.GET_STARTED,
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 50, left: 25.0, right: 25, bottom: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    ImgConstants.CARROT,
                    height: 45,
                    width: 45,
                    color: ColorConstant.COLOR_WHITE,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome to Our Store",
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: ColorConstant.COLOR_WHITE,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Ger your groceries in as fast as one hour",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: ColorConstant.COLOR_WHITE,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: const BorderSide(color: Colors.red)))),
                      onPressed: () {
                        Navigator.pushNamed(context, "signin");
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                        child: Text(
                          "Get Started",
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: ColorConstant.COLOR_BLACK,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
