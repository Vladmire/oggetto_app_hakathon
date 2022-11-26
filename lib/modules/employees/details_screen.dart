import 'package:flutter/material.dart';
import 'package:oggetto_app_hakathon/utils/images.dart';

import '../../models/user_model.dart';
import '../../utils/localized_strings.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({required this.userModel, Key? key}) : super(key: key);

  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    double avatarRadius = MediaQuery.of(context).size.width / 4;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Text(AppStrings
            .of(context)
            .oggettoNameString),
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.center,
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
                  radius: avatarRadius,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(userModel.name),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Text(DateTime.fromMillisecondsSinceEpoch(userModel.birthDate).toString()),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.place),
                  Text('Taganrog'),
                ],
              ),
              const SizedBox(
                height: 46.0,
              ),
              Text(userModel.department.toString()),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Grade'),
                  const SizedBox(
                    width: 34.0,
                  ),
                  Chip(
                    label: Text(userModel.workGrade.toString()),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Project'),
                  const SizedBox(
                    width: 34.0,
                  ),
                  Chip(label: Text(userModel.project ?? ''))
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
