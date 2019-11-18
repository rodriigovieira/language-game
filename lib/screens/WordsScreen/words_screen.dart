import 'dart:math';

import 'package:flutter/material.dart';
import 'package:language_game/bloc/words_bloc.dart';
import 'package:language_game/constants.dart';
import 'package:language_game/models/word_model.dart';
import 'package:language_game/screens/WordsScreen/custom_textfield.dart';
import 'package:language_game/widgets/ui/cta_button.dart';
import 'package:language_game/widgets/ui/gradient_appbar.dart';
import 'package:provider/provider.dart';

class WordsScreen extends StatefulWidget {
  @override
  _WordsScreenState createState() => _WordsScreenState();
}

class _WordsScreenState extends State<WordsScreen> {
  TextEditingController _hintTextController = TextEditingController();
  TextEditingController _responseController = TextEditingController();

  WordsBloc _wordsBloc;

  @override
  void initState() {
    _wordsBloc = Provider.of<WordsBloc>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: "Words",
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
                  CustomTextField(
                    controller: _hintTextController,
                    hintText: "Display Word",
                    autofocus: true,
                  ),
                  CustomTextField(
                    controller: _responseController,
                    hintText: "Answer",
                  ),
                ],
              ),
            ),
            CTAButton(
              label: "ADD WORD",
              onTap: () => _wordsBloc.handleWordAdd(
                word: WordModel(
                  id: Random.secure().nextInt(10000),
                  hintText: _hintTextController.text,
                  response: _responseController.text,
                  numberOfTimesCorrect: 0,
                  numberOfTimesSeen: 0,
                ),
                context: context,
              ),
            )
          ],
        ),
      ),
    );
  }
}
