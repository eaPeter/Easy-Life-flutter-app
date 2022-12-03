import 'package:flutter/material.dart';

import '../constants.dart';

class IconBtn extends StatelessWidget {
  const IconBtn({super.key, required this.iconChoice, required this.navigate});

  final Icon iconChoice;
  final String navigate;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(color: kTitleTextColor.withOpacity(0.15)),
          shape: BoxShape.circle),
      child: IconButton(
        icon: iconChoice,
        // Icon(
        //   Icons.draw_rounded,
        //   size: 22,
        //   color: kTitleTextColor,
        // ),
        onPressed: () => Navigator.pushNamed(context, navigate),
      ),
    );
  }
}
