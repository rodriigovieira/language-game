import 'package:flutter/material.dart';
import 'package:language_game/screens/ConfigScreen/config_screen.dart';
import 'package:language_game/screens/GameScreen/game_screen.dart';
import 'package:language_game/screens/WordsScreen/words_screen.dart';

class HomeScreenBloc extends ChangeNotifier {
  Future<void> onTapConfigButton(BuildContext context) {
    return Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: Duration(
          milliseconds: 300,
        ),
        pageBuilder: (_, __, ___) => ConfigScreen(),
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
    );
  }

  Future<void> onTapWordsButton(BuildContext context) {
    return Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: Duration(
          milliseconds: 300,
        ),
        pageBuilder: (_, __, ___) => WordsScreen(),
        transitionsBuilder: (
          BuildContext context,
          Animation animation1,
          Animation animation2,
          Widget child,
        ) {
          var tween = Tween(
            begin: Offset(0.0, 1.0),
            end: Offset.zero,
          );

          return SlideTransition(
            position: animation1.drive(tween),
            child: child,
          );
        },
      ),
    );
  }

  Future<void> onTapStartGameButton(BuildContext context) {
    return Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => GameScreen(),
        transitionDuration: Duration(milliseconds: 300),
        transitionsBuilder: (
          BuildContext context,
          Animation animation1,
          Animation animation2,
          Widget child,
        ) =>
            FadeTransition(
          opacity: animation1,
          child: child,
        ),
      ),
    );
  }
}
