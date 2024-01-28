import 'package:flutter/material.dart';

import '../constance/color_constant.dart';
import '../constance/icon_constant.dart';

class OrderDone extends StatelessWidget {
  const OrderDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height * 0.07,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.red)))),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                    child: Text(
                      "Track Order",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: ColorConstant.COLOR_WHITE,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "home");
                },
                child: Text(
                  "Back to home",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: ColorConstant.COLOR_BLACK,
                        fontWeight: FontWeight.w500,
                      ),
                )),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              ImgConstants.WHITE_BACKGROUND_SCREEN,
              fit: BoxFit.cover,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.22,
            ),
            Center(
              child: Image.asset(
                ImgConstants.TICK,
                color: ColorConstant.COLOR_RED,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Your Order has been accepted",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: ColorConstant.COLOR_BLACK,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50),
              child: Text(
                "Your items has been placcd and is on it’s way to being processed",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: ColorConstant.COLOR_GREY,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
