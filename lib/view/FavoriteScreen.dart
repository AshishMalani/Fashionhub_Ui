import 'package:fashionhub/common/FavoriteIcon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<Map<String, dynamic>> data = [
    {
      'image': 'assets/images/11.png',
      'name': "Style Womens",
      'subname': 'Turtleneck Oversized...',
      'price': '\$49',
    },
    {
      'image': 'assets/images/11.png',
      'name': "Style Womens",
      'subname': 'Turtleneck Oversized...',
      'price': '\$59',
    },
    {
      'image': 'assets/images/11.png',
      'name': "Style Womens",
      'subname': 'Turtleneck Oversized...',
      'price': '\$69',
    },
    {
      'image': 'assets/images/11.png',
      'name': "Style Womens",
      'subname': 'Turtleneck Oversized...',
      'price': '\$79',
    },
    {
      'image': 'assets/images/11.png',
      'name': "Style Womens",
      'subname': 'Turtleneck Oversized...',
      'price': '\$89',
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.13,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff326F54),
                  Color(0xff4D8B6E),
                  Color(0xff8DCCAA),
                ],
              ),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color(0xffB7E4C7),
                  ),
                ),
                SizedBox(
                  width: width * 0.25,
                ),
                Text(
                  "Favorite",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Row(
                      children: [
                        Text(
                          "5 Items",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Text(
                          "Sort By :",
                          style: TextStyle(
                            color: Color(0xff707070),
                          ),
                        ),
                        Text(
                          "Price : lowest to high",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Icon(Icons.keyboard_arrow_down_outlined)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    height: height * 0.2,
                                    width: width * 0.4,
                                    //margin: EdgeInsets.only(right: 20),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          spreadRadius: 0,
                                          blurRadius: 2,
                                          offset: Offset(0, 0),
                                        ),
                                      ],
                                      image: DecorationImage(
                                        image: AssetImage(
                                          data[index]['image'],
                                        ),
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: height * 0.02,
                                        ),
                                        index == 0
                                            ? Container(
                                                height: height * 0.03,
                                                width: width * 0.1,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(20),
                                                    bottomRight:
                                                        Radius.circular(20),
                                                  ),
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xffCF5B3F),
                                                      Color(0xffEA9D33),
                                                    ],
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    '-50%',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 10,
                                                      color: const Color(
                                                          0xffffffff),
                                                    ),
                                                    softWrap: false,
                                                  ),
                                                ),
                                              )
                                            : SizedBox(),
                                      ],
                                    ),
                                  ),
                                  FavoriteIcon(),
                                ],
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffFFC107),
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffFFC107),
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffFFC107),
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffFFC107),
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffFFC107),
                                    size: 18,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height * 0.012,
                              ),
                              Text(
                                data[index]['name'],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                data[index]['subname'],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.015,
                              ),
                              Row(
                                children: [
                                  Text(
                                    data[index]['price'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: index == 0
                                          ? Color(0xffCE4040)
                                          : Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Text(
                                    '\$99',
                                    style: TextStyle(
                                        color: Color(0xff707070),
                                        decoration: TextDecoration.lineThrough),
                                  )
                                ],
                              ),
                            ],
                          );
                        },
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 2 / 4,
                            crossAxisSpacing: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
