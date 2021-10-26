import 'package:mobx/mobx.dart';
part 'register_controller.g.dart';

class RegisterController = _RegisterController with _$RegisterController;

abstract class _RegisterController with Store {
  //Obeserva se a senha estar visivel ou não.
  @observable
  bool isVisible = false;
  //Observa se possui ou não caracteres.
  @observable
  bool isPasswordCharacters = false;
  //Observa se possui ou não numeros.
  @observable
  bool isPasswordNumber = false;

  //Muda do estado da visibilidade da senha.
  @action
  void setVisible(bool i) {
    isVisible = i;
  }

  // Função que verifica sé a ou não caracteres e numeros, mudando estado das variaveis.
  @action
  void onPasswordChanged(String password) {
    final numericRegex = RegExp(r'[0-9]');

    isPasswordCharacters = false;
    if (password.length >= 8) isPasswordCharacters = true;

    isPasswordNumber = false;
    if (numericRegex.hasMatch(password)) isPasswordNumber = true;
  }
}
