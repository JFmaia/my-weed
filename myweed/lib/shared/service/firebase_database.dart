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
}
