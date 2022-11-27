import 'package:flutter/material.dart';

enum AppAssets {
  appIcon,
  companyLogo,
  profile,
  greetings,
  profile2,
  profile3,
  profile4,
  redArrow,
  greenArrow,
  firstGame,
  secondGame,
  thirdGame,
  taganrog,
  rostov,
  home,

}

extension AssetImageExt on AppAssets {
  AssetImage image() {
    switch (this) {
      case AppAssets.appIcon:
        return const AssetImage('lib/assets/images/google@3x.png');
      case AppAssets.companyLogo:
        return const AssetImage('lib/assets/images/company_logo@3x.png');
      case AppAssets.profile:
        return const AssetImage('lib/assets/images/profile@3x.png');
      case AppAssets.greetings:
        return const AssetImage('lib/assets/images/greetings@3x.png');
      case AppAssets.profile2:
        return const AssetImage('lib/assets/images/profile2@3x.png');
      case AppAssets.profile3:
        return const AssetImage('lib/assets/images/profile3@3x.png');
      case AppAssets.profile4:
        return const AssetImage('lib/assets/images/profile4@3x.png');
      case AppAssets.redArrow:
        return const AssetImage('lib/assets/images/red_arrow@3.png');
      case AppAssets.greenArrow:
        return const AssetImage('lib/assets/images/green_arrow@3x.png');
      case AppAssets.firstGame:
        return const AssetImage('lib/assets/images/first_game@3x.png');
      case AppAssets.secondGame:
        return const AssetImage('lib/assets/images/second_game@3x.png');
      case AppAssets.thirdGame:
        return const AssetImage('lib/assets/images/third_game@3x.png');
      case AppAssets.taganrog:
        return const AssetImage('lib/assets/images/taganrog@3x.png');
      case AppAssets.rostov:
        return const AssetImage('lib/assets/images/rostov@3x.png');
      case AppAssets.home:
        return const AssetImage('lib/assets/images/home@3x.png');
    }
  }
}