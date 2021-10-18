import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:myweed/components/category/category.dart';
import 'package:myweed/components/container_bar/container_bar.dart';
import 'package:myweed/components/product_list/product_list.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AnimatedCard(
          direction: AnimatedCardDirection.top,
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
                initDelay: Duration(seconds: 1),
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
                      initDelay: Duration(seconds: 1),
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
                      initDelay: Duration(seconds: 1),
                      child: Container(
                        height: 180,
                        child: ListView.builder(
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
                      initDelay: Duration(seconds: 1),
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
                      initDelay: Duration(seconds: 1),
                      child: Container(
                        height: 180,
                        child: ListView.builder(
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
    );
  }
}
