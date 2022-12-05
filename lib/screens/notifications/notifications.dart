import 'package:easy_life/constants.dart';
import 'package:easy_life/widgets/back_btn.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPadding20),
        child: SizedBox(
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: kPadding16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  BackBtn(navigate: '/learn'),
                  Text(
                    'Notifications',
                    style: kTxtHeadingLargeStyle,
                  ),
                  SizedBox(width: 45),
                ],
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/notifications/no_notifications.png',
                      height: 300,
                      width: 300,
                    ),
                    const SizedBox(height: kPadding24),
                    const Text('No notifications yet!',
                        style: kTxtHeadingMainStyle),
                    const Text('Retry later to check for any new notifications',
                        style: kTxtSubTopicStyle),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
