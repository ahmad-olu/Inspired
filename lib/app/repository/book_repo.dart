import 'package:appwrite/appwrite.dart';
import 'package:geat/app/constants/appwrite_const.dart';
import 'package:geat/app/models/app_error.dart';
import 'package:geat/app/models/book.dart';
import 'package:geat/app/models/re_imagined.dart';

import 'package:geat/app/repository/appwrite.dart';

class BookRepo {
  final Databases _database = Databases(AppWrite.instance.client);
  final Realtime _realtime = Realtime(AppWrite.instance.client);

  Future<List<Book>> getAllBooksForFeed(String lastId) async {
    var queries = <String>[];
    if (lastId.isEmpty) {
      queries = [
        Query.limit(25),
      ];
    } else {
      queries = [
        //Query.equal('draft', true),
        Query.limit(25),
        Query.cursorAfter(lastId),
      ];
    }
    try {
      final books = await _database.listDocuments(
        databaseId: AppwriteConst.geatDataBaseId,
        collectionId: AppwriteConst.bookCollectionId,
        queries: queries,
      );
      return books.documents.map((book) => Book.fromJson(book.data)).toList();
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  Future<void> createBook(Book book) async {
    try {
      await _database.createDocument(
        databaseId: AppwriteConst.geatDataBaseId,
        collectionId: AppwriteConst.bookCollectionId,
        documentId: ID.unique(),
        data: book.toJson(),
      );
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  Future<void> updateBook(UpdateBook book) async {
    try {
      await _database.updateDocument(
        databaseId: AppwriteConst.geatDataBaseId,
        collectionId: AppwriteConst.bookCollectionId,
        documentId: book.id!,
        data: book.toJson(),
      );
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  Future<List<Book>> getUserBooks(String userId) async {
    try {
      final books = await _database.listDocuments(
        databaseId: AppwriteConst.geatDataBaseId,
        collectionId: AppwriteConst.bookCollectionId,
        queries: [
          Query.equal('uID', userId),
        ],
      );
      return books.documents.map((book) => Book.fromJson(book.data)).toList();
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  Future<void> createReImagined(ReImagined reImagined) async {
    try {
      await _database.createDocument(
        databaseId: AppwriteConst.geatDataBaseId,
        collectionId: AppwriteConst.reImaginedCollectionId,
        documentId: ID.unique(),
        data: reImagined.toJson(),
      );
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  Future<List<ReImagined>> getUserReImagined(String userId) async {
    try {
      final books = await _database.listDocuments(
        databaseId: AppwriteConst.geatDataBaseId,
        collectionId: AppwriteConst.reImaginedCollectionId,
        queries: [
          Query.equal('uId', userId),
        ],
      );
      return books.documents
          .map((book) => ReImagined.fromJson(book.data))
          .toList();
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  Future<Book> getSingleBook(String bookId) async {
    try {
      final book = await _database.getDocument(
        databaseId: AppwriteConst.geatDataBaseId,
        collectionId: AppwriteConst.bookCollectionId,
        documentId: bookId,
      );

      return Book.fromJson(book.data);
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  Future<Book> updateSingleBook({
    required String bookId,
    required Map<dynamic, dynamic>? data,
  }) async {
    try {
      final book = await _database.updateDocument(
        databaseId: AppwriteConst.geatDataBaseId,
        collectionId: AppwriteConst.bookCollectionId,
        documentId: bookId,
        data: data,
      );

      return Book.fromJson(book.data);
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  RealtimeSubscription updateLikes() {
    return _realtime.subscribe([
      'databases.${AppwriteConst.geatDataBaseId}.collections.${AppwriteConst.bookCollectionId}.documents',
    ]);
  }
}
