import 'package:doctor_app/Features/splash/presentation/widgets/build_background.dart';
import 'package:doctor_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    
    
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double imageWidth = size.width * 0.6;

    return Scaffold(
      body: Stack(
        children: [
          buildBackgroundImage(
            top: 0,
            right: 0,
            assetPath: Assets.hierarchySplash1,
            opacity: 0.1,
            width: imageWidth,
          ),
          buildBackgroundImage(
            bottom: 1,
            left: 0,
            assetPath: Assets.hierarchySplash2,
            opacity: 0.2,
            width: imageWidth,
          ),
          Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(
              Assets.logo,
              width: size.width * 0.6,
            ),
          ),
        ],
      ),
    );
  }
}
