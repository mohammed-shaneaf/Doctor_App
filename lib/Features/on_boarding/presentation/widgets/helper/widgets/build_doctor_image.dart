import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildDoctorImage() {
  return Stack(
    children: [
      ShaderMask(
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.transparent],
            stops: [0.3, 1.0],
          ).createShader(bounds);
        },
        blendMode: BlendMode.dstIn,
        child: Image.asset(Assets.doctorOnBoarding),
      ),
      Positioned(
        bottom: 10,
        left: 20.w,
        right: 20.w,
        child: Text(
          'Best Doctor\nAppointment App',
          textAlign: TextAlign.center,
          style: AppStyles.textStyle32WithPrimaryColor,
        ),
      ),
    ],
  );
}
