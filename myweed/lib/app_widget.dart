import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:myweed/shared/theme/colors.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Weed',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.primary,
      ),
    ).modular();
  }
}
