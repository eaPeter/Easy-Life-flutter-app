import 'package:easy_life/constants.dart';
import 'package:easy_life/screens/notifications/notifications.dart';
import 'package:easy_life/widgets/iconBtn.dart';
import 'package:flutter/material.dart';

class Learn extends StatelessWidget {
  const Learn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding20),
          child: Column(
            children: [
              const SizedBox(
                height: kPadding16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: kTitleTextColor.withOpacity(0.15)),
                        shape: BoxShape.circle),
                    child: IconButton(
                      icon: const Icon(
                        Icons.draw_rounded,
                        size: 22,
                        color: kTitleTextColor,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const IconBtn(
                    iconChoice: Icon(Icons.draw),
                    navigate: '/drawer',
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: kTitleTextColor.withOpacity(0.15)),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.notifications_outlined,
                        size: 22,
                        color: kTitleTextColor,
                      ),
                      onPressed: () =>
                          Navigator.pushNamed(context, '/notifications'),
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
