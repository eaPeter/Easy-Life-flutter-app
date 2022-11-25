import 'screens/learn/learn.dart';
import 'package:flutter/material.dart';

//import screens
import 'screens/splash/splash.dart';
import 'screens/login_signup/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        '/login': (context) => const Login(),
        'learn': (context) => const Learn(),
      },
    );
  }
}
