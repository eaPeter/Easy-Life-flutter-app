import 'package:easy_life/constants.dart';
import 'package:easy_life/widgets/backBtn.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPadding20),
        child: Column(
          children: const [
            SizedBox(
              height: kPadding16,
            ),
            BackBtn(navigate: '/learn')
          ],
        ),
      )),
    );
  }
}
