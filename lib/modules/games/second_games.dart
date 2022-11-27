import 'package:flutter/material.dart';

import '../../styles/styles.dart';
import '../../utils/images.dart';

class SecondGameScreen extends StatefulWidget {
  const SecondGameScreen({Key? key}) : super(key: key);

  @override
  State<SecondGameScreen> createState() => _SecondGameScreenState();
}

class _SecondGameScreenState extends State<SecondGameScreen> {
  final items = List<String>.generate(4, (i) => 'Item ${i + 1}');
  int index = 0;

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
      body: IndexedStack(
        index: 0,
        children: [
          Dismissible(
            onDismissed: (direction) {
              // Remove the item from the data source.
              setState(() {
                items.removeAt(index);
                index += 1;
              });

              // Then show a snackbar.
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('dismissed')));
            },
            background: Container(color: Colors.red),
            key: Key(items[0]),
            child: Column(
              children: [
                Container(
                  height: 46,
                  width: double.infinity,
                  color: const Color(0xFFFFF9ED),
                  child: const Center(
                    child: Text(
                      'OGGINTER',
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
                        radius: screenWidth / 3,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 36.0),
                  child: Text(
                    'Любит ли Филатов Денис Обниматься?',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.gameQuestionText,
                  ),
                ),
              ],
            ),
          ),
          Dismissible(
            onDismissed: (direction) {
              // Remove the item from the data source.
              setState(() {
                items.removeAt(index);
              });

              // Then show a snackbar.
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('dismissed')));
            },
            background: Container(color: Colors.red),
            key: Key(items[1]),
            child: Column(
              children: [
                Container(
                  height: 46,
                  width: double.infinity,
                  color: const Color(0xFFFFF9ED),
                  child: const Center(
                    child: Text(
                      'OGGINTER',
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
                        radius: screenWidth / 3,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 36.0),
                  child: Text(
                    'Любит ли Филатов Денис Обниматься?',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.gameQuestionText,
                  ),
                ),
              ],
            ),
          ),
          Dismissible(
            onDismissed: (direction) {
              // Remove the item from the data source.
              setState(() {
                items.removeAt(index);
              });

              // Then show a snackbar.
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('dismissed')));
            },
            background: Container(color: Colors.red),
            key: Key(items[2]),
            child: Column(
              children: [
                Container(
                  height: 46,
                  width: double.infinity,
                  color: const Color(0xFFFFF9ED),
                  child: const Center(
                    child: Text(
                      'OGGINTER',
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
                        radius: screenWidth / 3,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 36.0),
                  child: Text(
                    'Любит ли Филатов Денис Обниматься?',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.gameQuestionText,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
