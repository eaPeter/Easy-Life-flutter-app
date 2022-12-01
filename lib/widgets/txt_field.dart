import 'package:flutter/material.dart';

import '../constants.dart';

class TxtField extends StatelessWidget {
  final String title;
  final String hint;
  var txtController = TextEditingController();

  TxtField({
    Key? key,
    required this.title,
    required this.hint,
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
          controller: txtController,
          decoration: InputDecoration(
            hintText: hint,
            border: const OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
