// ignore: import_of_legacy_library_into_null_safe
import 'package:custom_fade_animation/custom_fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:myweed/components/category/category.dart';
import 'package:myweed/components/container_bar/container_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: ContainerBar(),
      ),
      body: Column(
        children: [
          Category(),
          SizedBox(
            height: 20,
          ),
          FadeAnimation(
            1.5,
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => Container(),
            ),
          ),
        ],
      ),
    );
  }
}
