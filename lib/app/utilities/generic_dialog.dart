import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

typedef DialogOptionBuilder<T> = Map<String, T?> Function();

Future<T?> showGenericDialog<T>({
  required BuildContext context,
  required String title,
  required String content,
  required DialogOptionBuilder<T> optionBuilder,
}) {
  final options = optionBuilder();
  final theme = Theme.of(context);
  return showDialog<T>(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: theme.scaffoldBackgroundColor,
        elevation: 7,
        title: Text(
          title,
          style: theme.textTheme.headlineMedium,
        ),
        content: Text(
          content,
          style: theme.textTheme.headlineSmall,
        ),
        actions: options.keys.map((optionTitle) {
          final value = options[optionTitle];
          return TextButton(
            onPressed: () {
              if (value != null) {
                //AutoRouter.of(context).pop(value);
                Navigator.of(context).pop(value);
              } else {
                //AutoRouter.of(context).pop();
                Navigator.of(context).pop();
              }
            },
            child: Text(optionTitle),
          );
        }).toList(),
      );
    },
  );
}
