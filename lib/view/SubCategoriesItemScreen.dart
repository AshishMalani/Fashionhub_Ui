import 'package:fashionhub/common/FavoriteIcon.dart';
import 'package:flutter/material.dart';

import 'FilterScreen.dart';

class WesternWearScreen extends StatefulWidget {
  const WesternWearScreen({Key? key}) : super(key: key);

  @override
  State<WesternWearScreen> createState() => _WesternWearScreenState();
}

class _WesternWearScreenState extends State<WesternWearScreen> {
  String? priceValue;

  List dropDownItems = [
    'Lowest to high',
    'Highest to low',
    'Under 1000',
    'Above 1000',
  ];

  List<String> data = [
    'All',
    'Dresses',
    'Tops',
    'Sweater',
    'Jeans',
    'T-shirt',
  ];
  List<Map<String, dynamic>> data2 = [
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
      'price': '\$49',
    },
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
      'price': '\$49',
    },
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
      'price': '\$49',
    },
  ];
  int pageSelected = 0;
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: height * 0.18,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xff2D6A4F),
                      Color(0xff52B788),
                      Color(0xff95D5B2),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.06,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.21,
                            ),
                            Text(
                              'Westernwear',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w700,
                              ),
                              softWrap: false,
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FilterScreen(),
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/images/31.png',
                                height: height * 0.03,
                                width: height * 0.03,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 109,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: height * 0.066,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              spreadRadius: 0,
                              offset: Offset(2, 2),
                            )
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'What are you looking for?',
                          hintStyle: TextStyle(color: Color(0xff707070)),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xff707070),
                          ),
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
                )
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: height * 0.05,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          pageSelected = index;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: pageSelected == index
                                ? Color(0xff95D5B2)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 0,
                                blurRadius: 1,
                                offset: Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              data[index],
                              style: TextStyle(
                                color: pageSelected == index
                                    ? Colors.white
                                    : Color(0xff707070),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    '108 Items',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w700,
                    ),
                    softWrap: false,
                  ),
                  Spacer(),
                  Text(
                    'Sort By :',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: const Color(0xff707070),
                    ),
                    softWrap: false,
                  ),
                  Container(
                    height: height * 0.03,
                    width: width * 0.35,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.transparent)),
                    child: Center(
                      child: DropdownButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                        underline: SizedBox(),
                        hint: Text(
                          'Lowest to high',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            color: const Color(0xff707070),
                          ),
                          softWrap: false,
                        ),
                        value: priceValue,
                        onChanged: (value) {
                          setState(() {
                            priceValue = value as String?;
                          });
                        },
                        items: dropDownItems.map((items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
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
                                    data2[index]['image'],
                                  ),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  index == 0
                                      ? Container(
                                          height: height * 0.03,
                                          width: width * 0.1,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
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
                                                color: const Color(0xffffffff),
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
                          data2[index]['name'],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          data2[index]['subname'],
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
                              data2[index]['price'],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Color(0xffCE4040),
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
    );
  }
}
