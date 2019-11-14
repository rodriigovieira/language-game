import 'package:flutter/material.dart';

class NormalButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  NormalButton({
    @required this.label,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 60,
        margin: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.5,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          boxShadow: [
            BoxShadow(
              color: Color(0x7f03a9f4),
              blurRadius: 10,
              spreadRadius: 0,
              offset: Offset(1.0, 0.0),
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
