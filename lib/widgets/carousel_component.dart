import 'package:flutter/material.dart';

class CarouselComponent extends StatelessWidget {
  const CarouselComponent(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  final String image;
  final String title;
  final String subtitle;

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
        ],
      ),
    ]);
  }
}
