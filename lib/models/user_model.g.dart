// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      role: $enumDecode(_$UserRoleEnumMap, json['role']),
      login: json['login'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      birthDate: json['birthDate'] as int,
      department: $enumDecode(_$DepartmentTypeEnumMap, json['department']),
      project: json['project'] as String?,
      workGrade: $enumDecodeNullable(_$WorkGradeEnumMap, json['workGrade']),
      firstFact: json['firstFact'] as String?,
      secondFact: json['secondFact'] as String?,
      thirdFact: json['thirdFact'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'role': _$UserRoleEnumMap[instance.role]!,
      'login': instance.login,
      'password': instance.password,
      'name': instance.name,
      'department': _$DepartmentTypeEnumMap[instance.department]!,
      'workGrade': _$WorkGradeEnumMap[instance.workGrade],
      'project': instance.project,
      'birthDate': instance.birthDate,
      'firstFact': instance.firstFact,
      'secondFact': instance.secondFact,
      'thirdFact': instance.thirdFact,
    };

const _$UserRoleEnumMap = {
  UserRole.regularUser: 'regularUser',
  UserRole.admin: 'admin',
};

const _$DepartmentTypeEnumMap = {
  DepartmentType.backend: 'backend',
  DepartmentType.frontend: 'frontend',
  DepartmentType.mobile: 'mobile',
  DepartmentType.designs: 'designs',
  DepartmentType.teamLeading: 'teamLeading',
  DepartmentType.analytics: 'analytics',
  DepartmentType.accounting: 'accounting',
  DepartmentType.hr: 'hr',
  DepartmentType.techSupport: 'techSupport',
  DepartmentType.ads: 'ads',
};

const _$WorkGradeEnumMap = {
  WorkGrade.junior: 'junior',
  WorkGrade.middle: 'middle',
  WorkGrade.senior: 'senior',
};
