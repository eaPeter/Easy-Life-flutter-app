import 'package:easy_life/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CarouselComponent extends StatelessWidget {
  const CarouselComponent(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.star});

  final String image;
  final String title;
  final String subtitle;
  final String star;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 15,
        width: double.infinity,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/$image",
            width: 200,
            height: 125,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: SizedBox(
              width: 200,
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              subtitle,
              style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.45)),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(star, style: kTxtOthersStyle),
              const SizedBox(width: kPadding6),
              SvgPicture.asset('assets/svg/star_filled.svg', height: 12.0),
              const SizedBox(width: 2.0),
              SvgPicture.asset('assets/svg/star_filled.svg', height: 12.0),
              const SizedBox(width: 2.0),
              SvgPicture.asset('assets/svg/star_filled.svg', height: 12.0),
              const SizedBox(width: 2.0),
              SvgPicture.asset('assets/svg/star_filled.svg', height: 12.0),
              const SizedBox(width: 2.0),
              SvgPicture.asset('assets/svg/star_filled.svg', height: 12.0),
            ],
          )
        ],
      ),
    ]);
  }
}
