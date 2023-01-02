import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_life/constants.dart';
import 'package:easy_life/components/main_carousel_component.dart';
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
          scrollDirection: Axis.vertical,
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
                      // TextField(
                      //   decoration: InputDecoration(
                      //     icon: SvgPicture.asset('assets/svg/Search.svg'),
                      //     hintText: 'Search',
                      //     border: const OutlineInputBorder(),
                      //   ),
                      // ),
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
                const SizedBox(height: kPadding24),
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
                const SizedBox(height: kPadding8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      5,
                      (index) => CarouselComponent(
                        image: "learn/neuro_Network.jpg",
                        title: "Machine Learning - NLP ",
                        subtitle: "Intermediate",
                        star: '5.0',
                        navigate: () =>
                            Navigator.pushNamed(context, '/detailed_learn'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: kPadding24),
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
                const SizedBox(height: kPadding8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      5,
                      (index) => CarouselComponent(
                        image: "learn/Accounting.jpg",
                        title: "Advanced Mathematics Support Programme",
                        subtitle: "Intermediate",
                        star: '5.0',
                        navigate: () =>
                            Navigator.pushNamed(context, '/detailed_learn'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: kPadding24),
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
                const SizedBox(height: kPadding8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      5,
                      (index) => CarouselComponent(
                        image: "learn/neuro_Network.jpg",
                        title: "Advanced Mathematics Support Programme",
                        subtitle: "Intermediate",
                        star: '5.0',
                        navigate: () =>
                            Navigator.pushNamed(context, '/detailed_learn'),
                      ),
                    ),
                  ),
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
