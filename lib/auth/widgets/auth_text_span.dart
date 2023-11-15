import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AuthTextSpan extends StatelessWidget {
  const AuthTextSpan({
    required this.firstText,
    required this.secondText,
    super.key,
    this.onTap,
    this.isSubmitting = false,
  });
  final String firstText;
  final String secondText;
  final void Function()? onTap;
  final bool isSubmitting;

  @override
  Widget build(BuildContext context) {
    return isSubmitting
        ? const SizedBox.shrink()
        : RepaintBoundary(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Center(
                child: Text.rich(
                  TextSpan(
                    text: '$firstText? ',
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                      TextSpan(
                        text: secondText,
                        recognizer: TapGestureRecognizer()..onTap = onTap,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          decoration: TextDecoration.underline,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
                .animate(
                  delay: 2000.ms,
                  onPlay: (controller) => controller.repeat(reverse: true),
                )
                .tint(
                  duration: 2000.ms,
                  delay: 3000.ms,
                  color: Colors.red,
                ),
          );
  }
}
