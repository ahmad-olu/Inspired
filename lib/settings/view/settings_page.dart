import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geat/app/router/app_router.gr.dart';
import 'package:geat/app/utilities/email_password_dialog.dart';
import 'package:geat/app/utilities/log_out_dialog.dart';
import 'package:geat/auth/bloc/auth_bloc/auth_bloc.dart';

@RoutePage(name: 'settings')
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SettingsView();
  }
}

// final text = [
//   'Theme',
//   'Customize your Interest',
//   'Notification',
//   'Stats',
//   'Account',
//   'Help',
//   'Guidelines',
//   'delete Account',
//   'Walk out',
// ];

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
        ),
        centerTitle: true,
        backgroundColor: theme.colorScheme.primary,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SettingsCard(
                title: 'Profile',
                description: 'Edit your profile here',
                onTap: () => AutoRouter.of(context).push(const UpdateProfile()),
              ),
              SettingsCard(
                title: 'Email or Password',
                description: 'Edit your Email or Password here',
                onTap: () async {
                  final shouldBeEmail =
                      await showEmailAndPasswordDialog(context);
                  if (shouldBeEmail) {
                    if (!context.mounted) return;
                    await AutoRouter.of(context).push(const UpdateEmail());
                  } else {
                    if (!context.mounted) return;
                    await AutoRouter.of(context).push(const UpdatePassword());
                  }
                },
              ),
              // SettingsCard(
              //   title: 'FeedBack',
              //   description:
              //       "Add Feedback & suggestion and see the Feedback of other's",
              //   onTap: () => AutoRouter.of(context).push(const FeedBackRoute()),
              // ),
              // SettingsCard(
              //   title: 'App Theme',
              //   description: '',
              //   onTap: () {},
              // ),
              // SettingsCard(
              //   title: 'Delete Account',
              //   description: 'use this to delete the account',
              //   onTap: () {},
              // ),
              SettingsCard(
                title: 'Walk out',
                description: 'Use this to logout',
                onTap: () async {
                  final shouldLogOut = await showLogOutDialog(context);
                  if (shouldLogOut) {
                    if (context.mounted) {
                      context
                          .read<AuthBloc>()
                          .add(const AuthEvent.appLogoutRequested());
                      await AutoRouter.of(context).pushAndPopUntil(
                        const Login(),
                        predicate: (route) => false,
                      );
                    }
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

typedef SingleCardFunction = void Function()?;

class SettingsCard extends StatelessWidget {
  const SettingsCard({
    required this.title,
    super.key,
    this.onTap,
    this.description,
  });
  final SingleCardFunction onTap;
  final String title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
      child: SizedBox(
        height: 175,
        width: double.maxFinite,
        child: GestureDetector(
          onTap: onTap,
          child: Card(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 50,
                          textBaseline: TextBaseline.ideographic,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    description ?? '',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
