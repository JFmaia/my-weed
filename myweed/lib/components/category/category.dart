import 'package:flutter/material.dart';
import 'package:myweed/service/home/home_service.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:custom_fade_animation/custom_fade_animation.dart';
import 'package:myweed/shared/theme/colors.dart';

class Category extends StatefulWidget {
  const Category({
    Key? key,
  }) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final _list = HomeService().listCategorys();

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      1.2,
      Container(
        padding: EdgeInsets.only(top: 10, left: 15),
        height: 45,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _list.length,
          itemBuilder: (BuildContext context, int index) {
            return FadeAnimation(
              0.8,
              GestureDetector(
                onTap: () {
                  setState(() {
                    _list[index].isSelected = !_list[index].isSelected;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: _list[index].isSelected
                          ? AppColors.secundary
                          : Colors.transparent,
                      border: Border.all(
                        color: _list[index].isSelected
                            ? Colors.transparent
                            : AppColors.secundary,
                        width: 1.5,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: FittedBox(
                            child: Text(
                              _list[index].text,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: _list[index].isSelected
                                    ? AppColors.primary
                                    : AppColors.secundary,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
