import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myweed/shared/service/firebase_database.dart';

abstract class AppDatabase {
  static final AppDatabase instance = FirebaseDatabase();
  Future<GoogleSignInAccount?> googleSignIn();
  Future<UserCredential> loginEmailAndPassword(String email, String password);
}
