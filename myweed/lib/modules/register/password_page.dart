import 'package:flutter/material.dart';
import 'package:myweed/shared/theme/colors.dart';

class PassawordPage extends StatelessWidget {
  const PassawordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primary,
        leading: BackButton(
          color: AppColors.secundary,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
