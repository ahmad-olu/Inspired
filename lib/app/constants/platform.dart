import 'package:flutter/foundation.dart';

class GeatPlatforms {
  factory GeatPlatforms() {
    return _singleton;
  }
  GeatPlatforms._internal();
  static final GeatPlatforms _singleton = GeatPlatforms._internal();

  bool get isDesktop =>
      defaultTargetPlatform == TargetPlatform.macOS ||
      defaultTargetPlatform == TargetPlatform.linux ||
      defaultTargetPlatform == TargetPlatform.windows;
  bool get isMobile =>
      defaultTargetPlatform == TargetPlatform.iOS ||
      defaultTargetPlatform == TargetPlatform.android;
  bool get isWeb => kIsWeb;
}

//if (GeatPlatforms().isMobile)