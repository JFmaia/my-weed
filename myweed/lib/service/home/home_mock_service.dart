import 'package:myweed/service/home/home_service.dart';
import 'package:myweed/shared/models/categorys.dart';

class HomeMockService implements HomeService {
  static final List<Categorys> _list = [
    Categorys(
      id: "1",
      text: "Sativas",
      isSelected: false,
    ),
    Categorys(
      id: "2",
      text: "Indicas",
      isSelected: false,
    ),
    Categorys(
      id: "3",
      text: "Hibridas",
      isSelected: false,
    ),
    Categorys(
      id: "4",
      text: "Extrações",
      isSelected: false,
    ),
    Categorys(
      id: "5",
      text: "Comestiveis",
      isSelected: false,
    ),
    Categorys(
      id: "6",
      text: "Acessórios",
      isSelected: false,
    ),
    Categorys(
      id: "7",
      text: "Prençada",
      isSelected: false,
    ),
    Categorys(
      id: "8",
      text: "Vibrantes",
      isSelected: false,
    ),
  ];

  @override
  List<Categorys> listCategorys() {
    return _list;
  }
}
