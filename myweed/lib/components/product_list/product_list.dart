import 'package:flutter/material.dart';
import 'package:myweed/components/icon_grams/icon_grams.dart';
import 'package:myweed/shared/theme/colors.dart';

class ProductList extends StatelessWidget {
  final String imageUrl;
  const ProductList({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Container(
          width: 180,
          decoration: BoxDecoration(
            color: AppColors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  bottom: 0,
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: AssetImage(imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      child: IconGrams(quanty: 1),
                      bottom: 2,
                      right: 2,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  right: 2,
                  left: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sour Dive",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "R\$" + " 30,00",
                          style: TextStyle(
                            color: AppColors.secundary,
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 28,
                        width: 28,
                        child: Icon(
                          Icons.star_border,
                          color: AppColors.secundary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
