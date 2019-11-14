import 'package:flutter/material.dart';
import 'package:language_game/screens/ConfigScreen/config_screen.dart';
import 'package:language_game/screens/WordsScreen/words_screen.dart';
import 'package:language_game/widgets/ui/normal_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bonjour Hi"),
      ),
      body: Container(
        // padding: EdgeInsets.symmetric(
        //   horizontal: 15,
        //   vertical: 10,
        // ),
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
              onPressed: () => Navigator.push(
                context,
                PageRouteBuilder(
                  transitionDuration: Duration(
                    milliseconds: 300,
                  ),
                  pageBuilder: (BuildContext context, animation1, animation2) =>
                      ConfigScreen(),
                  transitionsBuilder:
                      (context, animation1, animation2, child) =>
                          FadeTransition(
                    opacity: animation1,
                    child: child,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            NormalButton(
              label: "WORD LIST",
              onPressed: () => Navigator.push(
                context,
                PageRouteBuilder(
                  transitionDuration: Duration(
                    milliseconds: 300,
                  ),
                  pageBuilder: (BuildContext context, Animation animation1,
                          Animation animation2) =>
                      WordsScreen(),
                  transitionsBuilder: (
                    BuildContext context,
                    Animation animation,
                    Animation secondaryAnimation,
                    Widget child,
                  ) {
                    var tween = Tween(
                      begin: Offset(0.0, 1.0),
                      end: Offset.zero,
                    );

                    return SlideTransition(
                      position: animation.drive(tween),
                      child: child,
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: Colors.blue,
                  height: 100,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    "START GAME",
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
          ],
        ),
      ),
    );
  }
}
