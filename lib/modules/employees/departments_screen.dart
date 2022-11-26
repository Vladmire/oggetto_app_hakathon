import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:oggetto_app_hakathon/models/enums.dart';
import 'package:oggetto_app_hakathon/modules/router/app_router.dart';
import 'package:oggetto_app_hakathon/styles/styles.dart';
import 'package:oggetto_app_hakathon/utils/images.dart';

import '../../managers/locator.dart';
import '../../managers/users_manager.dart';
import '../../utils/custom_widget_utils.dart';
import '../../utils/localized_strings.dart';

class DepartmentsScreen extends StatefulWidget {
  const DepartmentsScreen({Key? key}) : super(key: key);

  @override
  State<DepartmentsScreen> createState() => _DepartmentsScreenState();
}

class _DepartmentsScreenState extends State<DepartmentsScreen> {
  final CustomWidgetUtils _utils = locator<CustomWidgetUtils>();

  final UsersManager _usersManager = locator<UsersManager>();

  final TextEditingController _controller = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 2 - 48;
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
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Form(
              key: _formKey,
              child: TextFormField(
                controller: _controller,
                // style: AppTextStyles.inputText,
                maxLines: 1,
                onChanged: _onChangedText,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0)),
                  labelText: AppStrings.of(context).locationString,
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.yellow, width: 2.0),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  // labelStyle: AppTextStyles.textFieldLabel,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: AppStrings.of(context).locationString,
                  suffixIcon: _controller.text.isEmpty
                      ? null
                      : IconButton(
                          onPressed: _onClearTap,
                          icon: Icon(
                            Icons.cancel_outlined,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Отделы компании',
              style: AppTextStyles.profileSectionTitle,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 15.0,
                  runSpacing: 15.0,
                  children: _buildDepartments(width: width, context: context),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _buildDepartments(
      {required double width, required BuildContext context}) {
    List<Widget> items = [];
    for (var element in DepartmentType.values) {
      switch (element) {
        case DepartmentType.backend:
          Widget item = _buildDepartment(
            onTap: () =>
                context.router.push(EmployeesScreenRoute(department: element)),
            width: width,
            image: AppAssets.companyLogo.image(),
            title: AppStrings.of(context).backendString,
          );
          items.add(item);
          break;
        case DepartmentType.frontend:
          Widget item = _buildDepartment(
            onTap: () =>
                context.router.push(EmployeesScreenRoute(department: element)),
            width: width,
            image: AppAssets.companyLogo.image(),
            title: AppStrings.of(context).frontendString,
          );
          items.add(item);
          break;
        case DepartmentType.mobile:
          Widget item = _buildDepartment(
            onTap: () =>
                context.router.push(EmployeesScreenRoute(department: element)),
            width: width,
            image: AppAssets.companyLogo.image(),
            title: AppStrings.of(context).mobileString,
          );
          items.add(item);
          break;
        case DepartmentType.designs:
          Widget item = _buildDepartment(
            onTap: () =>
                context.router.push(EmployeesScreenRoute(department: element)),
            width: width,
            image: AppAssets.companyLogo.image(),
            title: AppStrings.of(context).designString,
          );
          items.add(item);
          break;
        case DepartmentType.teamLeading:
          Widget item = _buildDepartment(
            onTap: () =>
                context.router.push(EmployeesScreenRoute(department: element)),
            width: width,
            image: AppAssets.companyLogo.image(),
            title: AppStrings.of(context).teamleadingString,
          );
          items.add(item);
          break;
        case DepartmentType.analytics:
          Widget item = _buildDepartment(
            onTap: () =>
                context.router.push(EmployeesScreenRoute(department: element)),
            width: width,
            image: AppAssets.companyLogo.image(),
            title: AppStrings.of(context).analyticsString,
          );
          items.add(item);
          break;
        case DepartmentType.accounting:
          Widget item = _buildDepartment(
            onTap: () =>
                context.router.push(EmployeesScreenRoute(department: element)),
            width: width,
            image: AppAssets.companyLogo.image(),
            title: AppStrings.of(context).accountingString,
          );
          items.add(item);
          break;
        case DepartmentType.hr:
          Widget item = _buildDepartment(
            onTap: () =>
                context.router.push(EmployeesScreenRoute(department: element)),
            width: width,
            image: AppAssets.companyLogo.image(),
            title: AppStrings.of(context).hrString,
          );
          items.add(item);
          break;
        case DepartmentType.techSupport:
          Widget item = _buildDepartment(
            onTap: () =>
                context.router.push(EmployeesScreenRoute(department: element)),
            width: width,
            image: AppAssets.companyLogo.image(),
            title: AppStrings.of(context).techSupportString,
          );
          items.add(item);
          break;
        case DepartmentType.ads:
          Widget item = _buildDepartment(
            onTap: () =>
                context.router.push(EmployeesScreenRoute(department: element)),
            width: width,
            image: AppAssets.companyLogo.image(),
            title: AppStrings.of(context).adsString,
          );
          items.add(item);
          break;
      }
    }
    return items;
  }

  Widget _buildDepartment({
    required Function() onTap,
    required double width,
    required AssetImage image,
    required String title,
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

  void _onChangedText(String text) {
    setState(() {
      //todo: add search in models
    });
  }

  void _onClearTap() {
    setState(
      () {
        _controller.clear();
      },
    );
  }
}
