part of 'search_cubit.dart';

enum SearchType {
  user,
  book,
  // reImagined,
}

enum SearchStatus {
  initial,
  loading,
  loaded,
  error,
}

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required SearchStatus status,
    required List<String> categories,
    required int searchType,
    List<AppUser>? users,
    List<Book>? books,
    List<ReImagined>? reImagined,
    String? errorMessage,
  }) = _SearchState;
  factory SearchState.initial() => const _SearchState(
        status: SearchStatus.initial,
        searchType: 0,
        categories: [],
      );
}
