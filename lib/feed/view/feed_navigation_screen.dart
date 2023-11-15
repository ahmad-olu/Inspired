import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'feedN')
class FeedNavigationPage extends StatelessWidget {
  const FeedNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
