import 'package:doctor_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget buildLogo(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        width: MediaQuery.of(context).size.width * .5,
        child: SvgPicture.asset(Assets.logo),
      ),
    ],
  );
}
