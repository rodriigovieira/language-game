import 'package:flutter/material.dart';
import 'package:language_game/constants.dart';

class GradientAppBar extends StatefulWidget implements PreferredSizeWidget {
  GradientAppBar({
    Key key,
    @required this.title,
    this.showBackButton = true,
  }) : preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  _GradientAppBarState createState() => _GradientAppBarState();

  @override
  final Size preferredSize;

  final String title;
  final bool showBackButton;
}

class _GradientAppBarState extends State<GradientAppBar> {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        child: NavigationToolbar(
          middle: Text(
            "${widget.title}",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: widget.showBackButton
              ? IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator.pop(context),
                )
              : null,
        ),
        decoration: BoxDecoration(
          gradient: kMainBlueLinearGradient,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[500],
              blurRadius: 20.0,
              spreadRadius: 1.0,
            )
          ],
        ),
      ),
      preferredSize: widget.preferredSize,
    );
  }
}
