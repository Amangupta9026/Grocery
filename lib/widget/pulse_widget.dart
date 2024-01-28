import 'package:flutter/material.dart';

import '../constance/color_constant.dart';

class PulseWidget extends StatelessWidget {
  final String? image;
  final String? title;
  final Color? color;
  const PulseWidget({super.key, this.image, this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Image.asset(
                image!,

                // ImgConstants.PULSE,
                height: 60,
                width: 60,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                title!,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: ColorConstant.COLOR_BLACK,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
