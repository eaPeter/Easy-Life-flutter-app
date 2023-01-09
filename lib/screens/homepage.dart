import 'package:easy_life/models/learn.dart';
import 'package:easy_life/screens/apply/apply_page.dart';
import 'package:easy_life/screens/learn/learn_page.dart';
import 'package:easy_life/screens/music/music_page.dart';
import 'package:easy_life/screens/play/play_page.dart';
import 'package:easy_life/screens/settings/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/icon_btn.dart';
import '../constants.dart';
import 'drawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int index = 0;

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
      body: IndexedStack(
        index: index,
        children: const [
          LearnPage(),
          ApplyPage(),
          PlayPage(),
          MusicPage(),
          SettingsPage(),
        ],
      ),
    );
  }
}
