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
                SettingsPageComponent(
                    icon: Icon(Icons.person),
                    title: 'Account',
                    subTitle: 'Change name, profile picture'),
                SettingsPageComponent(
                    icon: Icon(Icons.camera),
                    title: 'About',
                    subTitle: 'Our mission, meet the team'),
                SettingsPageComponent(
                    icon: Icon(Icons.notifications),
                    title: 'Notifications',
                    subTitle: 'View all your notifications'),
                SettingsPageComponent(
                    icon: Icon(Icons.help),
                    title: 'Help',
                    subTitle: 'Get help with any difficulty you are facing'),
                SettingsPageComponent(
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    title: 'Delete account',
                    subTitle:
                        "Don’t want to use this account anymore? Delete it!"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
