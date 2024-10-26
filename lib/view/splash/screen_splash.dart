import 'package:flutter/material.dart';
import 'package:focus_web/rootes/rootes.dart';
import 'package:focus_web/view/home/screen_home.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    AppRoutes.goFromSplashScreen();
    return Scaffold();
  }
}
