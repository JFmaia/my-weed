import 'package:myweed/modules/login/repositories/login_repository.dart';
import '../../../shared/service/app_database.dart';

class LoginRepositoryImpl implements LoginRepository {
  final AppDatabase database;

  LoginRepositoryImpl({
    required this.database,
  });

  @override
  Future<void> login() async {
    final response = await database.googleSignIn();
    return response;
  }
}
