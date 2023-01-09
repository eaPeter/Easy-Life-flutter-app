import 'package:easy_life/components/toast.dart';
import 'package:easy_life/constants.dart';
import 'package:easy_life/screens/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../components/pass_txt_field.dart';
import '../../components/txt_field.dart';
import 'default_auth_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();

  final _passController = TextEditingController();

  Future<bool> signIn(String email, String password) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then((value) {
      return true;
    });

    return false;
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 120,
              ),
              Image.asset(
                'assets/images/logo.png',
                width: 162,
              ),
              const SizedBox(
                height: 48,
              ),
              RichText(
                  text: const TextSpan(
                children: [
                  TextSpan(
                      text: "Login to your account\n",
                      style: kTxtHeadingMainStyle),
                  TextSpan(
                      text: "Enter into your already created account",
                      style: kTxtSubTopicStyle),
                ],
              )),
              const SizedBox(
                height: kPadding24,
              ),
              TxtField(
                title: 'Email address',
                hint: 'Enter your email address',
                txtController: _emailController,
              ),
              PassTxtField(
                title: 'Password',
                hint: 'Enter your password',
                txtController: _passController,
              ),
              DefaultAuthButton(
                  btnText: 'Login',
                  navigate: () async {
                    String email = _emailController.text.trim();
                    String pass = _passController.text.trim();

                    if (email.isEmpty) {
                      return showToast('Enter email address');
                    }

                    if (pass.isEmpty) {
                      return showToast('Enter password');
                    }

                    bool isloggedIn = await signIn(email, pass);
                    if (isloggedIn) {
                      //next screen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Homepage(),
                        ),
                      );
                    } else {
                      showToast("Login failed");
                    }
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: kPadding12),
                    child: Row(
                      children: [
                        const Text("Don’t have an account yet? ",
                            style: kTxtOthersStyle),
                        TextButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/signup'),
                          child: Text("Create an account",
                              style: kTxtSubTopicStyle.copyWith(
                                  color: kColorPrimary,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
