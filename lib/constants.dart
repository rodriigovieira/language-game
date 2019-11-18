import 'package:flutter/material.dart';

Color kMainLightBlueColor = Color(0xff7474BF);
Color kMainDarkBlueColor = Color(0xff348AC7);

LinearGradient kMainBlueLinearGradient = LinearGradient(
  colors: [
    kMainDarkBlueColor,
    kMainLightBlueColor,
  ],
);

BoxShadow kMainBoxShadow = BoxShadow(
  color: Colors.grey,
  blurRadius: 10,
  spreadRadius: 3,
  offset: Offset(1.0, 0.0),
);
