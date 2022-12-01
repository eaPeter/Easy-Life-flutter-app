import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton(
      {super.key, required this.btnText, required this.navigate});

  final String btnText;
  final String navigate;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kPadding32),
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(kPrimaryColor),
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
