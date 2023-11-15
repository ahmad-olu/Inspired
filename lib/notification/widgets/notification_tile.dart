import 'package:flutter/material.dart';
import 'package:geat/app/constants/enum/notification_type_enum.dart';
import 'package:geat/app/models/notification.dart' as model;

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    required this.notification,
    super.key,
  });
  final model.Notification notification;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
      child: ListTile(
        leading: notification.notificationType == NotificationType.follow
            ? const Text('🦸')
            : notification.notificationType == NotificationType.like
                ? const Text('💗')
                : notification.notificationType == NotificationType.reImagined
                    ? const Text('📗')
                    : null,
        title: Text(notification.message),
        subtitle: Text(notification.notificationType.name),
      ),
    );
  }
}
