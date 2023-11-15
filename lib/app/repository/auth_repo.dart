import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:geat/app/models/app_error.dart';
import 'package:geat/app/repository/appwrite.dart';

class AuthRepo {
  final Account _account = Account(AppWrite.instance.client);
  final Realtime _realtime = Realtime(AppWrite.instance.client);

  Future<User> get currentUser async {
    try {
      return await _account.get();
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  Future<User> signUp({
    required String email,
    required String password,
    String? name,
  }) async {
    try {
      await _account.create(
        userId: ID.unique(),
        email: email,
        password: password,
        name: name,
      );

      return await login(email: email, password: password);
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  Future<User> login({required String email, required String password}) async {
    try {
      await _account.createEmailSession(
        email: email,
        password: password,
      );

      return _account.get();
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  Future<void> updatePassword({required String newPassword}) async {
    try {
      await _account.updatePassword(
        password: '',
      );
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  RealtimeSubscription authStream() {
    return _realtime.subscribe([
      'users.*',
    ]);
  }

  Future<void> logout() {
    try {
      return _account.deleteSession(sessionId: 'current');
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }
}
