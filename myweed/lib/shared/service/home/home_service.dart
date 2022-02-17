import 'package:myweed/shared/models/categorys.dart';
import 'home_mock_service.dart';

abstract class HomeService {
  List<Categorys> listCategorys();

  factory HomeService() {
    return HomeMockService();
  }
}
