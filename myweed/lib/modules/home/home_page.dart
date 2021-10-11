import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:myweed/components/container_bar/container_bar.dart';
import 'package:myweed/modules/favorites/favorites_page.dart';
import 'package:myweed/modules/home/home_controller.dart';
import 'package:myweed/modules/home_page/page_home.dart';
import 'package:myweed/modules/profile/profile_page.dart';
import 'package:myweed/modules/search/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: ContainerBar(),
      ),
      body: [
        PageHome(
          key: UniqueKey(),
        ),
        SearchPage(
          key: UniqueKey(),
        ),
        FavoritesPage(
          key: UniqueKey(),
        ),
        ProfilePage(
          key: UniqueKey(),
        ),
      ][homeController.currentPage],
      bottomNavigationBar: Container(
        color: Colors.transparent,
        height: 90,
        child: Observer(
          builder: (context) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  homeController.setPage(0);
                  setState(() {});
                },
                icon: Icon(
                  homeController.currentPage == 0
                      ? Icons.home
                      : Icons.home_outlined,
                ),
              ),
              IconButton(
                onPressed: () {
                  homeController.setPage(1);
                  setState(() {});
                },
                icon: Icon(
                  Icons.search_rounded,
                ),
              ),
              IconButton(
                onPressed: () {
                  homeController.setPage(2);
                  setState(() {});
                },
                icon: Icon(
                  homeController.currentPage == 2
                      ? Icons.star
                      : Icons.star_border_outlined,
                ),
              ),
              IconButton(
                onPressed: () {
                  homeController.setPage(3);
                  setState(() {});
                },
                icon: Icon(
                  homeController.currentPage == 3
                      ? Icons.person
                      : Icons.person_outline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
