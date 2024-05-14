import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cards/test.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Flash extends StatelessWidget {
  const Flash({super. key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      
      splash: Center(
        child: Lottie.asset('assets/second.json',),
      ),
       nextScreen: const Test(),
      animationDuration: Durations.short1,
      backgroundColor: Colors.white,
      
      splashIconSize: 200,
    );
  }
}
//lottie: ^3.1.0
//animated_splash_screen: ^1.3.0