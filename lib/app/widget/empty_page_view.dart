import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EmptyPageView extends StatelessWidget {
  const EmptyPageView({
    required this.title,
    required this.subTitle,
    required this.lottieAsset,
    super.key,
    this.height,
    this.width,
  });
  final String title;
  final String subTitle;
  final String lottieAsset;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            title,
            textScaleFactor: 2,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subTitle,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Lottie.asset(lottieAsset, height: height, width: width),
        ],
      ),
    );
  }
}
