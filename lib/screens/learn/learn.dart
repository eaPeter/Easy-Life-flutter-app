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
                children: const [
                  IconBtn(
                    iconChoice: Icon(Icons.draw),
                    navigate: '/drawer',
                  ),
                  IconBtn(
                    iconChoice: Icon(Icons.notifications_outlined),
                    navigate: '/notifications',
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
