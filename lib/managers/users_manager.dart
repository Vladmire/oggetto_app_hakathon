import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:oggetto_app_hakathon/models/enums.dart';
import 'package:oggetto_app_hakathon/models/user_model.dart';
import 'package:path_provider/path_provider.dart';

class UsersManager extends ChangeNotifier {
  static const String USERS_FILE = "users.json";

  UserModel saveUser({
    required UserRole role,
    required String login,
    required String password,
    required String name,
    required String surname,
    required int birthDate,
    required DepartmentType department,
  }) {
    UserModel model = UserModel(
      role: role,
      login: login,
      password: password,
      name: name,
      surname: surname,
      birthDate: birthDate,
      department: department,
    );
    _saveToUserFile(model);
    return model;
  }

  void _saveToUserFile(UserModel model) async {
    var file = await _localUsersFile;
    List<UserModel> models = [];
    if (file.existsSync()) {
      models = await _readFromFile(file);
      models.insert(0, model);
    } else {
      models.insert(0, model);
    }
    // Encode to json string
    String json = jsonEncode(models);
    // Save to file string
    file.writeAsString(json);
    notifyListeners();
  }

  Future<File> get _localUsersFile async {
    final path = await _localPath;
    return File('$path/$USERS_FILE');
  }

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<List<UserModel>> _readFromFile(File file) async {
    final json = await file.readAsString();
    List<dynamic> modelsContents = jsonDecode(json);
    return List<UserModel>.from(
        modelsContents.map((e) => UserModel.fromJson(e)));
  }
}
