import 'package:flutter/material.dart';
import 'package:geat/app/utilities/utility.dart';

Future<bool> showEmailAndPasswordDialog(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    title: 'Email & Password',
    content: 'Pick what you want to Edit either your password or email',
    optionBuilder: () => {
      'Email': true,
      'Password': false,
    },
  ).then(
    (value) => value ?? false,
  );
}
