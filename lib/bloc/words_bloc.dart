import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:language_game/constants.dart';
import 'package:language_game/models/word_model.dart';

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

    Navigator.pop(context);
    Navigator.pop(context);
  }
}
