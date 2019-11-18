import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:language_game/bloc/home_page_bloc.dart';
import 'package:language_game/widgets/ui/cta_button.dart';
import 'package:language_game/widgets/ui/gradient_appbar.dart';
import 'package:language_game/widgets/ui/normal_button.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (
        BuildContext context,
        HomeScreenBloc homeScreenBloc,
        Widget child,
      ) =>
          Scaffold(
        appBar: GradientAppBar(
          title: "Language Game",
          showBackButton: false,
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Bonjour Hi!",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.3,
                  ),
                ),
              ),
              Text(
                "Welcome to the Language App. Try to get as many words as you can. I dare you!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  height: 1.1,
                ),
              ),
              SizedBox(height: 20),
              NormalButton(
                label: "CONFIGURATION",
                onPressed: () => homeScreenBloc.onTapConfigButton(context),
              ),
              SizedBox(height: 20),
              NormalButton(
                label: "WORD LIST",
                onPressed: () => homeScreenBloc.onTapWordsButton(context),
              ),
              SizedBox(height: 20),
              CTAButton(
                onTap: () => homeScreenBloc.onTapStartGameButton(context),
                label: "START GAME",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
