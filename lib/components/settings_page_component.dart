import 'package:flutter/material.dart';

import '../constants.dart';

class SettingsPageComponent extends StatelessWidget {
  const SettingsPageComponent(
      {super.key,
      required this.icon,
      required this.title,
      required this.subTitle});

  final Icon icon;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            icon,
            const SizedBox(width: kPadding12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: kTxtTopicStyle,
                ),
                const SizedBox(height: kPadding4),
                Text(
                  subTitle,
                  style: kTxtOthersStyle,
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: kPadding16),
        const Divider(thickness: 2),
      ],
    );
  }
}
