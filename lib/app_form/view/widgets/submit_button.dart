import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
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
        : ElevatedButton(
            style: ElevatedButton.styleFrom(
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
          );
  }
}
