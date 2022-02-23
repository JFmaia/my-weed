import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myweed/shared/service/app_database.dart';

class FirebaseDatabase implements AppDatabase {
  @override
  Future<GoogleSignInAccount?> googleSignIn() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    final response = await _googleSignIn.signIn();
    if (response == null) {
      return null;
    } else {
      return response;
    }
  }

  @override
  Future<UserCredential> loginEmailAndPassword(
    String email,
    String password,
  ) async {
    final response = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return response;
  }
}
