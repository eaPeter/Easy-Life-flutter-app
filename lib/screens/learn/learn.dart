import 'package:easy_life/constants.dart';
import 'package:easy_life/widgets/icon_btn.dart';
import 'package:flutter/material.dart';

class Learn extends StatelessWidget {
  const Learn({super.key});

  @override
  Widget build(BuildContext context) {
    final fullWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: kPadding16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  IconBtn(iconChoice: Icon(Icons.draw), navigate: '/drawer'),
                  IconBtn(
                      iconChoice: Icon(Icons.notifications_outlined),
                      navigate: '/notifications'),
                ],
              ),
              const SizedBox(height: kPadding32),
              const Text('Seek Knowledge', style: kTxtHeadingLargeStyle),
              const SizedBox(height: kPadding20),
              Row(
                children: [
                  Container(
                    height: 45,
                    width: fullWidth * 0.725,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
                    ),
                    child: Row(
                      children: [],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: const Icon(
                      Icons.filter_1_outlined,
                      color: kBackgroundColor,
                      size: 20,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
