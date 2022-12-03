import 'screens/learn/learndrawer.dart';
import 'screens/learn/learn.dart';
import 'package:flutter/material.dart';

//import screens
import 'screens/notifications/notifications.dart';
import 'screens/splash/splash.dart';
import 'screens/login_signup/login.dart';
import 'screens/login_signup/sign_up.dart';

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
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
        '/learn': (context) => const Learn(),
        '/drawer': (context) => const LearnDrawer(),
        '/notifications': (context) => const Notifications(),
      },
    );
  }
}
