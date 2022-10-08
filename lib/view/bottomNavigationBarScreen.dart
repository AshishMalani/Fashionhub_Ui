import 'package:fashionhub/view/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FavoriteScreen.dart';
import 'ProfileScreen.dart';
import 'SubCategoriesItemScreen.dart';

class bottomNavigationBarScreen extends StatefulWidget {
  const bottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<bottomNavigationBarScreen> createState() =>
      _bottomNavigationBarScreenState();
}

class _bottomNavigationBarScreenState extends State<bottomNavigationBarScreen> {
  List<Map<String, dynamic>> list = [
    {
      "outlineicon": "assets/images/15.png",
      "image": "assets/images/19.png",
      "label": "Home",
    },
    {
      "outlineicon": "assets/images/20.png",
      "image": "assets/images/16.png",
      "label": "Categories",
    },
    {
      "outlineicon": "assets/images/21.png",
      "image": "assets/images/17.png",
      "label": "Favorite",
    },
    {
      "outlineicon": "assets/images/22.png",
      "image": "assets/images/18.png",
      "label": "Profile",
    },
  ];
  int pageSelected = 0;
  List Screen = [
    HomeScreen(),
    WesternWearScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Screen[pageSelected],
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: height * 0.1,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2, 2),
                    spreadRadius: 4,
                    blurRadius: 3),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
              ),
            ),
            child: Row(
              children: List.generate(
                4,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      pageSelected = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          pageSelected == index
                              ? list[index]['outlineicon']
                              : list[index]['image'],
                          height: height * 0.02,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          list[index]['label'],
                          style: TextStyle(
                            color: pageSelected == index
                                ? Color(0xff1B4332)
                                : Color(0xff707070),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: -5,
            top: -13,
            child: Container(
              height: height * 0.06,
              width: width * 0.3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff337055),
                    Color(0xff81C09F),
                  ],
                ),
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "\$199.89",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "2 items",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
