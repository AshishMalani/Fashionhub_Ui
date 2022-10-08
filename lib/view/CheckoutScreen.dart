import 'package:fashionhub/common/Common_Button.dart';
import 'package:fashionhub/view/HomeScreen.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  List<Map<String, dynamic>> list = [
    {"image": "assets/images/42.png", "price": "\$15", "day": "1-2 daysx"},
    {"image": "assets/images/43.png", "price": "\$20", "day": "1-2 daysx"},
    {"image": "assets/images/44.png", "price": "\$18", "day": "1-2 daysx"},
  ];
  int x = 0;
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
            child: Padding(
              padding: const EdgeInsets.only(top: 15, right: 10),
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
                    width: width * 0.3,
                  ),
                  Text(
                    "Check Out",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Row(
              children: [
                Image.asset("assets/images/40.png"),
                SizedBox(
                  width: width * 0.04,
                ),
                Text(
                  "Shipping Address",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Container(
              height: height * 0.12,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2,
                    spreadRadius: 1,
                    offset: Offset(0, 0.5),
                  ),
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                    child: Row(
                      children: [
                        Text(
                          "Oleh Chabanov",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        Spacer(),
                        Text(
                          "Chnage",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 17),
                        ),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                    child: Text(
                      "225, Highland Area,\nSpringfield, Il 62704, USA",
                      style: TextStyle(color: Color(0xff707070)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Row(
              children: [
                Image.asset("assets/images/41.png"),
                SizedBox(
                  width: width * 0.04,
                ),
                Text(
                  "Delivery Method",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            children: List.generate(
                3,
                (index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            x = index;
                          });
                        },
                        child: Container(
                          height: height * 0.11,
                          width: height * 0.12,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0, 0.5),
                                  spreadRadius: 0.5,
                                  blurRadius: 0.5)
                            ],
                            border: Border.all(
                                color: index == x
                                    ? Color(0xffE7B844)
                                    : Colors.grey.shade100),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.012,
                              ),
                              Image.asset(
                                list[index]['image'],
                                height: height * 0.03,
                              ),
                              SizedBox(
                                height: height * 0.012,
                              ),
                              Text(
                                list[index]['price'],
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                list[index]['day'],
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff707070),
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/45.png",
                  height: height * 0.03,
                  width: width * 0.06,
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Text(
                  "Delivery Method",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Container(
              height: height * 0.08,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0.5,
                      offset: Offset(0, 0.5),
                      blurRadius: 0.5),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/46.png",
                      height: height * 0.07,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Text(
                      "**** **** **** **45",
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    Text(
                      "Chnage",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff1B4332),
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    )
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          Container(
            height: height * 0.2,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.5, 0.5),
                    spreadRadius: 0.5,
                    blurRadius: 0.5)
              ],
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        "items",
                        style: TextStyle(
                          color: Color(0xff707070),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "\$199.89",
                        style: TextStyle(
                          color: Color(0xff707070),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Row(
                    children: [
                      Text(
                        "Delivery",
                        style: TextStyle(
                          color: Color(0xff707070),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "\$20",
                        style: TextStyle(
                          color: Color(0xff707070),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Row(
                    children: [
                      Text(
                        "Total Price",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      Spacer(),
                      Text(
                        "\$219.98",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  SizedBox(
                    height: height * 0.055,
                    child: CommonButton(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    height: height * 0.45,
                                    width: height * 0.4,
                                    child: Column(
                                      children: [
                                        Center(
                                          child: Image.asset(
                                            'assets/images/47.png',
                                            width: width * 0.7,
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.02,
                                        ),
                                        Text(
                                          'Success',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 26,
                                            color: const Color(0xff3c2e48),
                                            fontWeight: FontWeight.w700,
                                          ),
                                          softWrap: false,
                                        ),
                                        SizedBox(
                                          height: height * 0.02,
                                        ),
                                        Text(
                                          'Your order will be delivered soon.\nIt can be tracked in the "Orders" section.',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 16,
                                            color: const Color(0xff707070),
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                        SizedBox(
                                          height: height * 0.025,
                                        ),
                                        SizedBox(
                                          height: height * 0.05,
                                          width: width * 0.6,
                                          child: CommonButton(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        HomeScreen(),
                                                  ));
                                            },
                                            text: 'Continue Shopping',
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.03,
                                        ),
                                        Text(
                                          'Go to Orders',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 16,
                                            color: const Color(0xff2d6a4f),
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        )
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 25,
                                    left: 0,
                                    right: 0,
                                    child: Icon(
                                      Icons.check_circle_outline,
                                      color: Colors.white,
                                      size: 60,
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      text: 'Pay',
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
