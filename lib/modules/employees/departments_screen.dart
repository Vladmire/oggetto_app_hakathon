import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:oggetto_app_hakathon/modules/router/app_router.dart';
import 'package:oggetto_app_hakathon/utils/images.dart';

import '../../utils/localized_strings.dart';

class DepartmentsScreen extends StatelessWidget {
  const DepartmentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 2 - 48;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(AppStrings.of(context).oggettoNameString),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: ListView(
          children: [
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 15.0,
              runSpacing: 15.0,
              children: [
                _buildDepartments(
                  width: width,
                  title: 'title',
                  image: AppAssets.appIcon.image(),
                  onTap: () => context.router.push(EmployeesScreenRoute()),
                ),
                _buildDepartments(
                  width: width,
                  title: 'title',
                  image: AppAssets.appIcon.image(),
                  onTap: () => context.router.push(EmployeesScreenRoute()),
                ),
                _buildDepartments(
                  width: width,
                  title: 'title',
                  image: AppAssets.appIcon.image(),
                  onTap: () => context.router.push(EmployeesScreenRoute()),
                ),
                _buildDepartments(
                  width: width,
                  title: 'title',
                  image: AppAssets.appIcon.image(),
                  onTap: () => context.router.push(EmployeesScreenRoute()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDepartments({
    required double width,
    required String title,
    required AssetImage image,
    required Function() onTap,
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
            borderRadius: BorderRadius.circular(10.0),
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
