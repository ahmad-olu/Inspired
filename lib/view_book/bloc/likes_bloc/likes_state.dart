part of 'likes_bloc.dart';

@freezed
class LikesState with _$LikesState {
  factory LikesState({
    required bool isLiked,
    required String bookId,
    required List<String> likes,
    required String currentUserName,
  }) = _LikesState;
  factory LikesState.initial() => _LikesState(
        isLiked: false,
        bookId: '',
        likes: [],
        currentUserName: '',
      );
}
