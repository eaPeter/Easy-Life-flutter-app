import 'package:easy_life/constants.dart';
import 'package:flutter/material.dart';

import '../../widgets/pass_txt_field.dart';
import '../../widgets/txt_field.dart';

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
              const SizedBox(
                height: kPadding24,
              ),
              PassTxtField(
                title: 'Password',
                hint: 'Enter your password',
                txtController: _passController,
              ),
              Container(
                margin: const EdgeInsets.only(top: kPadding32),
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                  ),
                  onPressed: () => Navigator.pushNamed(context, '/learn'),
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
