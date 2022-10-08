import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final text;
  final VoidCallback onTap;
  const CommonButton({Key? key, this.text, required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialButton(
      color: Color(0xff95D5B2),
      height: height * 0.067,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      onPressed: onTap,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
      ),
    );
  }
}
