import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailedPageSubTitle extends StatelessWidget {
  const DetailedPageSubTitle(
      {super.key, required this.svgPic, required this.text});

  final String svgPic;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(svgPic, height: 20, width: 20),
        const SizedBox(width: 8),
        Text(
          text,
          style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.6)),
        ),
      ],
    );
  }
}
