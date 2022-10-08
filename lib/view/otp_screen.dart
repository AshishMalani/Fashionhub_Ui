import 'package:fashionhub/common/Common_Button.dart';
import 'package:fashionhub/view/Phon_Number_Screen.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import 'bottomNavigationBarScreen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
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
                top: height * 0.12,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                  child: Text(
                    'Verification\nCode',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Positioned(
                  top: 260,
                  left: 20,
                  child: Text(
                    'Please enter Code sent to',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: const Color(0xff707070),
                      letterSpacing: 0.18,
                    ),
                    softWrap: false,
                  )),
            ],
          ),
          SizedBox(
            height: height * 0.075,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '+91 123 456 7890',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    color: const Color(0xff000000),
                    letterSpacing: 0.18,
                    fontWeight: FontWeight.w700,
                  ),
                  softWrap: false,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PhoneNumberScreen(),
                          ));
                    },
                    child: Text(
                      'Change phone Number',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2d6a4f),
                        decoration: TextDecoration.underline,
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Center(
            child: OTPTextField(
              obscureText: true,
              keyboardType: TextInputType.number,
              length: 4,
              spaceBetween: 0,
              width: 300,
              fieldWidth: 50,
              style: TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.underline,
              contentPadding: EdgeInsets.symmetric(vertical: 13, horizontal: 0),
              margin: EdgeInsets.symmetric(horizontal: 0),
              otpFieldStyle: OtpFieldStyle(
                  focusBorderColor: Colors.green,
                  disabledBorderColor: Colors.grey),
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
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
                        builder: (context) => bottomNavigationBarScreen(),
                      ));
                },
                text: 'CONTINUE',
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          TextButton(
            onPressed: () {},
            child: Center(
                child: Text(
              'Resend Code',
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 20,
                color: const Color(0xff2d6a4f),
                letterSpacing: 0.2,
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            )),
          )
        ],
      ),
    );
  }
}
