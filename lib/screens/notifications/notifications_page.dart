import 'package:easy_life/constants.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBackground,
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: kTxtHeadingLargeStyle,
        ),
        centerTitle: true,
        backgroundColor: kColorBackground,
        elevation: 0,
        iconTheme: const IconThemeData(color: kColorTitleText),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPadding20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/notifications/no_notifications.png',
                height: 300,
                width: 300,
              ),
              const SizedBox(height: kPadding24),
              const Text('No notifications yet!', style: kTxtHeadingMainStyle),
              const Text('Retry later to check for any new notifications',
                  style: kTxtSubTopicStyle),
            ],
          ),
        ),
      )),
    );
  }
}
