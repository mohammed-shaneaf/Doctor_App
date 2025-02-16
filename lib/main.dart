import 'package:doctor_app/Features/Splash/presentation/splash_view.dart';
import 'package:doctor_app/core/utils/helper/RouteApp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DoctorApp());
}

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
