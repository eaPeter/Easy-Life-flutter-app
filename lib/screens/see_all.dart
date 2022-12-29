import 'package:flutter/material.dart';

import '../components/like_icon.dart';
import '../constants.dart';

class SeeAll extends StatelessWidget {
  SeeAll({super.key});

  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBackground,
      appBar: AppBar(
        title: const Text(
          'Accounting',
          style: kTxtTopicStyle,
        ),
        centerTitle: true,
        backgroundColor: kColorBackground,
        elevation: 0,
        iconTheme: const IconThemeData(color: kColorTitleText),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPadding20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: kPadding16),
              GridView.builder(
                controller: _controller,
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
                      border:
                          Border.all(color: kColorTitleText.withOpacity(0.3)),
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
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/learn/Machine_learning_large.jpg'),
                                fit: BoxFit.fill),
                          ),
                          child: const LikeBtn(),
                        ),
                        const SizedBox(height: kPadding8),
                        const Text('Accounting', style: kTxtTopicStyle),
                        const SizedBox(height: kPadding4),
                        const Text('#7 Ranked',
                            style:
                                TextStyle(color: Color.fromRGBO(0, 0, 0, 0.6))),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: kPadding16),
            ],
          ),
        ),
      )),
    );
  }
}
