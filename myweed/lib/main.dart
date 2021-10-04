import 'package:flutter/material.dart';
import 'package:myweed/modules/splash/splash_page.dart';
import 'package:myweed/shared/theme/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.primary,
        canvasColor: AppColors.secundary,
      ),
      home: SplashPage(),
    );
  }
}
