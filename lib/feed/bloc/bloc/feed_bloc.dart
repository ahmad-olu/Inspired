import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/app/models/book.dart';
import 'package:geat/app/repository/book_repo.dart';

part 'feed_event.dart';
part 'feed_state.dart';
part 'feed_bloc.freezed.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc(this._bookRepo) : super(FeedState.initial()) {
    on<FeedEvent>((events, emit) async {
      await events.map(
        loadBooks: (event) async {
          emit(state.copyWith(status: FeedStatus.loading));

          final books = await _bookRepo.getAllBooksForFeed(state.lastItemId);
          final lastId = books.isEmpty ? null : books.last.id;

          if (books.length < 25) {
            emit(
              state.copyWith(
                status: FeedStatus.loaded,
                books: books,
                lastItemId: lastId ?? '',
                hasMore: false,
              ),
            );
            return;
          }

          log('lastId  ${lastId ?? ''}');
          emit(
            state.copyWith(
              status: FeedStatus.loaded,
              books: [...state.books, ...books],
              lastItemId: state.books.last.id ?? '',
            ),
          );
        },
        refreshFeed: (value) async {
          emit(
            state.copyWith(
              books: [],
              status: FeedStatus.initial,
              hasMore: true,
              lastItemId: '',
            ),
          );

          const FeedEvent.loadBooks();
        },
      );
    });
  }
  final BookRepo _bookRepo;
}
