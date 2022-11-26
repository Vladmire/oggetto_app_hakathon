import 'package:flutter/material.dart';

import '../../styles/styles.dart';
import '../../utils/images.dart';
import '../../utils/localized_strings.dart';

class FirstGameScreen extends StatelessWidget {
  const FirstGameScreen({Key? key}) : super(key: key);

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 46,
            width: double.infinity,
            color: Color(0xFFFFF9ED),
            child: Center(
              child: Text('Кто хочет стать...', style: AppTextStyles.profileSectionTitle,),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.yellow,
                    width: 6.0,
                  ),
                ),
                child: CircleAvatar(
                  backgroundImage: AppAssets.profile.image(),
                  radius: screenWidth / 4,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}