import 'package:flutter/material.dart';
import 'package:geat/app/utilities/utility.dart';

Future<bool> showBookOrComicDialog(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    title: 'Book or Comic',
    content: 'Pick what you want to create either a book or comic',
    optionBuilder: () => {
      'Book': true,
      'Comic': false,
    },
  ).then(
    (value) => value ?? false,
  );
}
