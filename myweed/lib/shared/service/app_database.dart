import 'package:myweed/shared/service/firebase_database.dart';

abstract class AppDatabase {
  static final AppDatabase instance = FirebaseDatabase();
  Future<void> googleSignIn();
}
