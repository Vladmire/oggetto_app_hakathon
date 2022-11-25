import 'package:flutter/material.dart';

class DepartmentsScreen extends StatelessWidget {
  const DepartmentsScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 2 - 15;
    return Scaffold(
      appBar: AppBar(),
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

  Widget _buildDepartments({required double width,}) {
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          
        ],
      ),
    );
  }
}