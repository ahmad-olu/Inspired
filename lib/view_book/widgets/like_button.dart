import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({required this.isLiked, this.onTap, super.key});
  final bool isLiked;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        isLiked ? '💗' : '🤍',
        textScaleFactor: 1.7,
      ),
    );
  }
}
