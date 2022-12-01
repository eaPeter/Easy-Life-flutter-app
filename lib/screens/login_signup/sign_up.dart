import 'package:easy_life/constants.dart';
import 'package:easy_life/widgets/pass_txt_field.dart';
import 'package:easy_life/widgets/txt_field.dart';
import 'package:flutter/material.dart';

import 'defaultAuthButton.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  final _fNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passController = TextEditingController();
  final dropDownItems = ['Computer Science', 'Business', 'Agriculture'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              Image.asset(
                'assets/images/logo.png',
                width: 80,
              ),
              const SizedBox(
                height: kPadding20,
              ),
              RichText(
                  text: const TextSpan(
                children: [
                  TextSpan(
                      text: "Create an account\n", style: kTxtHeadingMainStyle),
                  TextSpan(
                      text: "Sign up if you don’t have an account already",
                      style: kTxtSubTopicStyle),
                ],
              )),
              const SizedBox(
                height: kPadding20,
              ),
              TxtField(
                  title: 'Full name',
                  hint: 'Enter full name',
                  txtController: _fNameController),
              TxtField(
                  title: 'Email Address',
                  hint: 'Enter email address',
                  txtController: _emailController),
              TxtField(
                  title: 'Phone Number',
                  hint: 'Enter phone number',
                  txtController: _phoneController),
              PassTxtField(
                  title: 'Password',
                  hint: 'Enter password',
                  txtController: _passController),
              const DefaultAuthButton(btnText: 'Sign up', navigate: '/login'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: kPadding12),
                    child: Row(
                      children: [
                        const Text("Already have an account? ",
                            style: kTxtOthersStyle),
                        TextButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/login'),
                          child: Text("Log into your account",
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
