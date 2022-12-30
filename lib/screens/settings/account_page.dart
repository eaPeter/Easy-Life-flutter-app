import 'package:easy_life/constants.dart';
import 'package:flutter/material.dart';

import '../../components/txt_field.dart';

class AccountPage extends StatelessWidget {
  AccountPage({super.key});

  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBackground,
      appBar: AppBar(
        title: const Text('Account', style: kTxtHeadingMainStyle),
        centerTitle: true,
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPadding20),
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/account'),
                  child: Text(
                    'Save',
                    style: kTxtTopicStyle.copyWith(color: kColorBlue),
                  ),
                ),
              ),
            ],
          )
        ],
        backgroundColor: kColorBackground,
        elevation: 0,
        iconTheme: const IconThemeData(color: kColorTitleText),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/profile_pic1.jpg'),
                    ),
                    shape: BoxShape.circle,
                    border: Border.all(color: kColorTextLight),
                  ),
                ),
                const SizedBox(height: kPadding12),
                Text(
                  'Change profile picture',
                  style: kTxtSubTopicStyle.copyWith(color: kColorBlue),
                ),
                const SizedBox(height: kPadding32),
                TxtField(
                  title: 'Full name',
                  hint: 'Enter your email address',
                  txtController: _emailController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
