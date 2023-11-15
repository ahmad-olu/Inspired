import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    required this.inputData,
    super.key,
    this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.isSubmitting = false,
  });

  final void Function()? onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final String inputData;
  final bool isSubmitting;

  @override
  Widget build(BuildContext context) {
    return isSubmitting
        ? const Center(child: CircularProgressIndicator())
        : RepaintBoundary(
            child: TextButton(
              style: TextButton.styleFrom(
                fixedSize: const Size(double.maxFinite, 60),
                backgroundColor: backgroundColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
              onPressed: onPressed,
              child: Text(
                inputData,
                style: TextStyle(color: textColor),
                textScaleFactor: 2,
              ),
            )
                .animate(
                  onPlay: (controller) => controller.repeat(reverse: true),
                )
                .elevation(
                  duration: 700.ms,
                  delay: 3000.ms,
                )
                .then(
                  delay: 1000.ms,
                ),
          );
  }
}
