import 'package:flutter/material.dart';

import '../constants.dart';
import 'like_icon.dart';

class SeeAllComponent extends StatelessWidget {
  const SeeAllComponent({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
  });

  final String title;
  final String subTitle;
  final String image;
  // final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        // controller: controller,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: kPadding12,
            crossAxisSpacing: kPadding12,
            childAspectRatio: 0.96),
        itemCount: 10,
        itemBuilder: (BuildContext context, index) {
          return Container(
            padding: const EdgeInsets.only(left: 6, top: 6, right: 6),
            decoration: BoxDecoration(
              border: Border.all(color: kColorTitleText.withOpacity(0.3)),
              borderRadius: const BorderRadius.all(Radius.circular(6)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 120,
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.all(kPadding12),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(3)),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.fill),
                  ),
                  child: const LikeBtn(),
                ),
                const SizedBox(height: kPadding8),
                Text(title, style: kTxtTopicStyle),
                const SizedBox(height: kPadding4),
                Text(
                  subTitle,
                  style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.6)),
                ),
              ],
            ),
          );
        });
  }
}
