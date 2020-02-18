import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:language_game/bloc/home_page_bloc.dart';
import 'package:language_game/constants.dart';
import 'package:language_game/models/word_model.dart';
import 'package:language_game/screens/HomeScreen/home_screen.dart';

class WordsBloc extends ChangeNotifier {
  Future<void> handleWordAdd({
    @required WordModel word,
    @required BuildContext context,
  }) async {
    showDialog(
      builder: (BuildContext context) {
        return Center(
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(kMainDarkBlueColor),
            ),
          ),
        );
      },
      context: context,
    );

    await insertWord(word);

    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 300),
        pageBuilder: (_, __, ___) => HomeScreen(),
        transitionsBuilder: (
          BuildContext context,
          Animation animation1,
          Animation animation2,
          Widget child,
        ) {
          final tween = Tween(
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
}
