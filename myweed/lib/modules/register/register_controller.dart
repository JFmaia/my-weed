import 'package:mobx/mobx.dart';
part 'register_controller.g.dart';

class RegisterController = _RegisterController with _$RegisterController;

abstract class _RegisterController with Store {
  @observable
  bool isVisible = false;
  @observable
  bool isPasswordCharacters = false;
  @observable
  bool isPasswordNumber = false;

  @action
  void setVisible(bool i) {
    isVisible = i;
  }

  @action
  void onPasswordChanged(String password) {
    final numericRegex = RegExp(r'[0-9]');

    isPasswordCharacters = false;
    if (password.length >= 8) isPasswordCharacters = true;

    isPasswordNumber = false;
    if (numericRegex.hasMatch(password)) isPasswordNumber = true;
  }
}
