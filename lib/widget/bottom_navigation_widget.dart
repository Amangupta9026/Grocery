import 'package:flutter/material.dart';

class BottomAppBarWidget extends StatelessWidget {
  final String? assetImage;
  final String? text;
  final VoidCallback? onTap;
  final Color? color;

  const BottomAppBarWidget(
      {super.key, this.assetImage, this.text, this.onTap, this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(assetImage!, height: 22.0, width: 22.0, color: color),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            text!,
            style: TextStyle(
                color: color, fontSize: 12.0, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
