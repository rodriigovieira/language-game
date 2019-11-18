import 'package:flutter/material.dart';
import 'package:language_game/widgets/ui/cta_button.dart';
import 'package:language_game/widgets/ui/gradient_appbar.dart';

class ConfigScreen extends StatefulWidget {
  @override
  _ConfigScreenState createState() => _ConfigScreenState();
}

class _ConfigScreenState extends State<ConfigScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: "Configuration",
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            CTAButton(
              label: "SAVE",
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
