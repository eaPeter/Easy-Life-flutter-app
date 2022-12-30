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
                    ListTile(
                      onTap: () => Navigator.pushNamed(context, '/account'),
                      leading: const Icon(
                        Icons.person,
                        color: kColorTitleText,
                      ),
                      title: const Text(
                        'Account',
                        style: kTxtTopicStyle,
                      ),
                      subtitle: const Text(
                        'Change name, profile picture',
                        style: kTxtOthersStyle,
                      ),
                      horizontalTitleGap: 1,
                    ),
                    const Divider(thickness: 1),
                    ListTile(
                      onTap: () => Navigator.pushNamed(context, '/'),
                      leading: const Icon(
                        Icons.camera,
                        color: kColorTitleText,
                      ),
                      title: const Text(
                        'About',
                        style: kTxtTopicStyle,
                      ),
                      subtitle: const Text(
                        'Our mission, meet the team',
                        style: kTxtOthersStyle,
                      ),
                      horizontalTitleGap: 1,
                    ),
                    const Divider(thickness: 1),
                    ListTile(
                      onTap: () =>
                          Navigator.pushNamed(context, '/notifications'),
                      leading: const Icon(
                        Icons.notifications,
                        color: kColorTitleText,
                      ),
                      title: const Text(
                        'Notifications',
                        style: kTxtTopicStyle,
                      ),
                      subtitle: const Text(
                        'View all your notifications',
                        style: kTxtOthersStyle,
                      ),
                      horizontalTitleGap: 1,
                    ),
                    const Divider(thickness: 1),
                    ListTile(
                      onTap: () => Navigator.pushNamed(context, '/'),
                      leading: const Icon(
                        Icons.camera,
                        color: kColorTitleText,
                      ),
                      title: const Text(
                        'Help',
                        style: kTxtTopicStyle,
                      ),
                      subtitle: const Text(
                        'Get help with any difficulty you are facing',
                        style: kTxtOthersStyle,
                      ),
                      horizontalTitleGap: 1,
                    ),
                    const Divider(thickness: 1),
                    ListTile(
                      onTap: () => Navigator.pushNamed(context, '/'),
                      leading: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      title: Text(
                        'Delete',
                        style: kTxtTopicStyle.copyWith(color: Colors.red),
                      ),
                      subtitle: Text(
                        "Don’t want to use this account anymore? Delete it!",
                        style: kTxtOthersStyle.copyWith(
                            color: Colors.red.withOpacity(0.6)),
                      ),
                      horizontalTitleGap: 1,
                    ),
                    const Divider(thickness: 1),
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
