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
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height - 140,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SettingsPageComponent(
                        icon: Icon(Icons.person),
                        title: 'Account',
                        subTitle: 'Change name, profile picture',
                        navigate: '/account'),
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
                        subTitle:
                            'Get help with any difficulty you are facing'),
                    SettingsPageComponent(
                        color: Colors.red,
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                        title: 'Delete account',
                        subTitle:
                            "Don’t want to use this account anymore? Delete it!"),
                    ListTile(
                      onTap: () => Navigator.pushNamed(context, '/'),
                      leading: Icon(
                        Icons.person,
                        color: kColorTitleText,
                      ),
                      title: Text(
                        'Account',
                        style: kTxtTopicStyle,
                      ),
                      subtitle: Text(
                        'Change name, profile picture',
                        style: kTxtOthersStyle,
                      ),
                      horizontalTitleGap: 1,
                    ),
                    ListTile(
                      onTap: () => Navigator.pushNamed(context, '/'),
                      leading: Icon(
                        Icons.camera,
                        color: kColorTitleText,
                      ),
                      title: Text(
                        'About',
                        style: kTxtTopicStyle,
                      ),
                      subtitle: Text(
                        'Our mission, meet the team',
                        style: kTxtOthersStyle,
                      ),
                      horizontalTitleGap: 1,
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 52,
                  margin: const EdgeInsets.symmetric(horizontal: kPadding20),
                  decoration: BoxDecoration(
                    border: Border.all(color: kColorTitleText, width: 2),
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(kColorBackground),
                    ),
                    onPressed: () => Navigator.pushNamed(context, '/'),
                    child: Text(
                      'Log out',
                      style: kTxtBtnStyle.copyWith(color: kColorTitleText),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
