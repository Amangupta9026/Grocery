import 'package:flutter/material.dart';

import '../constance/color_constant.dart';
import '../constance/icon_constant.dart';

class ExclusiveOffer extends StatelessWidget {
  final String? image;
  final String? title;
  final String? subtitle;
  final String? price;
  final Color? color;
  final Color? bordercolor;
  const ExclusiveOffer(
      {super.key,
      this.image,
      this.title,
      this.subtitle,
      this.price,
      this.color,
      this.bordercolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color ?? ColorConstant.COLOR_WHITE,
          border: Border.all(
              color: bordercolor ?? ColorConstant.COLOR_GREY, width: 1)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 0, 0, 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Image.asset(
              image!,
              height: 70,
              width: 70,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              title!,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: ColorConstant.COLOR_BLACK,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          if (price == null) ...{
            const SizedBox(
              height: 25,
            ),
          },
          const SizedBox(
            height: 6,
          ),
          if (subtitle != null) ...{
            Center(
              child: Text(
                subtitle!,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: ColorConstant.COLOR_GREY,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          },
          const SizedBox(
            height: 10,
          ),
          if (price != null) ...{
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 6.0, right: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price!,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: ColorConstant.COLOR_BLACK,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Image.asset(
                        ImgConstants.ADD,
                        height: 27,
                        width: 27,
                      ),
                    ],
                  ),
                ),
                // const SizedBox(height: 10),
              ],
            )
          },
        ]),
      ),
    );
  }
}
