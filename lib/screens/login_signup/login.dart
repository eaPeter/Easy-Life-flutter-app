import 'package:easy_life/constants.dart';
import 'package:flutter/material.dart';

import '../../widgets/pass_txt_field.dart';
import '../../widgets/txt_field.dart';
import '../learn/learn.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                const TxtField(
                    title: 'Email address', hint: 'Enter your email address'),
                const SizedBox(
                  height: kPadding24,
                ),
                const PassTxtField(
                    title: 'Password', hint: 'Enter your password'),
                Container(
                  margin: const EdgeInsets.only(top: kPadding32),
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                    ),
                    onPressed: () => const Learn(),
                    child: const Text(
                      'Login',
                      style: kTxtBtnStyle,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: kPadding12),
                      child: RichText(
                          text: TextSpan(
                        children: [
                          const TextSpan(
                              text: "Don’t have an account yet? ",
                              style: kTxtOthersStyle),
                          TextSpan(
                              text: "Create an account",
                              style: kTxtSubTopicStyle.copyWith(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w600)),
                        ],
                      )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
