import 'package:easy_life/constants.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

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
            child: Column(),
          ),
        ),
      ),
    );
  }
}
