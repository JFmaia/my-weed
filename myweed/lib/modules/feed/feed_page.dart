import 'package:animated_card/animated_card.dart';

import 'package:flutter/material.dart';
import 'package:myweed/shared/components/category/category.dart';
import 'package:myweed/shared/components/container_bar/container_bar.dart';
import 'package:myweed/shared/components/product_list/product_list.dart';

/* A home_page é a pagina que mostra os produtos mais vendidos, acessorios, os
comprados recentemente, além dos produtos filtrados pelo usuário. */
class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AnimatedCard(
            direction: AnimatedCardDirection.top,
            duration: Duration(microseconds: 2),
            curve: Curves.decelerate,
            child: ContainerBar(),
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            child: Column(
              children: [
                AnimatedCard(
                  initDelay: Duration(microseconds: 3),
                  child: Category(),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AnimatedCard(
                        initDelay: Duration(microseconds: 3),
                        child: Text(
                          "All Products",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AnimatedCard(
                        initDelay: Duration(microseconds: 3),
                        child: Container(
                          height: 180,
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (BuildContext ctx, int index) {
                              return ProductList(
                                imageUrl: "assets/images/hibrida.jpg",
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AnimatedCard(
                        initDelay: Duration(microseconds: 3),
                        child: Text(
                          "Products Rencet",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AnimatedCard(
                        initDelay: Duration(microseconds: 3),
                        child: Container(
                          height: 180,
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (BuildContext ctx, int index) {
                              return ProductList(
                                imageUrl: "assets/images/sativa.jpg",
                              );
                            },
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
      ),
    );
  }
}
