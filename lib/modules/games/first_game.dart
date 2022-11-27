import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../styles/styles.dart';
import '../../utils/images.dart';
import '../../utils/localized_strings.dart';

class FirstGameScreen extends StatefulWidget {
  const FirstGameScreen({Key? key}) : super(key: key);

  @override
  State<FirstGameScreen> createState() => _FirstGameScreenState();
}

class _FirstGameScreenState extends State<FirstGameScreen> {
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
      body: ListView(
        children: [
          Container(
            height: 46,
            width: double.infinity,
            color: const Color(0xFFFFF9ED),
            child: const Center(
              child: Text(
                'Кто хочет стать...',
                style: AppTextStyles.profileSectionTitle,
              ),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 36.0),
                child: Text(
                  'Кем работает Мельников Кирилл?',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.profileNameText,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                child: Wrap(
                  spacing: 15.0,
                  runSpacing: 15.0,
                  children: [
                    buildFactRect('Дизайнер', 'Факт 1', screenWidth, false),
                    buildFactRect('Тестировщик', 'Факт 2', screenWidth, false),
                    buildFactRect(
                        'Бэкенд-разработчик', 'Факт 3', screenWidth, false),
                    buildFactRect(
                        'Фронтенд-разработчик', 'Факт 4', screenWidth, true),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFEC9F),
                        padding: EdgeInsets.symmetric(vertical: 12.0,),
                        minimumSize: Size(double.infinity, 0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                        )
                      ),
                      child: const Text(
                        'Открыть профиль',
                        style: AppTextStyles.factTitle,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    DottedBorder(
                      color: const Color(0xFFEBD12D),
                      strokeWidth: 1,
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(16.0),
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Center(
                            child: Text('Пропустить'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildFactRect(
      String factText, String factNumber, double screenWidth, bool answer) {
    bool isTrue = false;
    return GestureDetector(
      onTap: () {
        setState(() {
          if (answer) {
            isTrue = true;
          }
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
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  factNumber,
                  style: AppTextStyles.factSubtitle,
                ),
              ),
            ),
            Center(
              child: Text(
                factText,
                style: AppTextStyles.factTitle,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
