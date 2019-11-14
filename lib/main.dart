import 'package:flutter/material.dart';
import 'package:language_game/bloc/game_bloc.dart';
import 'package:language_game/screens/HomeScreen/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<GameBloc>(
          builder: (BuildContext context) => GameBloc(),
        )
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
