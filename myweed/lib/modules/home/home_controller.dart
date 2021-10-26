import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  //Observa quando o valor é mudado, avisando para ser mudado a pagina.
  @observable
  var currentPage = 0;

  //Ação que muda o valor da variavel, mudando assim a pagina.
  @action
  void setPage(int index) {
    currentPage = index;
  }
}
