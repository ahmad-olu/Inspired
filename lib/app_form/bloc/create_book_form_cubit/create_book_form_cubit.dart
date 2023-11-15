import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/app/constants/enum/post_type_enum.dart';
import 'package:geat/app/models/app_error.dart';
import 'package:geat/app/models/book.dart';
import 'package:geat/app/repository/book_repo.dart';
import 'package:geat/app/repository/storage_repo.dart';
import 'package:geat/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:uuid/uuid.dart';

part 'create_book_form_state.dart';
part 'create_book_form_cubit.freezed.dart';

class CreateBookFormCubit extends Cubit<CreateBookFormState> {
  CreateBookFormCubit(this._bookRepo, this._storageRepo, this._authBloc)
      : super(CreateBookFormState.initial());
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
          content: book.content.map((e) {
            return BookFormModel(
              id: const Uuid().v4(),
              data: e.content,
              chapter: e.head,
            );
          }).toList(),
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

  void addContent() {
    emit(
      state.copyWith(
        content: [
          ...state.content,
          BookFormModel(id: const Uuid().v1(), chapter: '', data: ''),
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
    emit(state.copyWith(status: CreateBookFormStatus.submitting));
    var imageUrl = <String>[];
    try {
      final chapterList = state.content.map(
        (e) {
          return BookContent(head: e.chapter, content: e.data);
        },
      ).toList();

      imageUrl =
          await _storageRepo.uploadImage(state.imagesPath, state.imagesId);
//AppwriteConst.imageUrl(uploadedImage.$id)
      if (state.isUpdate == true) {
        final book = UpdateBook(
          title: state.title,
          draft: state.isDraft,
          canReImagine: state.canReImagine,
          canComment: state.canComment,
          imagesId: imageUrl.isEmpty ? state.imagesId : imageUrl,
          content: chapterList,
          category: state.categories,
          postType: BookType.text,
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
          imagesId: imageUrl,
          content: chapterList,
          likes: [],
          category: state.categories,
          postType: BookType.text,
          uId: _authBloc.state.user!.$id,
        );
        await _bookRepo.createBook(book);
      }

      emit(state.copyWith(status: CreateBookFormStatus.submitted));
    } on AppGenericException catch (e, _) {
      emit(
        state.copyWith(
          status: CreateBookFormStatus.error,
          errorMessage: '${e.code}⚠️ message:${e.message}',
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: CreateBookFormStatus.error));
    }
  }
}
