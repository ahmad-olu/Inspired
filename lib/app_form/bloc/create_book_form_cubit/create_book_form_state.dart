part of 'create_book_form_cubit.dart';

enum CreateBookFormStatus { initial, submitting, submitted, error }

@freezed
class CreateBookFormState with _$CreateBookFormState {
  const factory CreateBookFormState({
    required String title,
    required List<BookFormModel> content,
    required bool isDraft,
    required bool canReImagine,
    required bool canComment,
    required List<File> imagesPath,
    required List<String> imagesId,
    required List<String> categories,
    required CreateBookFormStatus status,
    required bool isUpdate,
    String? errorMessage,
    String? bookId,
  }) = _CreateBookFormState;
  factory CreateBookFormState.initial() => const _CreateBookFormState(
        title: '',
        content: [],
        isDraft: false,
        canReImagine: true,
        canComment: true,
        imagesPath: [],
        imagesId: [],
        categories: [],
        isUpdate: false,
        status: CreateBookFormStatus.initial,
      );
}

@freezed
class BookFormModel with _$BookFormModel {
  const factory BookFormModel({
    required String id,
    required String chapter,
    required String data,
  }) = _BookFormModel;
}
