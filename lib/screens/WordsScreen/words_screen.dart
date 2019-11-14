import 'package:flutter/material.dart';

class WordsScreen extends StatefulWidget {
  @override
  _WordsScreenState createState() => _WordsScreenState();
}

class _WordsScreenState extends State<WordsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Word List"),
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
