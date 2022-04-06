

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../constance/color_constant.dart';

class UtilsFlushBar {
  static void showDefaultSnackbar(BuildContext context, content) {
    Flushbar(
      message: content,
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: ColorConstant.COLOR_RED,
      //  backgroundColor: Colors.purple,
      duration: const Duration(seconds: 2),
    ).show(context);
  }
}
