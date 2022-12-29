import 'package:flutter/material.dart';

import '../components/icon_btn.dart';
import '../constants.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBackground,
      appBar: AppBar(
        title: const Text(
          'See All',
          style: kTxtTopicStyle,
        ),
        centerTitle: true,
        backgroundColor: kColorBackground,
        elevation: 0,
        iconTheme: const IconThemeData(color: kColorTitleText),
      ),
    );
  }
}
