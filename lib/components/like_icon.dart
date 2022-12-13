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
          border: Border.all(color: kColorTitleText.withOpacity(0.15)),
          shape: BoxShape.circle),
      child: IconButton(
        onPressed: () {
          setState(() {
            _isLiked = !_isLiked;
          });
        },
        icon: Icon(
          widget.isLiked ? Icons.favorite : Icons.favorite_border,
          size: 20,
          color: widget.isLiked ? kColorPrimary : kColorTextLight,
        ),
      ),
    );
  }
}
