import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/app/constants/appwrite_const.dart';
import 'package:geat/app/models/app_error.dart';
import 'package:geat/app/models/notification.dart';
import 'package:geat/app/repository/notification_repo.dart';
import 'package:geat/auth/bloc/auth_bloc/auth_bloc.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc(this._notificationRepo, this._authBloc)
      : super(NotificationState.initial()) {
    on<NotificationEvent>((event, emit) async {
      await event.map(
        listNotification: (value) async {
          emit(state.copyWith(status: NotificationStatus.loading));
          final currentUserId = _authBloc.state.user!.$id;
          try {
            final notifications =
                await _notificationRepo.getNotifications(currentUserId);
            emit(
              state.copyWith(
                status: NotificationStatus.loaded,
                notifications: notifications,
              ),
            );
            await emit.forEach(
              _notificationRepo.streamNotification().stream,
              onData: (data) {
                if (data.events.contains(
                  'databases.${AppwriteConst.geatDataBaseId}.collections.${AppwriteConst.notificationCollectionId}.documents.*.create',
                )) {
                  final latestNotification =
                      Notification.fromJson(data.payload);

                  if (latestNotification.uId == _authBloc.state.user!.$id) {
                    return state.copyWith(
                      notifications: [
                        latestNotification,
                        ...notifications,
                      ],
                    );
                  }
                }
                return state;
              },
            );
          } on AppGenericException catch (e, _) {
            emit(
              state.copyWith(
                status: NotificationStatus.error,
                errorMessage: '${e.code}:: ${e.message}',
              ),
            );
          } catch (e) {
            emit(
              state.copyWith(
                status: NotificationStatus.error,
                errorMessage: null,
              ),
            );
          }
        },
      );
    });
  }
  final NotificationRepo _notificationRepo;
  final AuthBloc _authBloc;
}
