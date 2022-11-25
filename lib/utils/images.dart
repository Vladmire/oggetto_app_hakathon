import 'package:flutter/material.dart';

enum AppAssets {
  appIcon,
  companyLogo,
  profile,

}

extension AssetImageExt on AppAssets {
  AssetImage image() {
    switch (this) {
      case AppAssets.appIcon:
        return const AssetImage('lib/assets/images/google@3x.png');
      case AppAssets.companyLogo:
        return const AssetImage('lib/assets/images/companyLogo.png');
      case AppAssets.profile:
        return const AssetImage('lib/assets/images/profile@3x.png');
    }
  }
}