import 'package:easy_life/components/settings_page_component.dart';
import 'package:easy_life/constants.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBackground,
      appBar: AppBar(
        title: const Text('Settings', style: kTxtHeadingMainStyle),
        centerTitle: true,
        backgroundColor: kColorBackground,
        elevation: 0,
        iconTheme: const IconThemeData(color: kColorTitleText),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding20),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                SizedBox(height: kPadding20),
                SettingsPageComponent(
                    icon: Icon(Icons.person),
                    title: 'Account',
                    subTitle: 'Change name, profile picture'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
