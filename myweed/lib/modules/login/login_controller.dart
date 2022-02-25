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
  Future<void> loginGoogle(BuildContext context) async {
    try {
      final response = await repository.login();
      final user = UserModel(
        name: response!.displayName!,
        imageURL: response.photoUrl,
        email: response.email,
        password: '',
      );
      authController.setUser(context, user);
      print(response);
    } catch (error) {
      authController.setUser(context, null);
      print(error);
    }
  }

  @action
  Future<void> loginEmailAndPassword(
    BuildContext context,
    String email,
    String password,
  ) async {
    final response = await repository.loginEmailAndPassword(email, password);
    if (response == null) {
      authController.setUser(context, null);
    } else {
      final user = UserModel(
        email: response.user!.email,
        name: response.user!.displayName,
        password: password,
        imageURL: '',
      );
      authController.setUser(context, user);
    }
  }

  @action
  String? verfEmail(String email) {
    if (email.isEmpty) {
      return "Por favor digite seu email!";
    } else {
      return null;
    }
  }

  @action
  String? verfPassword(String password) {
    if (password.isEmpty) {
      return "Por favor digite sua senha!";
    } else {
      return null;
    }
  }
}
