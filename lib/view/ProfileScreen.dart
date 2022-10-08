import 'package:flutter/material.dart';

import 'Phon_Number_Screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<Widget> screens = [
    Text(''),
    Text(''),
    Text(''),
    Text(''),
    Text(''),
    PhoneNumberScreen()
  ];
  List<Map<String, dynamic>> data = [
    {
      'image': 'assets/images/34.png',
      'text': 'Shipping Addresses',
    },
    {
      'image': 'assets/images/35.png',
      'text': 'Payments Methods',
    },
    {
      'image': 'assets/images/36.png',
      'text': 'Orders',
    },
    {
      'image': 'assets/images/37.png',
      'text': 'Favorite',
    },
    {
      'image': 'assets/images/38.png',
      'text': 'Settings',
    },
    {
      'image': 'assets/images/39.png',
      'text': 'Log Out',
    }
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: height * 0.17,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff326F54),
                      Color(0xff4D8B6E),
                      Color(0xff8DCCAA),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(140),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.077,
                      ),
                      Row(
                        children: [
                          Container(
                            height: height * 0.07,
                            width: height * 0.07,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                              image: DecorationImage(
                                image: AssetImage('assets/images/23.jpeg'),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.045,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Oleh Chabanov',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  color: const Color(0xffffffff),
                                ),
                                softWrap: false,
                              ),
                              SizedBox(
                                height: height * 0.008,
                              ),
                              Text(
                                '+91 123 456 7890',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: const Color(0xffffffff),
                                  letterSpacing: 0.12,
                                ),
                                softWrap: false,
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 25,
                top: 75,
                child: Container(
                  height: height * 0.05,
                  width: height * 0.05,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 2,
                        spreadRadius: 1,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/33.png',
                      height: height * 0.025,
                      width: height * 0.025,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: List.generate(
                6,
                (index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => screens[index],
                      ),
                    );
                  },
                  child: Container(
                    height: height * 0.07,
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 25),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 2,
                          spreadRadius: 01,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Image.asset(
                            data[index]['image'],
                            height: height * 0.032,
                            width: height * 0.032,
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Text(
                            data[index]['text'],
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0xff1B4332),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Privacy Policy',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 13,
                color: const Color(0xff707070),
                letterSpacing: 0.13,
                decoration: TextDecoration.underline,
              ),
              softWrap: false,
            ),
          ),
        ],
      ),
    );
  }
}
