import 'package:myweed/service/home/home_service.dart';
import 'package:myweed/shared/models/categorys.dart';

class HomeMockService implements HomeService {
  //Lista exemplo de categorias.
  static final List<Categorys> _list = [
    Categorys(
      id: "1",
      text: "Sativas",
    ),
    Categorys(
      id: "2",
      text: "Indicas",
    ),
    Categorys(
      id: "3",
      text: "Hibridas",
    ),
    Categorys(
      id: "4",
      text: "Extrações",
    ),
    Categorys(
      id: "5",
      text: "Comestiveis",
    ),
    Categorys(
      id: "6",
      text: "Acessórios",
    ),
    Categorys(
      id: "7",
      text: "Prençada",
    ),
    Categorys(
      id: "8",
      text: "Vibrantes",
    ),
  ];

  @override
  List<Categorys> listCategorys() {
    return _list;
  }
}
