import 'package:flutter/material.dart';

import 'package:easy_life/screens/onboarding/onboarding.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/images/logo.png',
      nextScreen: const Onboarding(),
      splashTransition: SplashTransition.slideTransition,
      duration: 3000,
      splashIconSize: 140,
    );
  }
}
