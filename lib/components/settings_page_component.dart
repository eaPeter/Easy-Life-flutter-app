import 'package:flutter/material.dart';

import '../constants.dart';

class SettingsPageComponent extends StatelessWidget {
  const SettingsPageComponent(
      {super.key,
      required this.icon,
      required this.title,
      required this.subTitle,
      this.color = kColorTitleText,
      this.navigate});

  final Icon icon;
  final String title;
  final String subTitle;
  final Color? color;
  final Function()? navigate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigate,
      child: Column(
        children: [
          const SizedBox(height: kPadding16),
          Row(
            children: [
              icon,
              const SizedBox(width: kPadding12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: kTxtTopicStyle.copyWith(color: color),
                  ),
                  const SizedBox(height: kPadding4),
                  Text(
                    subTitle,
                    style: (color == kColorTitleText)
                        ? kTxtOthersStyle
                        : Colors.red.withOpacity(0.6),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: kPadding16),
          const Divider(thickness: 1),
        ],
      ),
    );
  }
}
