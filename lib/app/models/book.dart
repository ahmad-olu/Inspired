import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/app/constants/enum/post_type_enum.dart';
part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  const factory Book({
    required String title,
    required bool draft,
    @JsonKey(name: 'can_reimagine') required bool canReImagine,
    @JsonKey(name: 'can_comment') required bool canComment,
    //@JsonKey(name: 'images_URL') required List<String>? imagesURL,
    @JsonKey(name: 'images_id') required List<String>? imagesId,
    required List<BookContent> content,
    @JsonKey(name: 'post_type') required BookType postType,
    required List<String> likes,
    @JsonKey(name: 'uID') required String uId,
    @JsonKey(name: r'$id') String? id,
    List<String>? category,
    //@JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}

@freezed
class UpdateBook with _$UpdateBook {
  const factory UpdateBook({
    required String title,
    required bool draft,
    @JsonKey(name: 'can_reimagine') required bool canReImagine,
    @JsonKey(name: 'can_comment') required bool canComment,
    //@JsonKey(name: 'images_URL') required List<String>? imagesURL,
    @JsonKey(name: 'images_id') required List<String>? imagesId,
    required List<BookContent> content,
    @JsonKey(name: 'post_type') required BookType postType,
    @JsonKey(name: 'uID') required String uId,
    @JsonKey(name: r'$id') String? id,
    List<String>? category,
    //@JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _UpdateBook;

  factory UpdateBook.fromJson(Map<String, dynamic> json) =>
      _$UpdateBookFromJson(json);
}

@freezed
class BookContent with _$BookContent {
  const factory BookContent({
    required String head, //255
    required String content, //5000
  }) = _BookContent;

  factory BookContent.fromJson(Map<String, dynamic> json) =>
      _$BookContentFromJson(json);
}
