import 'package:flutter/material.dart';
import 'package:focus_web/rootes/rootes.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                AppRoutes.gotoAnimationScreen();
              },
              child: const Text('Go to Animation Screen'),
            ),
          ),
        ],
      ),
    );
  }
}
