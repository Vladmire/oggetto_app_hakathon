import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:oggetto_app_hakathon/modules/router/app_router.dart';
import 'package:oggetto_app_hakathon/utils/images.dart';

import '../../utils/localized_strings.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 2 - 48;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(AppStrings.of(context).oggettoNameString),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: ListView(
          children: [
            Wrap(
              spacing: 15.0,
              runSpacing: 15.0,
              children: [
                _buildGameCard(
                  onTap: () => context.router.push(FirstGameScreenRoute()),
                  width: width,
                  image: AppAssets.companyLogo.image(),
                  title: 'Кто хочет стать ...',
                ),
                _buildGameCard(
                  onTap: () => context.router.push(SecondGameScreenRoute()),
                  width: width,
                  image: AppAssets.companyLogo.image(),
                  title: 'Oggintter',
                ),
                _buildGameCard(
                  onTap: () => context.router.push(ThirdGameScreenRoute()),
                  width: width,
                  image: AppAssets.companyLogo.image(),
                  title: 'Соответствия',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGameCard({
    required Function() onTap,
    required double width,
    required AssetImage image,
    required String title,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shadowColor: Colors.black,
        elevation: 3,
        child: Container(
          width: width,
          height: width,
          decoration: BoxDecoration(
            color: const Color(0xFFFFF9ED),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Expanded(
                  child: Image(image: image),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(title),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
