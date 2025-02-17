import 'package:doctor_app/Features/Auth/presentation/login_view.dart';
import 'package:doctor_app/core/utils/app_color.dart';
import 'package:doctor_app/core/utils/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescriptionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
          style: TextStyle(color: AppColor.secondryColor),
          textAlign: TextAlign.center,
        ),
        32.verticalSpace,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: CustomButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, LoginView.routeName);
            },
            text: 'Get Started',
          ),
        ),
        32.verticalSpace,
      ],
    );
  }
}
