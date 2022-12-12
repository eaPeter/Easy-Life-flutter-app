import 'package:easy_life/constants.dart';
import 'package:easy_life/widgets/back_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailedLearnPage extends StatelessWidget {
  const DetailedLearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    double pageWidth = MediaQuery.of(context).size.width;
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
            ),
            const SizedBox(height: kPadding16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding20),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: pageWidth * 0.8,
                        child: const Text(
                          "Machine Learning - Foundational Guide",
                          style: kTxtHeadingMainStyle,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: kColorTitleText.withOpacity(0.15)),
                            shape: BoxShape.circle),
                        child: const Icon(
                          Icons.favorite_border,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: kPadding12,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/svg/gamepad.svg',
                          height: 6, width: 6),
                      const SizedBox(
                        height: kPadding12,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
