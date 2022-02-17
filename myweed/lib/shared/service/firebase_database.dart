import 'package:google_sign_in/google_sign_in.dart';
import 'package:myweed/shared/service/app_database.dart';

class FirebaseDatabase implements AppDatabase {
  @override
  Future<void> googleSignIn() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      final response = await _googleSignIn.signIn();
      print(response);
    } catch (error) {
      print(error);
    }
  }
}
