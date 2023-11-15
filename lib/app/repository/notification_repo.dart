import 'package:appwrite/appwrite.dart';
import 'package:geat/app/constants/appwrite_const.dart';
import 'package:geat/app/models/app_error.dart';
import 'package:geat/app/models/notification.dart';

import 'package:geat/app/repository/appwrite.dart';

class NotificationRepo {
  final Databases _database = Databases(AppWrite.instance.client);
  final Realtime _realtime = Realtime(AppWrite.instance.client);

  Future<void> createNotification(Notification notification) async {
    try {
      await _database.createDocument(
        databaseId: AppwriteConst.geatDataBaseId,
        collectionId: AppwriteConst.notificationCollectionId,
        documentId: ID.unique(),
        data: notification.toJson(),
      );
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  Future<List<Notification>> getNotifications(String uid) async {
    try {
      final not = await _database.listDocuments(
        databaseId: AppwriteConst.geatDataBaseId,
        collectionId: AppwriteConst.notificationCollectionId,
        queries: [Query.equal('uId', uid)],
      );
      return not.documents.map((e) => Notification.fromJson(e.data)).toList();
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  RealtimeSubscription streamNotification() {
    return _realtime.subscribe([
      'databases.${AppwriteConst.geatDataBaseId}.collections.${AppwriteConst.notificationCollectionId}.documents',
    ]);
  }
}
