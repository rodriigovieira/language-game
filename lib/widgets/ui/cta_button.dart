import 'package:flutter/material.dart';
import 'package:language_game/constants.dart';

class CTAButton extends StatelessWidget {
  final Function onTap;
  final String label;

  CTAButton({
    @required this.onTap,
    @required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              gradient: kMainBlueLinearGradient,
            ),
            height: 100,
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              "$label",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.3,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
