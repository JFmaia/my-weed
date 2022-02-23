import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myweed/modules/login/repositories/login_repository.dart';
import '../../../shared/service/app_database.dart';

class LoginRepositoryImpl implements LoginRepository {
  final database = Modular.get<AppDatabase>();

  @override
  Future<GoogleSignInAccount?> login() async {
    var response = await database.googleSignIn();
    if (response == null) {
      return null;
    } else {
      return response;
    }
  }

  @override
  Future<UserCredential?> loginEmailAndPassword(
    String email,
    String password,
  ) async {
    var response = await database.loginEmailAndPassword(email, password);
    if (response.user == null) {
      return null;
    } else {
      return response;
    }
  }
}
