import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/app/constants/enum/post_type_enum.dart';
import 'package:geat/app/models/app_error.dart';
import 'package:geat/app/models/book.dart';
import 'package:geat/app/repository/book_repo.dart';
import 'package:geat/app/repository/storage_repo.dart';
import 'package:geat/auth/bloc/auth_bloc/auth_bloc.dart';

part 'create_image_book_form_state.dart';
part 'create_image_book_form_cubit.freezed.dart';

class CreateImageBookFormCubit extends Cubit<CreateImageBookFormState> {
  CreateImageBookFormCubit(this._bookRepo, this._storageRepo, this._authBloc)
      : super(CreateImageBookFormState.initial());
  final BookRepo _bookRepo;
  final StorageRepo _storageRepo;
  final AuthBloc _authBloc;

  void initForm(Book? book, {bool isUpdate = false}) {
    if (isUpdate == true) {
      emit(
        state.copyWith(
          isUpdate: isUpdate,
          canComment: book!.canComment,
          canReImagine: book.canReImagine,
          categories: book.category!,
          imagesId: book.imagesId!,
          isDraft: book.draft,
          title: book.title,
          bookId: book.id,
        ),
      );
    }
  }

  void titleStr(String val) {
    emit(state.copyWith(title: val));
  }

  void isDraftBool({required bool val}) {
    emit(state.copyWith(isDraft: val));
  }

  void canReImaginedBool({required bool val}) {
    emit(state.copyWith(canReImagine: val));
  }

  void canCommentBool({required bool val}) {
    emit(state.copyWith(canComment: val));
  }

  void imagesList(List<File> paths) {
    emit(state.copyWith(imagesPath: paths));
  }

  void categoryList(String value) {
    if (state.categories.contains(value)) {
      final updatedItems = List<String>.from(state.categories)..remove(value);
      emit(state.copyWith(categories: updatedItems));
      return;
    }
    emit(state.copyWith(categories: [...state.categories, value]));
  }

  Future<void> upload() async {
    emit(state.copyWith(status: CreateImageBookFormStatus.submitting));
    var imagesId = <String>[];
    try {
      imagesId = await _storageRepo.uploadImage(
        state.imagesPath,
        state.imagesId,
      );

      if (state.isUpdate == true) {
        final book = UpdateBook(
          title: state.title,
          draft: state.isDraft,
          canReImagine: state.canReImagine,
          canComment: state.canComment,
          imagesId: imagesId.isEmpty ? state.imagesId : imagesId,
          content: [],
          category: state.categories,
          postType: BookType.image,
          uId: _authBloc.state.user!.$id,
          id: state.bookId,
        );
        await _bookRepo.updateBook(book);
      } else {
        final book = Book(
          title: state.title,
          draft: state.isDraft,
          canReImagine: state.canReImagine,
          canComment: state.canComment,
          imagesId: imagesId,
          content: [],
          category: state.categories,
          likes: [],
          postType: BookType.image,
          uId: _authBloc.state.user!.$id,
        );
        await _bookRepo.createBook(book);
      }

      emit(state.copyWith(status: CreateImageBookFormStatus.submitted));
    } on AppGenericException catch (e, _) {
      emit(
        state.copyWith(
          status: CreateImageBookFormStatus.error,
          errorMessage: '${e.code}⚠️ message:${e.message}',
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: CreateImageBookFormStatus.error));
    }
  }
}
