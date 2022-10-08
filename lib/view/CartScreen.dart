import 'package:fashionhub/common/Common_Button.dart';
import 'package:fashionhub/view/CheckoutScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
                    "Cart",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  Icon(
                    Icons.delete_outline_sharp,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: height * 0.3,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2,
                    offset: Offset(0.5, 0.5),
                    spreadRadius: 0.5)
              ],
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                  child: Row(
                    children: [
                      Container(
                        height: height * 0.11,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/images/32.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Astylish Women Open Front\nLong Sleeve Chunky Knit\nCardigan",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Text(
                            "\$69.99",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 17),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Demo(),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                  child: Row(
                    children: [
                      Container(
                        height: height * 0.11,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/images/32.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Astylish Women Open Front\nLong Sleeve Chunky Knit\nCardigan",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Text(
                            "\$69.99",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 17),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Demo(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: height * 0.17,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.2, 0.2),
                    blurRadius: 2,
                    spreadRadius: 0.5)
              ],
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.025,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  child: Row(
                    children: [
                      Text(
                        "Total Price",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(
                        "\$239.98",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: CommonButton(
                    text: "Check Out",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CheckoutScreen(),
                          ));
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              x++;
            });
          },
          child: Icon(
            Icons.add_circle_outline,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Text('$x'),
        SizedBox(
          height: height * 0.01,
        ),
        InkWell(
          onTap: () {
            setState(() {
              if (x > 0) {
                x--;
              }
            });
          },
          child: Icon(
            Icons.remove_circle_outline,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
