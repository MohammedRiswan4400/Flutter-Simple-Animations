import 'package:flutter/material.dart';
import 'package:focus_web/view/splash/screen_splash.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Focus Web',
      home: ScreenSplash(),
    );
  }
}
