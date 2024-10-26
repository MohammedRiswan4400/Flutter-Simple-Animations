import 'dart:developer';
import 'package:focus_web/view/aniation_pages/screen_animatoin.dart';
import 'package:focus_web/view/home/screen_home.dart';
import 'package:get/get.dart';

class AppRoutes {
  //// -- Goto ScreenHome -- \\\\
  static goFromSplashScreen() async {
    log('message');
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
    ).then(
      (value) {
        log('message2');
        Get.offAll(const ScreenHome());
      },
    );
  }

  //// -- Goto ScreenAnimation -- \\\\
  static gotoAnimationScreen() async {
    log('message2');
    Get.to(const ScreenAnimatoin());
  }
}
