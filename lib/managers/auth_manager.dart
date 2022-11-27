import 'package:oggetto_app_hakathon/managers/locator.dart';
import 'package:oggetto_app_hakathon/managers/users_manager.dart';
import 'package:oggetto_app_hakathon/models/user_model.dart';

class AuthorizationManager {
  UsersManager manager = locator<UsersManager>();

  // Future<bool> checkAuth(String login, String password) async {
  //   List<UserModel> users = await manager.getUsers();
  //   for (var user in users) {
  //     if (user.login == login) {
  //       if (user.password == password) {
  //         return true;
  //       }
  //     }
  //   }
  //   return false;
  // }
}