part of 'create_image_book_form_cubit.dart';

enum CreateImageBookFormStatus { initial, submitting, submitted, error }

@freezed
class CreateImageBookFormState with _$CreateImageBookFormState {
  const factory CreateImageBookFormState({
    required String title,
    required bool isDraft,
    required bool canReImagine,
    required bool canComment,
    required List<File> imagesPath,
    required List<String> imagesId,
    required List<String> categories,
    required CreateImageBookFormStatus status,
    required bool isUpdate,
    String? errorMessage,
    String? bookId,
  }) = _CreateImageBookFormState;
  factory CreateImageBookFormState.initial() => const _CreateImageBookFormState(
        title: '',
        isDraft: false,
        canReImagine: true,
        canComment: true,
        imagesPath: [],
        imagesId: [],
        categories: [],
        isUpdate: false,
        status: CreateImageBookFormStatus.initial,
      );
}
