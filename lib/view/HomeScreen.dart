import 'package:fashionhub/view/CategoriesScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ProductScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> list = [
    {
      'image': 'assets/images/7.png',
    },
    {
      'image': 'assets/images/8.png',
    },
    {
      'image': 'assets/images/9.png',
    },
    {
      'image': 'assets/images/10.png',
    },
  ];
  List<Map<String, dynamic>> list1 = [
    {
      'image': 'assets/images/11.png',
      'ditels': 'Stylish Women Open\nFront Long Sleeve Ch... ',
      'price': '\$49',
      'text': '\$99'
    },
    {
      'image': 'assets/images/12.png',
      'ditels': 'Style Womens\nTurtleneck Oversized... ',
      'price': '\$69.99',
      'text': ''
    },
    {
      'image': 'assets/images/11.png',
      'ditels': 'Stylish Women Open\nFront Long Sleeve Ch... ',
      'price': '\$49',
      'text': '\$99'
    },
    {
      'image': 'assets/images/12.png',
      'ditels': 'Style Womens\nTurtleneck Oversized... ',
      'price': '\$69.99',
      'text': ''
    },
  ];
  List<Map<String, dynamic>> list2 = [
    {"image": "assets/images/29.png", 'text': "Home "},
    {
      "image": "assets/images/30.png",
      'text': "Shop by Category",
    },
    {"image": "assets/images/24.png", 'text': "Your Orders"},
    {"image": "assets/images/25.png", 'text': "Your Wish List"},
    {"image": "assets/images/26.png", 'text': "Share"},
    {"image": "assets/images/27.png", 'text': "Privacy Policy"},
    {"image": "assets/images/28.png", 'text': "Logout"},
  ];
  PageController y = PageController();

  int sellect = 0;
  final globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: globalKey,
      drawer: Drawer(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                    height: height * 0.015,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff337055),
                          Color(0xff81C09F),
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(165),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Container(
                            height: height * 0.08,
                            width: height * 0.08,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/23.jpeg"),
                              ),
                              shape: BoxShape.circle,
                              color: Colors.grey,
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Text(
                            "Oleh Chabanov",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "+91 123 456 7890",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  right: 15,
                  child: Container(
                    height: height * 0.06,
                    width: height * 0.06,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: Offset(1, 1))
                      ],
                    ),
                    child: Icon(
                      Icons.edit_outlined,
                      color: Color(0xff2D6A4F),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: List.generate(
                7,
                (index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: height * 0.06,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.1, 0.1),
                            blurRadius: 0.1,
                            spreadRadius: 0.1)
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Image.asset(
                            list2[index]['image'],
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Text(
                            list2[index]['text'],
                            style: TextStyle(
                                color: Color(0xff1B4332), fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Spacer(),
                  Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2D6A4F),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Color(0xff2D6A4F),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: height * 0.18,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(38),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff337055),
                      Color(0xff81C09F),
                    ],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          globalKey.currentState!.openDrawer();
                        },
                        icon: Icon(
                          Icons.menu,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.25,
                      ),
                      Text(
                        "Fashion",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        "Hub",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Color(0xffE7B844),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.notifications_active_outlined,
                        size: 25,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: -19,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'What are you looking for?',
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.035,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                    child: Stack(
                      children: [
                        Container(
                          height: height * 0.18,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: PageView(
                            onPageChanged: (value) {
                              setState(() {
                                sellect = value;
                              });
                            },
                            controller: y,
                            children: [
                              Image.asset(
                                "assets/images/6.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/6.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/6.png",
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/images/6.png",
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.05,
                              vertical: height * 0.02),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Fashion Sale",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "See More",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                                4,
                                (index) => Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: width * 0.015),
                                      child: CircleAvatar(
                                        backgroundColor: sellect == index
                                            ? Color(0xff40916C)
                                            : Color(0xffB7E4C7),
                                        radius: 4,
                                      ),
                                    )),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Catalogue",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1B4332),
                              fontSize: 23),
                        ),
                        Spacer(),
                        Text(
                          "See All",
                          style:
                              TextStyle(color: Color(0xff707070), fontSize: 17),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  SizedBox(
                    height: height * 0.13,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CategoriesScreen(),
                            ));
                      },
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            height: height * 0.13,
                            width: height * 0.13,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  list[index]['image'],
                                ),
                              ),
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Featured",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1B4332),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 3,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  index == 1
                                      ? Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ProductScreen(),
                                          ))
                                      : SizedBox();
                                },
                                child: Container(
                                  height: height * 0.19,
                                  width: width * 0.43,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(0, 1),
                                          spreadRadius: 0.5,
                                          blurRadius: 0.5)
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    list1[index]['image'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              index == 0
                                  ? Positioned(
                                      top: 15,
                                      child: Container(
                                        height: height * 0.025,
                                        width: width * 0.1,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xffCE5840),
                                              Color(0xffEA9E33),
                                            ],
                                          ),
                                          borderRadius: BorderRadius.horizontal(
                                            right: Radius.circular(30),
                                          ),
                                        ),
                                        child: Center(
                                            child: Text(
                                          "-50%",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    )
                                  : SizedBox(),
                              Positioned(
                                bottom: -18,
                                right: 10,
                                child: Container(
                                  height: height * 0.04,
                                  width: height * 0.04,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          spreadRadius: 0.5,
                                          offset: Offset(1, 1),
                                          blurRadius: 0.5)
                                    ],
                                  ),
                                  child: index == 0 || index == 2
                                      ? Image.asset("assets/images/13.png")
                                      : Image.asset("assets/images/14.png"),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 13),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: List.generate(
                                      5,
                                      (index) => Icon(
                                            Icons.star,
                                            size: 18,
                                            color: Colors.yellow,
                                          )),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  list1[index]['ditels'],
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      list1[index]['price'],
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: index == 0 || index == 2
                                              ? Color(0xffCE4040)
                                              : Colors.black),
                                    ),
                                    SizedBox(
                                      width: width * 0.01,
                                    ),
                                    index == 0 || index == 2
                                        ? Text(
                                            '\$99',
                                            style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: Color(0xff707070),
                                            ),
                                          )
                                        : SizedBox()
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
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
