import 'package:country_code_picker/country_code_picker.dart';
import 'package:fashionhub/common/Common_Button.dart';
import 'package:flutter/material.dart';

import 'bottomNavigationBarScreen.dart';
import 'otp_screen.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({Key? key}) : super(key: key);

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                height: height * 0.3,
              ),
              Positioned(
                left: 0,
                top: -23,
                child: Image.asset(
                  'assets/images/5.png',
                  height: height * 0.4,
                  width: height * 0.8,
                  //fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 60,
                left: 20,
                child: Text(
                  'What is Your Phone\nNumber?',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 26,
                    color: const Color(0xffffffff),
                    letterSpacing: 0.26,
                  ),
                  softWrap: false,
                ),
              ),
              Positioned(
                top: 260,
                left: 20,
                child: Text(
                  'Please enter your phone number to \nverify your account',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: const Color(0xff707070),
                    letterSpacing: 0.16,
                  ),
                  softWrap: false,
                ),
              )
            ],
          ),
          SizedBox(
            height: height * 0.12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: height * 0.075,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Color(0xff707070),
                ),
              ),
              child: Row(
                children: [
                  CountryCodePicker(
                    onChanged: print,
                    // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                    initialSelection: 'IN',
                    favorite: ['+91', 'IN'],
                    // optional. Shows only country name and flag
                    showCountryOnly: false,
                    // optional. Shows only country name and flag when popup is closed.
                    showOnlyCountryWhenClosed: false,
                    // optional. aligns the flag and the Text left
                    alignLeft: false,
                  ),
                  VerticalDivider(
                    thickness: 1,
                    color: Color(0xff707070),
                  ),
                  Expanded(
                    child: TextField(
                      maxLength: 10,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        counterText: "",
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                        hintText: '123 456 7890',
                        hintStyle:
                            TextStyle(color: Color(0xffB6B7B7), fontSize: 18),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: height * 0.07,
              width: double.infinity,
              child: CommonButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OtpScreen(),
                      ));
                },
                text: 'Send Verification Code',
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => bottomNavigationBarScreen(),
                  ),
                );
              },
              child: Center(
                child: Text(
                  'Skip',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    color: const Color(0xff2d6a4f),
                    letterSpacing: 0.2,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
