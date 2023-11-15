import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:geat/app/constants/appwrite_const.dart';

class GlobalCachedNetworkImage extends StatelessWidget {
  const GlobalCachedNetworkImage({
    required this.imageId,
    super.key,
  });
  final String imageId;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CachedNetworkImage(
      imageUrl: AppwriteConst.imageUrl(imageId),
      //memCacheWidth: 200,
      //height: 250,
      fit: BoxFit.fitHeight,
      progressIndicatorBuilder: (context, url, progress) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            Text(
              'Image in [${progress.progress}]',
              style: theme.textTheme.headlineMedium,
            ),
          ],
        );
      },
      errorWidget: (context, url, error) {
        return Center(
          child: Column(
            children: [
              Icon(
                Icons.error_outline,
                color: Colors.red[900],
              ),
              Text(
                'Error loading Image...',
                style: theme.textTheme.headlineMedium,
              ),
            ],
          ),
        );
      },
    );
  }
}
