import 'dart:async';

import 'package:flutter/material.dart';
import 'package:language_game/constants.dart';
import 'package:language_game/widgets/ui/gradient_appbar.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int timeLeft = 10;
  String currentWord = "jesus";
  String textWrittenByUser = "";
  String wordToDisplay = "";

  @override
  void initState() {
    startTimer();
    getDisplayWord();
    super.initState();
  }

  void getDisplayWord() {
    String placeholder = "";

    int numberOfUnderscores = currentWord.length - textWrittenByUser.length;

    for (int c = 0; c < textWrittenByUser.length; c++) {
      placeholder += "${textWrittenByUser[c]} ";
    }

    for (int c = 0; c < numberOfUnderscores; c++) {
      placeholder += "_ ";
    }

    setState(() {
      wordToDisplay = placeholder;
    });
  }

  void _handleTextChange(String newText) {
    textWrittenByUser = newText;
    getDisplayWord();
  }

  void startTimer() {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      if (timer.tick > 1) {
        setState(() {
          timeLeft--;
        });
      }

      if (timeLeft == 0) {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: timeLeft.toString(),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 50),
            Container(
              height: 200,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: kMainBlueLinearGradient,
                boxShadow: [kMainBoxShadow],
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  Text(
                    "Christ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.transparent),
                    cursorWidth: 0,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    onChanged: _handleTextChange,
                    autofocus: true,
                    autocorrect: false,
                  ),
                  Container(
                    child: Text(
                      "$wordToDisplay",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        letterSpacing: 2,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
