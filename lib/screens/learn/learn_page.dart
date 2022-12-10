import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_life/constants.dart';
import 'package:easy_life/widgets/carousel_component.dart';
import 'package:easy_life/widgets/icon_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../drawer.dart';

class Learn extends StatelessWidget {
  const Learn({super.key});

  @override
  Widget build(BuildContext context) {
    final fullWidth = MediaQuery.of(context).size.width;

    return Scaffold(
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
          ]),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 18.0,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/Learn.svg'), label: "Learn"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/Apply.svg'), label: "Apply"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/Play.svg'), label: "Play"),
          // BottomNavigationBarItem(
          //     icon: SvgPicture.asset('assets/svg/Music.svg'), label: "Music"),
          // BottomNavigationBarItem(
          //     icon: SvgPicture.asset('assets/svg/Settings.svg'),
          //     label: "Settings"),
        ],
      ),
      // Container(
      //   padding: const EdgeInsets.symmetric(horizontal: kPadding32),
      //   height: 90,
      //   color: kColorBackground,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           SvgPicture.asset('assets/svg/Learn.svg', height: 22),
      //           const SizedBox(height: kPadding6),
      //           Text("Learn",
      //               style: kTxtSubTopicStyle.copyWith(color: kColorTitleText))
      //         ],
      //       ),
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           SvgPicture.asset('assets/svg/Apply.svg', height: 22),
      //           const SizedBox(height: kPadding6),
      //           const Text("Apply", style: kTxtOthersStyle)
      //         ],
      //       ),
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           SvgPicture.asset('assets/svg/Play.svg', height: 22),
      //           const SizedBox(height: kPadding6),
      //           const Text("Play", style: kTxtOthersStyle)
      //         ],
      //       ),
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           SvgPicture.asset('assets/svg/Music.svg', height: 22),
      //           const SizedBox(height: kPadding6),
      //           const Text("Music", style: kTxtOthersStyle)
      //         ],
      //       ),
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           SvgPicture.asset('assets/svg/Settings.svg', height: 22),
      //           const SizedBox(height: kPadding6),
      //           const Text("Settings", style: kTxtOthersStyle)
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: kPadding24),
                const Text('Seek Knowledge', style: kTxtHeadingLargeStyle),
                const SizedBox(height: kPadding20),
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: fullWidth * 0.725,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: kColorTitleText.withOpacity(0.3)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(6)),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 16),
                          SvgPicture.asset('assets/svg/Search.svg'),
                          const SizedBox(width: 8),
                          const Text(
                            'Search',
                            style: kTxtSubTopicStyle,
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: const BoxDecoration(
                          color: kColorPrimary,
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: const Icon(
                        Icons.filter_1_outlined,
                        color: kColorBackground,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: kPadding24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Machine Learning',
                      style: kTxtHeadingMainStyle,
                    ),
                    GestureDetector(
                      onTap: (() => Navigator.pushNamed(context, '/see_all')),
                      child: const Text(
                        'See all',
                        style: kTxtSubTopicStyle,
                      ),
                    ),
                  ],
                ),
                CarouselSlider(
                  options: CarouselOptions(
                      height: 250.0, autoPlay: true, viewportFraction: 0.6),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: const CarouselComponent(
                            image: "learn/Machine_learning.jpg",
                            title: "Educational Pathways International",
                            subtitle: "Beginner",
                            star: '5.0',
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: kPadding24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Accounting',
                      style: kTxtHeadingMainStyle,
                    ),
                    GestureDetector(
                      onTap: (() => Navigator.pushNamed(context, '/see_all')),
                      child: const Text(
                        'See all',
                        style: kTxtSubTopicStyle,
                      ),
                    ),
                  ],
                ),
                CarouselSlider(
                  options: CarouselOptions(
                      height: 250.0, autoPlay: true, viewportFraction: 0.6),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: const CarouselComponent(
                            image: "learn/Accounting.jpg",
                            title: "Advanced Mathematics Support Programme",
                            subtitle: "Intermediate",
                            star: '5.0',
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: kPadding16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
