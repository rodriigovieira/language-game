


import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key key,
    @required this.controller,
    @required this.hintText,
    this.autofocus = false,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 15,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0x2f000000),
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
          autofocus: autofocus,
          autocorrect: false,
          controller: controller,
          style: TextStyle(
            color: Colors.white,
            fontSize: 21,
            letterSpacing: 1.3,
          ),
          decoration: InputDecoration(
            hintText: "$hintText",
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: .75,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: .75,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}
