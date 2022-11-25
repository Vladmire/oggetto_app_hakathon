import 'package:flutter/material.dart';
import 'package:oggetto_app_hakathon/utils/images.dart';

class DepartmentsScreen extends StatelessWidget {
  const DepartmentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 2 - 15;
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Wrap(
          spacing: 10.0,
          runSpacing: 10.0,
          children: [
            _buildDepartments(width: width),
            _buildDepartments(width: width),
            _buildDepartments(width: width),
            _buildDepartments(width: width),
          ],
        ),
      ),
    );
  }

  Widget _buildDepartments({
    required double width,
  }) {
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
        // color: Colors.green,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: Image(image: AppAssets.appIcon.image()),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text('data'),
            )
          ],
        ),
      ),
    );
  }
}
