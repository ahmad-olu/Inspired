import 'package:flutter/material.dart';
import 'package:geat/app/utilities/utility.dart';

Future<bool> showDeleteAccountDialog(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    title: 'Delete Account',
    content: 'Are you sure you want to Delete this account',
    optionBuilder: () => {
      'cancel': false,
      'Delete': true,
    },
  ).then(
    (value) => value ?? false,
  );
}
