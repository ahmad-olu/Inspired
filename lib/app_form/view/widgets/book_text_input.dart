import 'package:flutter/material.dart';

class BookTextInput extends StatelessWidget {
  const BookTextInput({
    this.visibility = false,
    this.isPassword = false,
    super.key,
    this.onChanged,
    this.controller,
    this.helperText,
    this.hintText,
    this.enabled = true,
    this.initialValue,
    this.maxLines = 1,
    this.onVisibilityPressed,
    this.validator,
  });
  final void Function(String)? onChanged;
  final TextEditingController? controller;

  final String? helperText;
  final String? hintText;

  final String? initialValue;
  final int? maxLines;

  final void Function()? onVisibilityPressed;
  final bool enabled;
  final bool visibility;
  final bool isPassword;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 7, bottom: 3),
          child: Text(
            '$helperText: ',
            style: const TextStyle(fontWeight: FontWeight.w500),
            textScaleFactor: 1.2,
          ),
        ),
        TextFormField(
          initialValue: initialValue,
          decoration: InputDecoration(
            border: border(),
            // helperText: helperText,
            hintText: hintText,
            enabledBorder: border(),

            enabled: enabled,
            suffixIcon: !isPassword
                ? null
                : IconButton(
                    onPressed: onVisibilityPressed,
                    icon: Icon(
                      visibility ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
          ),
          maxLines: maxLines,
          onChanged: onChanged,
          obscureText: visibility,
          controller: controller,
          validator: validator,
        ),
      ],
    );
  }

  OutlineInputBorder border() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(
        width: 1.5,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
    );
  }
}
