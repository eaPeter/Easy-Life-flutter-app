import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_life/constants.dart';
import 'package:easy_life/components/carousel_component.dart';
import 'package:easy_life/components/icon_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../drawer.dart';

class Learn extends StatefulWidget {
  const Learn({super.key});

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  int index = 0;

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
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        showUnselectedLabels: true,
        unselectedItemColor: kColorTextLight,
        selectedItemColor: kColorTitleText,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/Learn.svg', height: 18),
            label: "Learn",
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/Apply.svg', height: 18),
              label: "Apply"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/Play.svg', height: 18),
              label: "Play"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/Music.svg', height: 18),
              label: "Music"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/Settings.svg', height: 18),
              label: "Settings"),
        ],
      ),
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
                          const Text('Search', style: kTxtSubTopicStyle)
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
                    const Text('Machine Learning', style: kTxtHeadingMainStyle),
                    GestureDetector(
                      onTap: (() => Navigator.pushNamed(context, '/see_all')),
                      child: const Text('See all', style: kTxtSubTopicStyle),
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
                    const Text('Accounting', style: kTxtHeadingMainStyle),
                    GestureDetector(
                      onTap: (() => Navigator.pushNamed(context, '/see_all')),
                      child: const Text('See all', style: kTxtSubTopicStyle),
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
                  height: kPadding24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Neuro Network', style: kTxtHeadingMainStyle),
                    GestureDetector(
                      onTap: (() => Navigator.pushNamed(context, '/see_all')),
                      child: const Text('See all', style: kTxtSubTopicStyle),
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
                            image: "learn/neuro_Network.jpg",
                            title: "Machine Learning - NLP ",
                            subtitle: "Intermediate",
                            star: '5.0',
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(height: kPadding16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
