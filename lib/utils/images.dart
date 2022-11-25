import 'package:flutter/material.dart';

enum AppAssets {
  appIcon,
  companyLogo,
}

extension AssetImageExt on AppAssets {
  AssetImage image() {
    switch (this) {
      case AppAssets.appIcon:
        return const AssetImage('lib/assets/images/appIcon.png');
      case AppAssets.companyLogo:
        return const AssetImage('lib/assets/images/companyLogo.png');
    }
  }
}