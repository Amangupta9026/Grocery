import 'package:flutter/material.dart';

import '../constance/color_constant.dart';

class FavioriteWidget extends StatelessWidget {
  final String? image;
  final String? title;
  final String? subtitle;
  final String? price;

  const FavioriteWidget(
      {super.key, this.image, this.title, this.subtitle, this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    image!,
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 2,
            ),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          title!,
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: ColorConstant.COLOR_BLACK,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Text(
                            price!,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: ColorConstant.COLOR_BLACK,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    subtitle!,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: ColorConstant.COLOR_GREY,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          thickness: 0.35,
          color: ColorConstant.COLOR_BLACK,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
