import 'dart:io';

//import 'package:file_picker/file_picker.dart';
//import 'package:geat/app/constants/platform.dart';
import 'package:image_picker/image_picker.dart';

Future<List<File>> pickImage({bool pickSingleImage = true}) async {
  final images = <File>[];
  //if (GeatPlatforms().isMobile) {
  final picker = ImagePicker();
  if (pickSingleImage) {
    final file = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );
    if (file == null) return [];
    images
      ..clear()
      ..add(File(file.path));
  } else {
    final files = await picker.pickMultiImage(
      imageQuality: 80,
    );
    if (files.isEmpty) return [];
    for (final file in files) {
      images.add(File(file.path));
    }
  }
  //}
  // else {
  //   if (pickSingleImage) {
  //     final file = await FilePicker.platform.pickFiles(
  //       allowedExtensions: [
  //         'jpg',
  //         'png',
  //         'svg',
  //       ],
  //     );
  //     if (file == null) return [];
  //     images.add(File(file.files.single.path!));
  //   } else {
  //     final files = await FilePicker.platform.pickFiles(
  //       allowMultiple: true,
  //       allowedExtensions: [
  //         'jpg',
  //         'png',
  //         'svg',
  //       ],
  //     );
  //     if (files == null) return [];
  //     images = files.paths.map((path) => File(path!)).toList();
  //   }
  // }

  return images;
}
