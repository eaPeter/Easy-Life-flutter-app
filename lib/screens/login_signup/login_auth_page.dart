import 'package:easy_life/screens/homepage.dart';
import 'package:easy_life/screens/login_signup/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginAuthPage extends StatelessWidget {
  const LoginAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return const Homepage();
          } else {
            return const Login();
          }
        }),
      ),
    );
  }
}
