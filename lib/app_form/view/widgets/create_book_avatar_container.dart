import 'dart:io';
import 'package:flutter/material.dart';
import 'package:geat/app/constants/app_assets.dart';
import 'package:geat/app/constants/platform.dart';

class AvatarContainer extends StatelessWidget {
  const AvatarContainer({
    required this.imageUrl,
    required this.size,
    required this.borderRadius,
    required this.isUpdate,
    super.key,
    this.onPressed,
    this.onlineImageUrl,
  });
  final File? imageUrl;
  final String? onlineImageUrl;
  final bool isUpdate;
  final double size;
  final double borderRadius;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        children: [
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              border: Border.all(
                color: theme.colorScheme.primary, // Border color
                width: 2, // Border width
              ),
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: imageDisplay(),
            ),
          ),
          const SizedBox(height: 2),
          ElevatedButton(
            onPressed: onPressed,
            child: const Text('🖼️Add Image', textScaleFactor: 0.7),
          ),
        ],
      ),
    );
  }

  Widget imageDisplay() {
    if (onlineImageUrl != null && isUpdate == true && imageUrl == null) {
      return Image.network(onlineImageUrl!);
    } else if (imageUrl != null) {
      return Image.file(
        imageUrl!,
        fit: BoxFit.cover,
      );
    }

    return GeatPlatforms().isWeb
        ? const Icon(
            Icons.image,
          )
        : Image.asset(
            AssetsConstants.avatarImg,
            fit: BoxFit.cover,
          );
  }
}
