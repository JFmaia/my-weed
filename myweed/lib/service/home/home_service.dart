import 'package:myweed/service/home/home_mock_service.dart';
import 'package:myweed/shared/models/categorys.dart';

abstract class HomeService {
  List<Categorys> listCategorys();

  factory HomeService() {
    return HomeMockService();
  }
}
