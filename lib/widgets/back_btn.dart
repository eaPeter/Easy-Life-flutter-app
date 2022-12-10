import 'package:flutter/material.dart';

import '../constants.dart';

// ignore: must_be_immutable
class BackBtn extends StatelessWidget {
  const BackBtn({
    super.key,
    required this.navigate,
    this.whiteColorBool = false,
  });

  final String navigate;
  final bool whiteColorBool;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(
              color: whiteColorBool
                  ? kColorTitleText.withOpacity(0.15)
                  : kColorBackground),
          shape: BoxShape.circle),
      child: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          size: 22,
          color: whiteColorBool ? kColorTitleText : kColorBackground,
        ),
        onPressed: () => Navigator.popAndPushNamed(context, navigate),
      ),
    );
  }
}
