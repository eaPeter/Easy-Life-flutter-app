import 'package:flutter/material.dart';

import '../constants.dart';

class PassTxtField extends StatelessWidget {
  final String title;
  final String hint;
  final Icon? icon;
  var txtController = TextEditingController();

  PassTxtField({
    Key? key,
    required this.title,
    required this.hint,
    this.icon,
    required this.txtController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title.toUpperCase()),
        const SizedBox(
          height: kPadding6,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: hint,
            border: const OutlineInputBorder(),
            suffixIcon: const Icon(Icons.visibility),
          ),
          obscureText: true,
        ),
      ],
    );
  }
}
