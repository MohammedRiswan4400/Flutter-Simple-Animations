import 'package:flutter/material.dart';
import 'dart:math' as math;

class ScreenAnimatoin extends StatefulWidget {
  const ScreenAnimatoin({super.key});

  @override
  State<ScreenAnimatoin> createState() => _ScreenAnimatoinState();
}

class _ScreenAnimatoinState extends State<ScreenAnimatoin>
    with TickerProviderStateMixin {
  AnimationController? animController;
  AnimationController? animController2;
  Animation<double>? animationFirst;
  Animation<double>? animationSecond;

  @override
  void initState() {
    animController =
        AnimationController(duration: const Duration(seconds: 5), vsync: this);
    animController2 =
        AnimationController(duration: const Duration(seconds: 10), vsync: this);
    super.initState();

    final curvedAnimation = CurvedAnimation(
      parent: animController!,
      curve: Curves.bounceIn,
      reverseCurve: Curves.easeInOut,
    );

    final curvedAnimationTwo = CurvedAnimation(
      parent: animController!,
      curve: Curves.bounceIn,
      reverseCurve: Curves.easeInOut,
    );

    animationFirst =
        Tween<double>(begin: 0, end: 2 * math.pi).animate(curvedAnimation)
          ..addListener(
            () {
              setState(() {});
            },
          )
          ..addStatusListener(
            (status) {
              if (status == AnimationStatus.completed) {
                animController!.reverse();
              } else if (status == AnimationStatus.dismissed) {
                animController!.forward();
              }
            },
          );

    animationSecond =
        Tween<double>(begin: 0, end: 2 * math.pi).animate(curvedAnimationTwo)
          ..addListener(
            () {
              setState(() {});
            },
          )
          ..addStatusListener(
            (status) {
              if (status == AnimationStatus.completed) {
                animController2!.reverse();
              } else if (status == AnimationStatus.dismissed) {
                animController2!.forward();
              }
            },
          );

    animController?.forward();
    animController2?.forward();
  }

  @override
  void dispose() {
    animController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform.rotate(
          angle: animationFirst!.value,
          child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(50),
              child: Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Image.asset('assets/images/cat.jpeg')),
                  Positioned(
                    right: 10,
                    bottom: 120,
                    child: Transform.rotate(
                      angle: animationSecond!.value,
                      child: Container(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(200),
                            child: Image.asset(
                              'assets/images/light.jpeg',
                              height: 100,
                            )),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
