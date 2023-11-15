part of 'feed_bloc.dart';

@freezed
class FeedEvent with _$FeedEvent {
  const factory FeedEvent.loadBooks() = _LoadBooks;
  const factory FeedEvent.refreshFeed() = _RefreshFeed;
}
