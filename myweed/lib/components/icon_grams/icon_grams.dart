import 'package:flutter/material.dart';
import 'package:myweed/shared/theme/colors.dart';

//IconGrams é o icone da quantidade de gramas do produto.
class IconGrams extends StatelessWidget {
  final int quanty;

  const IconGrams({
    Key? key,
    required this.quanty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.grey,
          border: Border.all()),
      child: Center(
        child: Text(
          "${this.quanty}" + "g",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
