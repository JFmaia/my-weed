import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:myweed/app_module.dart';
import 'package:myweed/app_widget.dart';

void main() {
  return runApp(
    ModularApp(
      module: AppModule(),
      child: AppFirebase(),
    ),
  );
}

class AppFirebase extends StatefulWidget {
  @override
  _AppFirebaseState createState() => _AppFirebaseState();
}

class _AppFirebaseState extends State<AppFirebase> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Material(
            child: Center(
              child: Text(
                "Não é possível inicializar o Firebase",
                textDirection: TextDirection.ltr,
              ),
            ),
          );
        } else {
          return AppWidget();
        }
      },
    );
  }
}
