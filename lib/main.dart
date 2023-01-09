import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

//import screens
import 'screens/notifications/notifications_page.dart';
import 'screens/splash/splash_page.dart';
import 'screens/login_signup/login_page.dart';
import 'screens/login_signup/sign_up_page.dart';
import 'package:easy_life/screens/learn/detailed_learn_page.dart';
import 'package:easy_life/screens/see_all.dart';
import 'screens/drawer.dart';
import 'screens/learn/learn_page.dart';
import 'package:easy_life/screens/apply/apply_page.dart';
import 'package:easy_life/screens/homepage.dart';
import 'package:easy_life/screens/learn/course_learn.dart';
import 'package:easy_life/screens/settings/account_page.dart';
import 'package:easy_life/screens/settings/settings_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
        '/': (context) => const Homepage(),

        // '/': (context) => const Splash(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
        // '/home': (context) => const Homepage(),
        // '/learn': (context) => const LearnPage(),
        // '/apply': (context) => const ApplyPage(),
        '/detailed_learn': (context) => DetailedLearnPage(),
        '/course_learn': (context) => const CourseLearn(),
        '/drawer_page': (context) => const DrawerPage(),
        '/notifications': (context) => const Notifications(),
        '/see_all': (context) => SeeAll(),
        '/settings': (context) => const SettingsPage(),
        '/account': (context) => const AccountPage(),
      },
    );
  }
}
