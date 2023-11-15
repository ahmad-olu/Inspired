part of 'feed_bloc.dart';

enum FeedStatus { initial, loading, loaded, error }

@freezed
class FeedState with _$FeedState {
  const factory FeedState({
    required List<Book> books,
    required FeedStatus status,
    String? errorMessage,
    @Default(true) bool hasMore,
    @Default('') String lastItemId,
  }) = _FeedState;
  factory FeedState.initial() => const _FeedState(
        books: [],
        status: FeedStatus.initial,
      );
}
