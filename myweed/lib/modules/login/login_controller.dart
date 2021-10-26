import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  //Observa se a visibilidade estar ativa ou não.
  @observable
  bool isVisible = true;

  //Muda o estado da visuaização da senha.
  @action
  void setVisible(bool i) {
    isVisible = i;
  }
}
