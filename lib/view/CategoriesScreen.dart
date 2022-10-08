import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SubCategoriesItemScreen.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<Map<String, dynamic>> list = [
    {
      'name': "WOMEN",
      "prodact": 'Top & Tees, Kurtas & Suits... ',
      'image': 'assets/images/48.png',
    },
    {
      'name': "MEN",
      "prodact": 'T-Shirts, Shirts, Jeans, Shoes...',
      'image': 'assets/images/49.png',
    },
    {
      'name': "KIDS",
      "prodact": 'Clothing, Footwear, Brands...',
      'image': 'assets/images/50.png',
    },
    {
      'name': "HOME &\nKITCHEN",
      "prodact": 'Sofa, Bedsheets, Cushion...',
      'image': 'assets/images/51.png',
    },
    {
      'name': "BEAUTY",
      "prodact": 'Makeup, Fragrances, Groom...',
      'image': 'assets/images/52.png',
    },
    {
      'name': "GADGETS",
      "prodact": 'Head phones, Mobile covers...',
      'image': 'assets/images/53.png',
    },
  ];
  List text = [
    'Westernwear',
    'Ethnic & Fusionwear',
    'Footwear',
    'Lingerie',
    'Bags, Wallets & Cluthes',
    'Jewellery',
    'Other Accessories',
    'Beauty & Personal Care',
    'Sports & Activewear',
    'Luggage & Trolleys',
    'Sleepwear & Longewear',
    'Watches',
    'Winterwear Store',
    'Gift Card',
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
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
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.25,
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
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
            height: height * 0.04,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                  6,
                  (index) => Container(
                    margin: EdgeInsets.symmetric(vertical: height * 0.005),
                    color: Color(0xffB7E4C7),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: ExpansionTile(
                          title: Text(
                            list[index]['name'],
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                          subtitle: Text(
                            list[index]['prodact'],
                          ),
                          trailing: Image.asset(
                            list[index]['image'],
                            height: 180,
                            width: 180,
                          ),
                          children: [
                            Container(
                              color: Colors.white,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: List.generate(
                                      14,
                                      (index) => Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 10),
                                            child: InkWell(
                                              onTap: () {
                                                if (index == 0) {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            WesternWearScreen(),
                                                      ));
                                                }
                                              },
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    text[index],
                                                  ),
                                                  Icon(
                                                    Icons.arrow_forward_ios,
                                                    size: 15,
                                                    color: Colors.black,
                                                  )
                                                ],
                                              ),
                                            ),
                                          )),
                                ),
                              ),
                            )
                          ]),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
