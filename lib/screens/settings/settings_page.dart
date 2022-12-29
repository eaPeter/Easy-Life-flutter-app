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
              children: [
                const SizedBox(height: kPadding20),
                Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.person),
                        const SizedBox(width: kPadding12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Account',
                              style: kTxtTopicStyle,
                            ),
                            SizedBox(height: kPadding4),
                            Text(
                              'Change name, profile picture',
                              style: kTxtOthersStyle,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: kPadding16),
                    const Divider(thickness: 2),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
