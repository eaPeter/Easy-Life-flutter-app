import 'package:easy_life/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding20),
            child: Column(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
