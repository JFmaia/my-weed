import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:myweed/modules/favorites/favorites_page.dart';
import 'package:myweed/modules/home/home_controller.dart';
import 'package:myweed/modules/home_page/page_home.dart';
import 'package:myweed/modules/profile/profile_page.dart';
import 'package:myweed/modules/search/search_page.dart';

/*Essa page nada mais é que o inicio de todas a outras paginas, na Home será escolhido qual pagina será
mostrada na tela.
*/

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final _homeController = HomeController();
    return Observer(
      builder: (context) => Scaffold(
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
        ][_homeController.currentPage],
        bottomNavigationBar: Container(
          color: Colors.transparent,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 80,
                child: IconButton(
                  onPressed: () {
                    _homeController.setPage(0);
                  },
                  icon: Icon(
                    _homeController.currentPage == 0
                        ? Icons.home
                        : Icons.home_outlined,
                  ),
                ),
              ),
              Container(
                width: 80,
                child: IconButton(
                  onPressed: () {
                    _homeController.setPage(1);
                  },
                  icon: Icon(
                    Icons.search_rounded,
                  ),
                ),
              ),
              Container(
                width: 80,
                child: IconButton(
                  onPressed: () {
                    _homeController.setPage(2);
                  },
                  icon: Icon(
                    _homeController.currentPage == 2
                        ? Icons.star
                        : Icons.star_border_outlined,
                  ),
                ),
              ),
              Container(
                width: 80,
                child: IconButton(
                  onPressed: () {
                    _homeController.setPage(3);
                  },
                  icon: Icon(
                    _homeController.currentPage == 3
                        ? Icons.person
                        : Icons.person_outline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
