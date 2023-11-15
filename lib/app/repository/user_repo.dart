import 'package:appwrite/appwrite.dart';
import 'package:geat/app/constants/appwrite_const.dart';
import 'package:geat/app/models/app_error.dart';
import 'package:geat/app/models/user.dart';
import 'package:geat/app/repository/appwrite.dart';

class UserRepo {
  final Databases _database = Databases(AppWrite.instance.client);
  final Account _account = Account(AppWrite.instance.client);
  final Realtime _realtime = Realtime(AppWrite.instance.client);

  Future<void> createUser(AppUser user) async {
    try {
      await _database.createDocument(
        databaseId: AppwriteConst.geatDataBaseId,
        collectionId: AppwriteConst.userCollectionId,
        documentId: user.id,
        data: user.toJson(),
      );
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  Future<AppUser> getUser(String userId) async {
    try {
      final res = await _database.getDocument(
        databaseId: AppwriteConst.geatDataBaseId,
        collectionId: AppwriteConst.userCollectionId,
        documentId: userId,
      );
      return AppUser.fromJson(res.data);
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  Future<AppUser> updateUser(UpdateAppUser user) async {
    try {
      await _account.updateName(
        name: user.username,
      );

      final res = await _database.updateDocument(
        databaseId: AppwriteConst.geatDataBaseId,
        collectionId: AppwriteConst.userCollectionId,
        documentId: user.id,
        // data: user.toJson(),
        data: {
          'username': user.username.trim(),
          'fullname': user.fullname?.trim(),
          'website': user.website?.trim(),
          'bio': user.bio?.trim(),
          'image_id': user.imageId?.trim(),
        },
      );
      return AppUser.fromJson(res.data);
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  Future<AppUser> updateEmail(
    String email,
    String password,
    String userId,
  ) async {
    try {
      await _account.updateEmail(
        email: email.trim(),
        password: password.trim(),
      );

      final res = await _database.updateDocument(
        databaseId: AppwriteConst.geatDataBaseId,
        collectionId: AppwriteConst.userCollectionId,
        documentId: userId,
        data: {
          'email': email.trim(),
        },
      );
      return AppUser.fromJson(res.data);
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  Future<void> updatePassword(String password, String oldPassword) async {
    try {
      await _account.updatePassword(
        password: password.trim(),
        oldPassword: oldPassword.trim(),
      );
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  RealtimeSubscription userStream() {
    return _realtime.subscribe([
      'databases.${AppwriteConst.geatDataBaseId}.collections.${AppwriteConst.userCollectionId}.documents',
    ]);
  }

  Future<AppUser> followUser(
    String userId,
    List<String> followers,
  ) async {
    try {
      final res = await _database.updateDocument(
        databaseId: AppwriteConst.geatDataBaseId,
        collectionId: AppwriteConst.userCollectionId,
        documentId: userId,
        data: {
          'followers': followers,
        },
      );
      return AppUser.fromJson(res.data);
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  Future<AppUser> followingUser(
    String userId,
    List<String> following,
  ) async {
    try {
      final res = await _database.updateDocument(
        databaseId: AppwriteConst.geatDataBaseId,
        collectionId: AppwriteConst.userCollectionId,
        documentId: userId,
        data: {
          'following': following,
        },
      );
      return AppUser.fromJson(res.data);
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }
}
