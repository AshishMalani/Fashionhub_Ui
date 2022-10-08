import 'package:fashionhub/common/Common_Button.dart';
import 'package:fashionhub/view/Phon_Number_Screen.dart';
import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  int Pagesilect = 0;
  PageController x = PageController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: height * 0.7,
            width: double.infinity,
            color: Colors.white,
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  Pagesilect = value;
                });
              },
              controller: x,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: height * 0.2,
                    ),
                    Image.asset("assets/images/2.png"),
                    SizedBox(
                      height: height * 0.08,
                    ),
                    Text(
                      "Online Order",
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Text(
                      "You can see the product with all angles,\ntrue and convenient",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff9D9EA3),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: height * 0.2,
                    ),
                    Image.asset("assets/images/3.png"),
                    SizedBox(
                      height: height * 0.08,
                    ),
                    Text(
                      "Easy Payment",
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Text(
                      "You just need to take a photo or upload and\nwe will find similar products for you.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff9D9EA3),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: height * 0.2,
                    ),
                    Image.asset("assets/images/4.png"),
                    SizedBox(
                      height: height * 0.08,
                    ),
                    Text(
                      "Fast Delivery",
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Text(
                      "You just need to take a photo or upload and\nwe will find similar products for you.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff9D9EA3),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CircleAvatar(
                  backgroundColor: Pagesilect == index
                      ? Color(0xff2D6A4F)
                      : Color(0xff95D5B2),
                  radius: 4.4,
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: CommonButton(
              text: 'Get Started!',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PhoneNumberScreen(),
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
