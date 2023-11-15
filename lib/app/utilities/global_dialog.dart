import 'package:flutter/material.dart';
import 'package:geat/app/utilities/utility.dart';

Future<void> showGlobalDialog(BuildContext context, String content) {
  return showGenericDialog<void>(
    context: context,
    title: 'Message',
    content: content,
    optionBuilder: () => {
      'OK': null,
    },
  );
}
