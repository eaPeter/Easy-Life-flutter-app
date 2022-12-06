import 'package:easy_life/constants.dart';
import 'package:flutter/material.dart';

import '../../widgets/pass_txt_field.dart';
import '../../widgets/txt_field.dart';
import 'default_auth_button.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
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
              const DefaultAuthButton(btnText: 'Login', navigate: '/learn'),
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
                                  color: kPrimaryColor,
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
