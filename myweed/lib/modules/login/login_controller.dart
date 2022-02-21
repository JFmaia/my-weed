import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:myweed/modules/login/repositories/login_repository.dart';
import 'package:myweed/shared/auth/auth_controller.dart';
import 'package:myweed/shared/models/user_model.dart';
part 'login_controller.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  final authController = AuthController();
  final repository = Modular.get<LoginRepository>();

  //Observa se a visibilidade estar ativa ou não.
  @observable
  bool isVisible = true;

  //Muda o estado da visuaização da senha.
  @action
  void setVisible(bool i) {
    isVisible = i;
  }

  @action
  Future<void> login(BuildContext context) async {
    try {
      final response = await repository.login();
      final user = UserModel(
        name: response!.displayName!,
        imageURL: response.photoUrl,
      );
      authController.setUser(context, user);
      print(response);
    } catch (error) {
      authController.setUser(context, null);
      print(error);
    }
  }
}
