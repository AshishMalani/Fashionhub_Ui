import 'package:fashionhub/common/Common_Button.dart';
import 'package:fashionhub/common/FavoriteIcon.dart';
import 'package:flutter/material.dart';

import 'CartScreen.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  PageController pageController = PageController();

  int pageSelected = 0;

  int selected = 0;
  int conselected = 0;

  List<dynamic> colors = [
    Color(0xff000000),
    Color(0xffCE3E3E),
    Color(0xff76B55A),
    Color(0xff5D71E1),
    Color(0xffB868B9),
    Color(0xffE3D224),
    Color(0xff21CECE),
  ];

  List<dynamic> sizes = [
    'XXS',
    'XS',
    'S',
    'M',
    'L',
    'XL',
  ];

  List<Map<String, dynamic>> data2 = [
    {
      'name': "Style Womens",
      'subname': 'Turtleneck Oversized...',
      'price': '\$69',
      'image': 'assets/images/11.png'
    },
    {
      'name': "Style Womens",
      'subname': 'Turtleneck Oversized...',
      'price': '\$79',
      'image': 'assets/images/11.png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                height: height * 0.5,
                child: PageView(
                  controller: pageController,
                  onPageChanged: (value) {
                    setState(() {
                      pageSelected = value;
                    });
                  },
                  children: [
                    Image.asset('assets/images/32.png'),
                    Image.asset('assets/images/32.png'),
                    Image.asset('assets/images/32.png'),
                    Image.asset('assets/images/32.png'),
                    Image.asset('assets/images/32.png'),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    5,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: CircleAvatar(
                            radius: pageSelected == index ? 4 : 3,
                            backgroundColor: pageSelected == index
                                ? Color(0xff2D6A4F)
                                : Color(0xff95D5B2),
                          ),
                        )),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Color(0xffFFC107),
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Color(0xffFFC107),
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Color(0xffFFC107),
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Color(0xffFFC107),
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Color(0xffFFC107),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    '8 reviews',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: const Color(0xff707070),
                      letterSpacing: 0.12,
                    ),
                    softWrap: false,
                  ),
                  Spacer(),
                  Text(
                    'In Stock',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: const Color(0xff76b55a),
                      letterSpacing: 0.12,
                      fontWeight: FontWeight.w700,
                    ),
                    softWrap: false,
                  )
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                'Astylish Women Open Front Long\nSleeve Chunky Knit Cardigan',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: const Color(0xff000000),
                  letterSpacing: 0.16,
                ),
                softWrap: false,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                '\$69.99',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  color: const Color(0xff000000),
                  letterSpacing: 0.18,
                  fontWeight: FontWeight.w700,
                ),
                softWrap: false,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.01,
                width: double.infinity,
                color: Color(0xffF6F6F6),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                'Colors',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: const Color(0xff707070),
                ),
                softWrap: false,
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  7,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = index;
                      });
                    },
                    child: Container(
                      height: height * 0.045,
                      width: height * 0.045,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 2,
                          color: selected == index
                              ? Color(0xffE7B844)
                              : Colors.transparent,
                        ),
                      ),
                      child: Center(
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: colors[index],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                'Sizes',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: const Color(0xff707070),
                ),
                softWrap: false,
              ),
              SizedBox(
                height: height * 0.012,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  6,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        conselected = index;
                      });
                    },
                    child: Container(
                      height: height * 0.05,
                      width: height * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: conselected == index
                            ? Color(0xff95D5B2)
                            : Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 1,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          sizes[index],
                          style: TextStyle(
                              fontSize: 13,
                              color: conselected == index
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.01,
                width: double.infinity,
                color: Color(0xffF6F6F6),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Text(
                'Product Details',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  color: const Color(0xff000000),
                  letterSpacing: 0.18,
                  fontWeight: FontWeight.w700,
                ),
                softWrap: false,
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Text(
                'Women\'s Casual V-Neck Pullover Sweater long \nSleeved Sweater Top with high low Hemline is going to be the newest step in your wardrobe! Living up to its namesake, this sweater is unbelievably soft, ...',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: const Color(0xff000000),
                  letterSpacing: 0.14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Center(
                child: Icon(
                  Icons.keyboard_arrow_down,
                  size: 15,
                  color: Color(0xff707070),
                ),
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Container(
                height: height * 0.01,
                width: double.infinity,
                color: Color(0xffF6F6F6),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Row(
                children: [
                  Text(
                    'Reviews',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: const Color(0xff000000),
                      letterSpacing: 0.18,
                      fontWeight: FontWeight.w700,
                    ),
                    softWrap: false,
                  ),
                  Spacer(),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: const Color(0xff707070),
                    ),
                    softWrap: false,
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Color(0xff707070),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.012,
              ),
              Text(
                'Dipika Patel',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: const Color(0xff000000),
                  letterSpacing: 0.14,
                ),
                softWrap: false,
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Color(0xffFFC107),
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Color(0xffFFC107),
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Color(0xffFFC107),
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Color(0xffFFC107),
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Color(0xffFFC107),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Spacer(),
                  Text(
                    'June 1, 2020',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: const Color(0xff707070),
                      letterSpacing: 0.14,
                    ),
                    softWrap: false,
                  )
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                'Soft and comfortable material, fitting is very nice, length is between a crop and normal sweatshirt.\nperfect sweatshirt also the colour is very classy and most imp it is same as shown in the picture.',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: const Color(0xff000000),
                  letterSpacing: 0.14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.01,
                width: double.infinity,
                color: Color(0xffF6F6F6),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                'View Similar',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  color: const Color(0xff000000),
                  letterSpacing: 0.18,
                  fontWeight: FontWeight.w700,
                ),
                softWrap: false,
              ),
              SizedBox(
                height: height * 0.015,
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            height: height * 0.2,
                            width: height * 0.23,
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
                                  fit: BoxFit.fitHeight),
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
                                color: Colors.black),
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
                ),
              ),
              Container(
                height: height * 0.01,
                width: double.infinity,
                color: Color(0xffF6F6F6),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: 25,
                    color: Color(0xff707070),
                  ),
                  SizedBox(
                    width: width * 0.5,
                    height: height * 0.05,
                    child: CommonButton(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CartScreen(),
                          ),
                        );
                      },
                      text: 'Add to Cart',
                    ),
                  ),
                  Image.asset(
                    'assets/images/25.png',
                    height: height * 0.03,
                    width: height * 0.03,
                  )
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
