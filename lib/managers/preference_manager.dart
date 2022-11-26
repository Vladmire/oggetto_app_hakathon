import 'package:shared_preferences/shared_preferences.dart';

enum PreferenceKey { isAuthorized, login, password }

extension PreferenceKeyExt on PreferenceKey {
  String key() {
    switch (this) {
      case PreferenceKey.isAuthorized:
        return 'isAuthorized';
      case PreferenceKey.login:
        return 'login';
      case PreferenceKey.password:
        return 'password';
    }
  }
}

class PreferenceManager {
  late final SharedPreferences _preferences;

  init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  bool isAuthorized() {
    return _boolForKey(PreferenceKey.isAuthorized, defaultValue: false);
  }

  bool _boolForKey(PreferenceKey key, {bool defaultValue = false}) {
    return _preferences.getBool(key.key()) ?? defaultValue;
  }

  void setIsAuthorized(bool value) {
    _setBoolForKey(value, PreferenceKey.isAuthorized);
  }

  void _setBoolForKey(bool value, PreferenceKey key) {
    _preferences.setBool(key.key(), value);
  }

  String currentLogin() {
    return _currentLogin(PreferenceKey.login);
  }

  String _currentLogin(PreferenceKey key) {
    return _preferences.getString(key.key()) ?? '';
  }

  void setLogin(String value) {
    _setCurrentLogin(PreferenceKey.login, value);
  }

  void _setCurrentLogin(PreferenceKey key, String value) {
    _preferences.setString(key.key(), value);
  }

  String currentPassword() {
    return _currentPassword(PreferenceKey.password);
  }

  String _currentPassword(PreferenceKey key) {
    return _preferences.getString(key.key()) ?? '';
  }

  void setPassword(String value) {
    _setCurrentPassword(PreferenceKey.password, value);
  }

  void _setCurrentPassword(PreferenceKey key, String value) {
    _preferences.setString(key.key(), value);
  }

}