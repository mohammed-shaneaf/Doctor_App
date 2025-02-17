import 'package:doctor_app/core/utils/app_color.dart';
import 'package:doctor_app/core/utils/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          22.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: SvgPicture.asset(Assets.logo),
              ),
            ],
          ),

          40.verticalSpace,

          /// صورة الطبيب مع تأثير التلاشي
          Stack(
            children: [
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black,
                      Colors.transparent,
                    ],
                    stops: [0.3, 1.0], // * Gradient start from 70% to down
                  ).createShader(bounds);
                },
                blendMode: BlendMode.dstIn, // * Keep on the top part, start hiding the down part
                child: Image.asset(
                  Assets.doctorOnBoarding,
                ),
              ),
              Positioned(
                bottom: 10,
                left: 20.w, // Adjust to align the text properly
                right: 20.w, // Adjust to align the text properly
                child: Text(
                  'Best Doctor\nAppointment App',
                  textAlign: TextAlign.center,
                  style: AppStyles.textStyle32WithPrimaryColor,
                ),
              ),
            ],
          ),
          18.verticalSpace,
          Text(
            'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
            style: TextStyle(color: AppColor.secondryColor),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
