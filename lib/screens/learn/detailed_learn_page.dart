import 'package:easy_life/constants.dart';
import 'package:easy_life/widgets/back_btn.dart';
import 'package:flutter/material.dart';

class DetailedLearnPage extends StatelessWidget {
  const DetailedLearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              height: 295,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                      'assets/images/learn/Machine_learning_large.jpg'),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(kPadding20),
                child: BackBtn(
                  navigate: '/learn',
                  whiteColorBool: true,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
