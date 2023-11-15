import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geat/app/constants/enum/notification_type_enum.dart';
import 'package:geat/app/models/notification.dart' as model;
import 'package:geat/app/repository/notification_repo.dart';
import 'package:geat/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:geat/notification/bloc/bloc/notification_bloc.dart';

import 'package:geat/notification/widgets/notification_tile.dart';

@RoutePage(name: 'notification')
class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationBloc(
        context.read<NotificationRepo>(),
        context.read<AuthBloc>(),
      )..add(const NotificationEvent.listNotification()),
      child: const NotificationView(),
    );
  }
}

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Notifications'),
      // ),
      body: BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
          if (state.status == NotificationStatus.initial ||
              state.notifications.isEmpty) {
            return const Center(
              child: Text(
                'No Notification Yet',
                textScaleFactor: 2,
              ),
            );
          }
          if (state.status == NotificationStatus.error) {
            return Center(
              child: Text(
                state.errorMessage ?? 'Error Occurred ❌',
                textScaleFactor: 2,
              ),
            );
          }
          return ListView.builder(
            itemCount: state.notifications.length,
            itemBuilder: (BuildContext context, int index) {
              final notification = state.notifications[index];
              return NotificationTile(
                notification: notification,
              );
            },
          );
        },
      ),
    );
  }
}
