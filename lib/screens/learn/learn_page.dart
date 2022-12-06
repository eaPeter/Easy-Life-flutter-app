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
            IconBtn(
                iconChoice: Icon(Icons.notifications_outlined),
                navigate: '/notifications'),
          ]),
      body: SafeArea(
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
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
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
                    'Scholarships',
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
                            title: "Educational Pathways International",
                            subtitle: "Undergrade/ Gradute - 22/23"),
                      );
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
