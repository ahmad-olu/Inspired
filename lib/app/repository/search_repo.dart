import 'package:appwrite/appwrite.dart';
import 'package:geat/app/constants/appwrite_const.dart';
import 'package:geat/app/models/app_error.dart';
import 'package:geat/app/models/book.dart';
import 'package:geat/app/models/re_imagined.dart';
import 'package:geat/app/models/user.dart';

import 'package:geat/app/repository/appwrite.dart';

class SearchRepo {
  final Databases _database = Databases(AppWrite.instance.client);

  Future<List<AppUser>> searchUserByName(String userName) async {
    // var queries = <String>[];
    // if (lastId.isEmpty) {
    //   queries = [
    //     Query.limit(25),
    //   ];
    // } else {
    //   queries = [
    //     Query.limit(25),
    //     Query.cursorAfter(lastId),
    //   ];
    // }
    try {
      final user = await _database.listDocuments(
        databaseId: AppwriteConst.geatDataBaseId,
        collectionId: AppwriteConst.userCollectionId,
        queries: [
          Query.search('username', userName),
        ],
      );
      return user.documents.map((u) => AppUser.fromJson(u.data)).toList();
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  Future<List<Book>> searchByBook(String book) async {
    // var queries = <String>[];
    // if (lastId.isEmpty) {
    //   queries = [
    //     Query.limit(25),
    //   ];
    // } else {
    //   queries = [
    //     Query.limit(25),
    //     Query.cursorAfter(lastId),
    //   ];
    // }
    try {
      final doc = await _database.listDocuments(
        databaseId: AppwriteConst.geatDataBaseId,
        collectionId: AppwriteConst.bookCollectionId,
        queries: [
          Query.search('title', book),
        ],
      );
      return doc.documents.map((b) => Book.fromJson(b.data)).toList();
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  Future<List<ReImagined>> searchByReImagined(String reImagined) async {
    // var queries = <String>[];
    // if (lastId.isEmpty) {
    //   queries = [
    //     Query.limit(25),
    //   ];
    // } else {
    //   queries = [
    //     Query.limit(25),
    //     Query.cursorAfter(lastId),
    //   ];
    // }
    try {
      final doc = await _database.listDocuments(
        databaseId: AppwriteConst.geatDataBaseId,
        collectionId: AppwriteConst.reImaginedCollectionId,
        queries: [
          Query.search('username', reImagined),
        ],
      );
      return doc.documents.map((r) => ReImagined.fromJson(r.data)).toList();
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }
}
