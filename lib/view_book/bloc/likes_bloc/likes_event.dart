part of 'likes_bloc.dart';

@freezed
class LikesEvent with _$LikesEvent {
  const factory LikesEvent.initialize(Book book) = _Initialize;
  const factory LikesEvent.toggle() = _Toggle;
}
