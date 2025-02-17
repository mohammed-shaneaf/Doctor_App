import 'package:doctor_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static const String primaryColor = '#247CFF';

  static TextStyle textStyle32WithPrimaryColor = TextStyle(
    color: AppColor.primaryColor,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  static TextStyle text24 = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
}
