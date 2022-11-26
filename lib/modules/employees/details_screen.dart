import 'package:flutter/material.dart';
import 'package:oggetto_app_hakathon/utils/images.dart';

import '../../models/user_model.dart';
import '../../styles/styles.dart';
import '../../utils/localized_strings.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({required this.userModel, Key? key}) : super(key: key);

  final UserModel userModel;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
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
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: Text(
                    widget.userModel.name,
                    style: AppTextStyles.profileNameText,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.calendar_month),
                            Text('19.09.1987'),
                          ],
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: const [
                            Icon(Icons.place),
                            Text('Taganrog'),
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      child:
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white, side: const BorderSide(color: Colors.yellow)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.telegram_outlined,
                                color: Color(0xFF524600),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                'Wnahinat',
                                style: AppTextStyles.profileSubtitle,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 46.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFFE4C600),
                      borderRadius: BorderRadius.circular(16.0)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(22, 19, 22, 14),
                    child: Column(
                      children: [
                        const Text(
                          //todo: Доделать передачу данных
                          'Фронтенд разработчик',
                          style: AppTextStyles.profileSectionTitle,
                        ),
                        const SizedBox(
                          height: 13.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              'Грейд',
                              style: AppTextStyles.profileSubsectionTitle,
                            ),
                            Chip(
                              label: Text(
                                'Сеньор',
                                style: AppTextStyles.profileChipText,
                              ),
                              labelPadding: EdgeInsets.symmetric(
                                  horizontal: 32.0, vertical: 11.0),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 44.0, vertical: 7.0),
                          child: Container(
                            color: const Color(0xFFFFF1BA),
                            height: 1.0,
                            width: double.infinity,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              'Проект',
                              style: AppTextStyles.profileSubsectionTitle,
                            ),
                            Chip(
                              label: Text(
                                'Obi',
                                style: AppTextStyles.profileChipText,
                              ),
                              labelPadding: EdgeInsets.symmetric(
                                  horizontal: 32.0, vertical: 11.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 21.0,
                ),
                Wrap(
                  spacing: 15.0,
                  runSpacing: 15.0,
                  children: [
                    buildFactRect('Рыбак', 'Факт 1', screenWidth),
                    buildFactRect('Люблю кошек', 'Факт 2', screenWidth),
                    buildFactRect('Не люблю собак', 'Факт 3', screenWidth),
                  ],
                ),
                const SizedBox(
                  height: 21.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFactRect(String factText, String factNumber, double screenWidth) {
    return Container(
      width: screenWidth / 2 - 33,
      height: (screenWidth / 2 - 33) / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(color: const Color(0xFFEBD12D)),
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
            ),
          ),
        ],
      ),
    );
  }
}
