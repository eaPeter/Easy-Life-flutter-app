import 'package:easy_life/constants.dart';
import 'package:flutter/material.dart';

import '../../widgets/pass_txt_field.dart';
import '../../widgets/txt_field.dart';

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
                ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      width: double.infinity,
                      color: kPrimaryColor,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
