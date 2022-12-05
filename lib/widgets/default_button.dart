import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton(
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
          backgroundColor: MaterialStateProperty.all(kPrimaryColor),
        ),
        onPressed: () => Navigator.pushNamed(context, navigate),
        child: Text(
          btnText,
          style: kTxtBtnStyle,
        ),
      ),
    );
  }
}
