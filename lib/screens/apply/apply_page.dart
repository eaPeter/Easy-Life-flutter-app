import 'package:easy_life/constants.dart';
import 'package:flutter/material.dart';

import '../../components/icon_btn.dart';
import '../drawer.dart';

class ApplyPage extends StatelessWidget {
  const ApplyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBackground,
      drawer: const DrawerPage(),
      appBar: AppBar(
        backgroundColor: kColorBackground,
        elevation: 0,
        iconTheme: const IconThemeData(color: kColorTitleText),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding20),
            child: IconBtn(
                iconChoice: Icon(Icons.notifications_outlined),
                navigate: '/notifications'),
          ),
        ],
      ),
      body: SafeArea(
          child:
              Padding(padding: EdgeInsets.symmetric(horizontal: kPadding20))),
    );
  }
}
