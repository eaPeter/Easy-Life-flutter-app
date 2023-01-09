import 'package:flutter/material.dart';

import '../../constants.dart';

class DefaultAuthButton extends StatelessWidget {
  const DefaultAuthButton(
      {super.key, required this.btnText, required this.navigate});

  final String btnText;
  final Function() navigate;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(kColorPrimary),
        ),
        onPressed: navigate,
        child: Text(
          btnText,
          style: kTxtBtnStyle,
        ),
      ),
    );
  }
}
