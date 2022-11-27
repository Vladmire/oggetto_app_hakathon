import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:oggetto_app_hakathon/models/enums.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  AssetImage image;
  UserRole role;
  String login;
  String password;
  String name;
  DepartmentType department;
  WorkGrade? workGrade;
  String? project;
  int birthDate;
  String? firstFact;
  String? secondFact;
  String? thirdFact;

  UserModel({
    required this.image,
    required this.role,
    required this.login,
    required this.password,
    required this.name,
    required this.birthDate,
    required this.department,
    this.project,
    this.workGrade,
    this.firstFact,
    this.secondFact,
    this.thirdFact,
});

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.



}