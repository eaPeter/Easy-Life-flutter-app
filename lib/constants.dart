import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//colors
const kBackgroundColor = Color.fromARGB(255, 255, 255, 255);
const kTitleTextColor = Color.fromARGB(255, 1, 0, 44);
const kBodyTextColor = Color.fromARGB(255, 0, 2, 7);
const kTextLightColor = Color.fromARGB(255, 77, 80, 94);
const kPrimaryColor = Color.fromARGB(255, 4, 80, 174);
const kBlueColor = Color.fromARGB(255, 0, 39, 182);
const kRedColor = Color.fromARGB(255, 222, 0, 0);
final kShadowColor = const Color.fromARGB(255, 4, 80, 174).withOpacity(0.15);

//text style
const kTxtHeadingLargeStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w600,
  color: kTitleTextColor,
);

const kTxtHeadingMainStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500,
  color: kTitleTextColor,
);

const kTxtTopicStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w500,
  color: kBodyTextColor,
);

const kTxtSubTopicStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: kTextLightColor,
);

const kTxtOthersStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w500,
  color: kTextLightColor,
);

//padding
const kPadding24 = 24.0;
const kPadding20 = 20.0;
const kPadding16 = 16.0;
const kPadding12 = 12.0;
