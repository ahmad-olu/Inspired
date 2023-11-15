import 'package:flutter/material.dart';
import 'package:geat/app/constants/app_assets.dart';
import 'package:geat/app/constants/platform.dart';
import 'package:geat/app/widget/global_cached_network_image.dart';

class AvatarContainer extends StatelessWidget {
  const AvatarContainer({
    required this.imageId,
    required this.size,
    required this.borderRadius,
    super.key,
  });
  final String imageId;
  final double size;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
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
        child: imageId.isEmpty
            ? GeatPlatforms().isWeb
                ? const Icon(
                    Icons.image,
                  )
                : Image.asset(
                    AssetsConstants.avatarImg,
                    fit: BoxFit.cover,
                  )
            : GlobalCachedNetworkImage(
                imageId: imageId,
              ),
      ),
    );
  }
}
