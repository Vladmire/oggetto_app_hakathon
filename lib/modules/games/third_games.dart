import 'package:flutter/material.dart';

import '../../styles/styles.dart';
import '../../utils/images.dart';

class ThirdGameScreen extends StatefulWidget {
  const ThirdGameScreen({Key? key}) : super(key: key);

  @override
  State<ThirdGameScreen> createState() => _ThirdGameScreenState();
}

class _ThirdGameScreenState extends State<ThirdGameScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Image(
          image: AppAssets.companyLogo.image(),
          width: screenWidth / 3,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            Container(
              height: 46,
              width: double.infinity,
              color: const Color(0xFFFFF9ED),
              child: const Center(
                child: Text(
                  'СООТВЕТСТВИЯ',
                  style: AppTextStyles.profileSectionTitle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.yellow,
                        width: 6.0,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AppAssets.profile.image(),
                      radius: screenWidth / 7,
                    ),
                  ),
                  buildFactRect('Не любит обниматься', screenWidth),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.yellow,
                        width: 6.0,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AppAssets.profile2.image(),
                      radius: screenWidth / 7,
                    ),
                  ),
                  buildFactRect('рыбак', screenWidth),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.yellow,
                        width: 6.0,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AppAssets.profile3.image(),
                      radius: screenWidth / 7,
                    ),
                  ),
                  buildFactRect('Считает,что СССР не существовал', screenWidth),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.yellow,
                        width: 6.0,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AppAssets.profile4.image(),
                      radius: screenWidth / 7,
                    ),
                  ),
                  buildFactRect('Фанат ММА боев', screenWidth),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFactRect(
      String factText, double screenWidth,) {
    bool isTrue = false;
    return GestureDetector(
      onTap: () {
        setState(() {
        });
      },
      child: Container(
        width: screenWidth / 2 - 33,
        height: (screenWidth / 2 - 33) / 3 * 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
              color: isTrue ? Colors.green : const Color(0xFFEBD12D), width: 2),
        ),
        child: Center(
          child: Text(
            factText,
            style: AppTextStyles.factTitle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}