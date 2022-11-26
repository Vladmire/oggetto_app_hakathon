import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:oggetto_app_hakathon/managers/users_manager.dart';
import 'package:oggetto_app_hakathon/models/enums.dart';
import 'package:oggetto_app_hakathon/modules/router/app_router.dart';
import 'package:oggetto_app_hakathon/utils/localized_strings.dart';

import '../../managers/locator.dart';
import '../../models/user_model.dart';
import '../../utils/custom_widget_utils.dart';
import 'package:oggetto_app_hakathon/utils/images.dart';

class EmployeesScreen extends StatefulWidget {
  const EmployeesScreen({required this.department, Key? key}) : super(key: key);

  final DepartmentType department;

  @override
  State<EmployeesScreen> createState() => _EmployeesScreenState();
}

class _EmployeesScreenState extends State<EmployeesScreen> {
  final CustomWidgetUtils _utils = locator<CustomWidgetUtils>();
  final UsersManager _usersManager = locator<UsersManager>();
  final TextEditingController _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                    borderRadius: BorderRadius.circular(4.0)
                  ),
                  labelText: AppStrings.of(context).locationString,
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.yellow, width: 2.0),
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
          Text('title'),
          Expanded(
            child: _buildList(widget.department, _usersManager.users),
          )
        ],
      ),
    );
  }

  Widget _buildList(DepartmentType departmentType, List<UserModel> users) {
    List<UserModel> departmentUsers = [];
    for (var element in users) {
      if (element.department == departmentType) {
        departmentUsers.add(element);
      }
    }
    List<Widget> listTiles = [];
    for (var element in departmentUsers) {
      Widget listTile = ListTile(

        onTap: () => context.router.push(DetailsScreenRoute(userModel: element)),
        leading: CircleAvatar(
          backgroundImage: AppAssets.appIcon.image(),
          radius: 28.0,
        ),
        title: Text(element.name),
        subtitle: Text(element.department.toString()),
        tileColor: Color(0xFFFFF9ED),
      );
      listTiles.add(listTile);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        children: listTiles,
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
