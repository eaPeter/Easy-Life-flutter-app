import 'package:flutter/material.dart';

import '../../constants.dart';

class DefaultAuthButton extends StatelessWidget {
  const DefaultAuthButton(
      {super.key, required this.btnText, required this.navigate});

  final String btnText;
  final String navigate;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(kColorPrimary),
        ),
        onPressed: () => Navigator.pushReplacementNamed(context, navigate),
        child: Text(
          btnText,
          style: kTxtBtnStyle,
        ),
      ),
    );
  }
}
