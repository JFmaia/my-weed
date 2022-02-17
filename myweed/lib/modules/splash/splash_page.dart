import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:myweed/shared/theme/colors.dart';

//Splash do app.
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4)).then(
      (_) => Modular.to.pushReplacementNamed('/login'),
    );
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120,
              width: 120,
              child: Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            FutureBuilder(
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
                  return Container(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      color: AppColors.secundary,
                      strokeWidth: 2,
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
