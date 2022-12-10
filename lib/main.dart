import 'package:flutter/material.dart';

//import screens
import 'screens/notifications/notifications_page.dart';
import 'screens/splash/splash_page.dart';
import 'screens/login_signup/login_page.dart';
import 'screens/login_signup/sign_up_page.dart';
import 'package:easy_life/screens/learn/detailed_learn_page.dart';
import 'package:easy_life/screens/see_all.dart';
import 'screens/drawer.dart';
import 'screens/learn/learn_page.dart';

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
        '/': (context) => const Learn(),
        // '/': (context) => const Splash(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
        '/learn': (context) => const Learn(),
        '/detailed_learn': (context) => const DetailedLearnPage(),
        '/drawer_page': (context) => const DrawerPage(),
        '/notifications': (context) => const Notifications(),
        '/see_all': (context) => const SeeAll(),
      },
    );
  }
}
