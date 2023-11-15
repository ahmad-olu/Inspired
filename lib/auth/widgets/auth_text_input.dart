import 'package:flutter/material.dart';

class AuthTextInput extends StatelessWidget {
  const AuthTextInput({
    super.key,
    this.onChanged,
    this.controller,
    this.helperText,
    this.hintText,
    this.visibility = false,
    this.isPassword = false,
    this.onVisibilityPressed,
    this.enabled = true,
    this.validator,
  });
  final void Function(String)? onChanged;
  final TextEditingController? controller;

  final String? helperText;
  final String? hintText;
  final bool visibility;
  final void Function()? onVisibilityPressed;
  final bool enabled;
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
          onChanged: onChanged,
          controller: controller,
          obscureText: visibility,
          obscuringCharacter: '¤', //unicode character //жౝ
          validator: validator,
        ),
      ],
    );
  }

  OutlineInputBorder border() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(
        width: 2,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
    );
  }
}
