import 'package:easy_life/constants.dart';
import 'package:flutter/material.dart';

import '../../components/back_btn.dart';

class CourseLearn extends StatelessWidget {
  const CourseLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBackground,
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: kPadding20),
        child: Column(
          children: const [
            SizedBox(height: kPadding20),
            BackBtn(navigate: '/detailed_learn'),
          ],
        ),
      )),
    );
  }
}
