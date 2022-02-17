import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:myweed/shared/auth/auth_controller.dart';
import 'repositories/login_repository.dart';

part 'login_controller.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  late LoginRepository repository;
  final authController = AuthController();

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
      final response = repository.login();
      authController.setUser(context, response);
      print(response);
    } catch (error) {
      authController.setUser(context, null);
      print(error);
    }
  }
}
