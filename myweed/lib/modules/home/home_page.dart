import 'package:flutter/material.dart';
import 'package:myweed/components/container_bar/container_bar.dart';
import 'package:myweed/modules/favorites/favorites_page.dart';
import 'package:myweed/modules/home_page/page_home.dart';
import 'package:myweed/modules/profile/profile_page.dart';
import 'package:myweed/modules/search/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      ],
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          children: [],
        ),
      ),
    );
  }
}
