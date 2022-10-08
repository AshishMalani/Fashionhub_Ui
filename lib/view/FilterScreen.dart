import 'package:fashionhub/view/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  double start = 0;
  double end = 5000;

  String? brandValue;
  String? dressValue;
  String? typeValue;
  List dropDownItems = [
    'Dresses',
    'T-shirts',
    'Jeans',
    'Kurtis',
    'Tops',
  ];

  List brand = [
    'Lark & Ro',
    'Astylish',
    'ECOWISH',
    'Angashion',
  ];

  List types = [
    'Featured',
    'Price',
    'Material',
    'Design',
    'Brand',
  ];
  List<dynamic> colors = [
    Color(0xff000000),
    Color(0xffCE3E3E),
    Color(0xff76B55A),
    Color(0xff5D71E1),
    Color(0xffB868B9),
    Color(0xffE3D224),
    Color(0xff21CECE),
  ];
  int selected = 0;
  int conselected = 0;

  List<dynamic> sizes = [
    'XXS',
    'XS',
    'S',
    'M',
    'L',
    'XL',
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height * 0.132,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xff2D6A4F),
                Color(0xff40916C),
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
                        width: width * 0.31,
                      ),
                      Text(
                        'Filter',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                        ),
                        softWrap: false,
                      ),
                      Spacer(),
                      Icon(
                        Icons.delete_outline_sharp,
                        size: 25,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.022,
                ),
                Text(
                  'Price',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: const Color(0xff707070),
                  ),
                  softWrap: false,
                ),
                SliderTheme(
                  data: SliderThemeData(
                      trackHeight: height * 0.002,
                      activeTrackColor: Color(0xffE7B844),
                      inactiveTrackColor: Colors.grey.shade300,
                      thumbColor: Colors.white,
                      overlayColor: Colors.transparent),
                  child: RangeSlider(
                    values: RangeValues(start, end),
                    min: 0,
                    max: 5000,
                    onChanged: (RangeValues value) {
                      setState(() {
                        start = value.start;
                        end = value.end;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Container(
                  height: height * 0.065,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 2,
                        spreadRadius: 0,
                        offset: Offset(0, 0.5),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: width / 2.25,
                        child:
                            Center(child: Text('${start.toStringAsFixed(0)}')),
                      ),
                      VerticalDivider(
                        thickness: 1,
                      ),
                      Container(
                        width: width / 2.61,
                        child: Center(child: Text('${end.toStringAsFixed(0)}')),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Text(
                  'Categories',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: const Color(0xff707070),
                  ),
                  softWrap: false,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  height: height * 0.05,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 2,
                        spreadRadius: 0,
                        offset: Offset(0, 0.5),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: DropdownButton(
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 230),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      ),
                      underline: SizedBox(),
                      hint: Text(
                        'Dresses',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0xff707070),
                        ),
                        softWrap: false,
                      ),
                      value: dressValue,
                      onChanged: (value) {
                        setState(() {
                          dressValue = value as String?;
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
                SizedBox(
                  height: height * 0.03,
                ),
                Text(
                  'Brand',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: const Color(0xff707070),
                  ),
                  softWrap: false,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  height: height * 0.05,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 2,
                        spreadRadius: 0,
                        offset: Offset(0, 0.5),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: DropdownButton(
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 210),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      ),
                      underline: SizedBox(),
                      hint: Text(
                        'Lark & Ro',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0xff707070),
                        ),
                        softWrap: false,
                      ),
                      value: brandValue,
                      onChanged: (value) {
                        setState(() {
                          brandValue = value as String?;
                        });
                      },
                      items: brand.map((items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.025,
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
                  height: height * 0.025,
                ),
                Container(
                  height: height * 0.05,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 2,
                        spreadRadius: 0,
                        offset: Offset(0, 0.5),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: DropdownButton(
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 220),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Color(0xff707070),
                        ),
                      ),
                      underline: SizedBox(),
                      hint: Text(
                        'Featured',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0xff707070),
                        ),
                        softWrap: false,
                      ),
                      value: typeValue,
                      onChanged: (value) {
                        setState(() {
                          typeValue = value as String?;
                        });
                      },
                      items: types.map((items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                MaterialButton(
                  color: Color(0xff95D5B2),
                  height: height * 0.055,
                  minWidth: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Results (186)',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
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
