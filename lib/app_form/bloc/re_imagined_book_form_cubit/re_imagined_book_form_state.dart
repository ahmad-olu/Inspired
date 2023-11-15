part of 're_imagined_book_form_cubit.dart';

enum ReImaginedBookFormStatus { initial, submitting, submitted, error }

@freezed
class ReImaginedBookFormState with _$ReImaginedBookFormState {
  const factory ReImaginedBookFormState({
    required List<ReImaginedBookFormModel> content,
    required ReImaginedBookFormStatus status,
    required String bookId,
    required String bookName,
    required String bookUserId,
    String? errorMessage,
  }) = _ReImaginedBookFormState;
  factory ReImaginedBookFormState.initial() => const _ReImaginedBookFormState(
        content: [],
        status: ReImaginedBookFormStatus.initial,
        bookId: '',
        bookName: '',
        bookUserId: '',
      );
}

@freezed
class ReImaginedBookFormModel with _$ReImaginedBookFormModel {
  const factory ReImaginedBookFormModel({
    required String id,
    required String chapter,
    required String data,
  }) = _ReImaginedBookFormModel;
}
