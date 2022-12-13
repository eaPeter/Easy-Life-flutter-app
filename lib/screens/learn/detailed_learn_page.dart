import 'package:easy_life/constants.dart';
import 'package:easy_life/widgets/back_btn.dart';
import 'package:easy_life/widgets/default_button.dart';
import 'package:easy_life/widgets/sub_title_detailed_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailedLearnPage extends StatelessWidget {
  DetailedLearnPage({super.key});

  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    double pageWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _controller,
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
                          child: const Icon(Icons.favorite_border, size: 20),
                        ),
                      ],
                    ),
                    const SizedBox(height: kPadding12),
                    Row(
                      children: [
                        const DetailedPageSubTitle(
                            svgPic: 'assets/svg/gamepad.svg',
                            text: '130 playing'),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: kPadding12),
                          child: const Text('|',
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 0.45))),
                        ),
                        const DetailedPageSubTitle(
                            svgPic: 'assets/svg/rank.svg', text: '#7 Ranked'),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: kPadding12),
                          child: const Text('|',
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 0.45))),
                        ),
                        const DetailedPageSubTitle(
                            svgPic: 'assets/svg/checkBox_quizzes_taken.svg',
                            text: '65 Quizzes'),
                      ],
                    ),
                    const SizedBox(height: kPadding16),
                    Text(
                      'This course aims at testing your knowledge on Machine Leaning. The fundamentals of programming and internet security are prerequisites needed to be able to enjoy this game. Surprisingly, you can learn a lot more with playing game than reading when you are stressed. Rank up and receive rewards for your hardwork. Enjoy!!!',
                      style: kTxtSubTopicStyle.copyWith(
                          color: kColorTitleText.withOpacity(0.8)),
                    ),
                    const SizedBox(height: kPadding24),
                    const DefaultButton(
                        btnText: 'Learn', navigate: '/course_learn'),
                    const SizedBox(height: kPadding24),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Other Courses',
                            style: kTxtHeadingMainStyle),
                        const Spacer(),
                        GestureDetector(
                          onTap: (() =>
                              Navigator.pushNamed(context, '/see_all')),
                          child:
                              const Text('See all', style: kTxtSubTopicStyle),
                        ),
                      ],
                    ),
                    const SizedBox(height: kPadding12),
                    GridView.builder(
                        controller: _controller,
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                mainAxisSpacing: kPadding12,
                                crossAxisSpacing: kPadding12),
                        itemCount: 10,
                        itemBuilder: (BuildContext context, index) {
                          return Container(
                            padding: EdgeInsets.only(left: 6, top: 6, right: 6),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: kColorTitleText.withOpacity(0.3)),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 120,
                                  alignment: Alignment.topRight,
                                  padding: const EdgeInsets.all(kPadding12),
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/learn/Machine_learning_large.jpg'),
                                        fit: BoxFit.fill),
                                  ),
                                  child: Container(
                                    height: 32,
                                    width: 32,
                                    decoration: BoxDecoration(
                                        color: kColorBackground,
                                        border: Border.all(
                                            color: kColorTitleText
                                                .withOpacity(0.15)),
                                        shape: BoxShape.circle),
                                    child: const Icon(Icons.favorite_border,
                                        size: 20),
                                  ),
                                ),
                                const SizedBox(height: kPadding8),
                                const Text('Accounting', style: kTxtTopicStyle),
                                Row(
                                  children: [
                                    const DetailedPageSubTitle(
                                        svgPic: 'assets/svg/gamepad.svg',
                                        text: '130 playing'),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: kPadding12),
                                      child: const Text('|',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.45))),
                                    ),
                                    const DetailedPageSubTitle(
                                        svgPic: 'assets/svg/rank.svg',
                                        text: '#7 Ranked'),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }),
                    const SizedBox(
                      height: kPadding32,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
