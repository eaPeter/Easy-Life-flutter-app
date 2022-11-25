import 'package:flutter/material.dart';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import '../login_signup/login.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/images/logo.png',
      nextScreen: const Login(),
      splashTransition: SplashTransition.slideTransition,
      duration: 3000,
      splashIconSize: 140,
    );
  }
}
