import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:language_game/bloc/game_bloc.dart';
import 'package:language_game/bloc/home_page_bloc.dart';
import 'package:language_game/bloc/words_bloc.dart';
import 'package:language_game/screens/HomeScreen/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white,
      ),
    );
    
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<GameBloc>(
          builder: (BuildContext context) => GameBloc(),
        ),
        ChangeNotifierProvider<HomeScreenBloc>(
          builder: (BuildContext context) => HomeScreenBloc(),
        ),
        ChangeNotifierProvider<WordsBloc>(
          builder: (BuildContext context) => WordsBloc(),
        )
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
