import 'package:flutter/material.dart';
import 'package:oggetto_app_hakathon/utils/images.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double avatarRadius = MediaQuery.of(context).size.width / 4;
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                child: CircleAvatar(
                  backgroundImage: AppAssets.profile.image(),
                  radius: avatarRadius,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.yellow,
                    width: 6.0,
                  ),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('surname'),
              Text('name and fatherName'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Text('19.09.1987'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.place),
                  Text('Taganrog'),
                ],
              ),
              SizedBox(
                height: 46.0,
              ),
              Text('Frontend developer'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Grade'),
                  SizedBox(
                    width: 34.0,
                  ),
                  Chip(
                    label: Text('Senior'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Project'),
                  SizedBox(
                    width: 34.0,
                  ),
                  Chip(label: Text('Obi'))
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
