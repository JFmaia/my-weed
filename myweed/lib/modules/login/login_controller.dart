import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  @observable
  bool isVisible = true;

  @action
  void setVisible(bool i) {
    isVisible = i;
  }
}
