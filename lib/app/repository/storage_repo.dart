import 'dart:developer';
import 'dart:io';

import 'package:appwrite/appwrite.dart';
import 'package:geat/app/constants/appwrite_const.dart';
import 'package:geat/app/models/app_error.dart';

import 'package:geat/app/repository/appwrite.dart';
import 'package:geat/app/utilities/id_extractor_from_storage_url.dart';

class StorageRepo {
  final Storage _storage = Storage(AppWrite.instance.client);

  Future<List<String>> uploadImage(
    List<File> files,
    List<String> imageUrls,
  ) async {
    try {
      if (imageUrls.isNotEmpty) {
        for (final image in imageUrls) {
          await deleteImage(image);
        }
      }
      final imageId = <String>[];
      for (final file in files) {
        final uploadedImage = await _storage.createFile(
          bucketId: AppwriteConst.imagesBucket,
          fileId: ID.unique(),
          file: InputFile.fromPath(path: file.path),
        );
        imageId.add(
          uploadedImage.$id,
        );
      }
      return imageId;
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  Future<String> uploadProfileImage(File file, String? imageUrl) async {
    try {
      if (imageUrl != null) {
        await deleteImage(imageUrl);
      }
      final uploadedImage = await _storage.createFile(
        bucketId: AppwriteConst.imagesBucket,
        fileId: ID.unique(),
        file: InputFile.fromPath(path: file.path),
      );
      return uploadedImage.$id;
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }

  Future<void> deleteImage(String imageId) async {
    try {
      // final extract = regExtractor(imageUrl);
      // log('$extract \n');
      await _storage.deleteFile(
        bucketId: AppwriteConst.imagesBucket,
        fileId: imageId,
      );
    } on AppwriteException catch (e, _) {
      throw AppGenericException(e.message, e.code, 'AppWrite');
    } catch (e) {
      throw AppGenericException(e.toString(), null, 'Global');
    }
  }
}
