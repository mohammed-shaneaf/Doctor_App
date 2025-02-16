import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget buildBackgroundImage({
  double? top,
  double? bottom,
  double? left,
  double? right,
  required String assetPath,
  required double opacity,
  required double width,
}) {
  return Positioned(
    top: top,
    bottom: bottom,
    left: left,
    right: right,
    child: Opacity(
      opacity: opacity,
      child: SvgPicture.asset(
        assetPath,
        width: width,
      ),
    ),
  );
}
