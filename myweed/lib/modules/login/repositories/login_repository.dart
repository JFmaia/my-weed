import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class LoginRepository {
  Future<GoogleSignInAccount?> login();
  Future<UserCredential?> loginEmailAndPassword(String email, String password);
}
