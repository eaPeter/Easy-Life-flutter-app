import 'package:flutter/material.dart';

import '../constants.dart';

class LikeBtn extends StatefulWidget {
  const LikeBtn({super.key, this.isLiked = false});

  final bool isLiked;

  @override
  State<LikeBtn> createState() => _LikeBtnState();
}

class _LikeBtnState extends State<LikeBtn> {
  late bool _isLiked = widget.isLiked;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
          color: kColorBackground,
          border: Border.all(color: kColorTitleText.withOpacity(0.15)),
          shape: BoxShape.circle),
      child: InkWell(
        onTap: () {
          setState(() {
            _isLiked = !_isLiked;
          });
        },
        child: Icon(
          _isLiked ? Icons.favorite : Icons.favorite_border,
          size: 20,
          color: _isLiked ? Colors.red : kColorTextLight,
        ),
      ),
    );
  }
}
