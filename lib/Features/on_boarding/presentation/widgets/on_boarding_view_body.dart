import 'package:doctor_app/Features/on_boarding/presentation/widgets/helper/widgets/build_description.dart';
import 'package:doctor_app/Features/on_boarding/presentation/widgets/helper/widgets/build_doctor_image.dart';
import 'package:doctor_app/Features/on_boarding/presentation/widgets/helper/widgets/build_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          22.verticalSpace,
          buildLogo(context),
          40.verticalSpace,
          buildDoctorImage(),
          18.verticalSpace,
          buildDescription(),
        ],
      ),
    );
  }
}
