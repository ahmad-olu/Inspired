import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/app/constants/enum/notification_type_enum.dart';
import 'package:geat/app/constants/enum/post_type_enum.dart';
import 'package:geat/app/models/app_error.dart';
import 'package:geat/app/models/notification.dart';
import 'package:geat/app/models/re_imagined.dart';
import 'package:geat/app/repository/book_repo.dart';
import 'package:geat/app/repository/notification_repo.dart';
import 'package:geat/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:geat/profile/bloc/profile_bloc/profile_bloc.dart';
import 'package:uuid/uuid.dart';

part 're_imagined_book_form_state.dart';
part 're_imagined_book_form_cubit.freezed.dart';

class ReImaginedBookFormCubit extends Cubit<ReImaginedBookFormState> {
  ReImaginedBookFormCubit(
    this._bookRepo,
    this._authBloc,
    this._notificationRepo,
    this._profileBloc,
  ) : super(ReImaginedBookFormState.initial());
  final BookRepo _bookRepo;
  final AuthBloc _authBloc;
  final ProfileBloc _profileBloc;
  final NotificationRepo _notificationRepo;

  void initBook(
    String bookId,
    String bookName,
    String bookUserId,
  ) {
    emit(
      state.copyWith(
        bookId: bookId,
        bookName: bookName,
        bookUserId: bookUserId,
      ),
    );
  }

  void addContent() {
    emit(
      state.copyWith(
        content: [
          ...state.content,
          ReImaginedBookFormModel(id: const Uuid().v1(), chapter: '', data: ''),
        ],
      ),
    );
  }

  void updateContent(int index, String value, {bool isData = true}) {
    final chapter = state.content[index];
    if (isData == true) {
      emit(
        state.copyWith(
          content: state.content.map((e) {
            if (e.id == chapter.id) {
              return e.copyWith(data: value);
            }
            return e;
          }).toList(),
        ),
      );
      return;
    }
    emit(
      state.copyWith(
        content: state.content.map((e) {
          if (e.id == chapter.id) {
            return e.copyWith(chapter: value);
          }
          return e;
        }).toList(),
      ),
    );
  }

  void deleteContent(int index) {
    final chapter = state.content[index];
    emit(
      state.copyWith(
        content: state.content
            .where(
              (e) => e.id != chapter.id,
            )
            .toList(),
      ),
    );
  }

  Future<void> upload() async {
    try {
      emit(state.copyWith(status: ReImaginedBookFormStatus.submitting));
      final chapterList = state.content.map(
        (e) {
          return ReImaginedContent(head: e.chapter, content: e.data);
        },
      ).toList();
      final reImagined = ReImagined(
        uId: _authBloc.state.user!.$id,
        postName: state.bookName,
        postId: state.bookId,
        postType: BookType.text,
        content: chapterList,
        likes: [],
      );
      await _bookRepo.createReImagined(reImagined);
      final notification = Notification(
        uId: state.bookUserId,
        postID: state.bookId,
        message:
            '${_profileBloc.state.currentLoggedInUser.username} Just reImagined your book 🖋️',
        notificationType: NotificationType.reImagined,
      );
      await _notificationRepo.createNotification(notification);
      emit(state.copyWith(status: ReImaginedBookFormStatus.submitted));
    } on AppGenericException catch (e, _) {
      emit(
        state.copyWith(
          status: ReImaginedBookFormStatus.error,
          errorMessage: '${e.code}⚠️ message:${e.message}',
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: ReImaginedBookFormStatus.error));
    }
  }
}
