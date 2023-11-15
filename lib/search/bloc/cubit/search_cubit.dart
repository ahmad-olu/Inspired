import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/app/models/app_error.dart';
import 'package:geat/app/models/book.dart';
import 'package:geat/app/models/re_imagined.dart';
import 'package:geat/app/models/user.dart';
import 'package:geat/app/repository/search_repo.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._searchRepo) : super(SearchState.initial());
  final SearchRepo _searchRepo;

  void searchTypeEnum(int index, {bool selected = false}) {
    emit(state.copyWith(searchType: selected ? index : 0));
  }

  Future<void> search(String name) async {
    emit(
      state.copyWith(
        status: SearchStatus.loading,
      ),
    );
    try {
      switch (state.searchType) {
        case 0:
          final users = await _searchRepo.searchUserByName(name);
          return emit(
            state.copyWith(
              users: users,
              status: SearchStatus.loaded,
            ),
          );
        case 1:
          final books = await _searchRepo.searchByBook(name);
          log('books \n');
          log('$books \n');
          return emit(
            state.copyWith(
              books: books,
              status: SearchStatus.loaded,
            ),
          );

        default:
          return emit(state);
      }
    } on AppGenericException catch (e, _) {
      emit(
        state.copyWith(
          status: SearchStatus.error,
          errorMessage: '${e.code}:: ${e.message}',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: SearchStatus.error,
          errorMessage: null,
        ),
      );
    }

    // final books = await _searchRepo.searchByBook(name);
    // final reImagined = await _searchRepo.searchByReImagined(name);
  }
}
