import 'package:doctor_app/Features/Splash/presentation/splash_view.dart';
import 'package:doctor_app/Features/on_boarding/presentation/on_boarding_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(
        builder: (context) => const SplashView(),
      );

    case OnBoardingView.routeName:
      return MaterialPageRoute(
        builder: (context) => const OnBoardingView(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(
            child: Text('This Page Is Not Found'),
          ),
        ),
      );
  }
}
