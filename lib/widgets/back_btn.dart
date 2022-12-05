import 'package:flutter/material.dart';

import '../constants.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({super.key, required this.navigate});

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
        icon: const Icon(
          Icons.arrow_back_ios,
          size: 22,
          color: kTitleTextColor,
        ),
        onPressed: () => Navigator.popAndPushNamed(context, navigate),
      ),
    );
  }
}
