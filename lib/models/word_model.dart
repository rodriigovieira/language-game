import 'package:sqflite/sqflite.dart';

class WordModel {
  final int id;
  final String hintText;
  final String response;
  final int numberOfTimesSeen;
  final int numberOfTimesCorrect;

  WordModel({
    this.id,
    this.hintText,
    this.response,
    this.numberOfTimesCorrect,
    this.numberOfTimesSeen,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'hintText': hintText,
      'response': response,
      'numberOfTimesCorrect': numberOfTimesCorrect,
      'numberOfTimesSeen': numberOfTimesSeen,
    };
  }
}

final Future<Database> database = openDatabase(
  'words_database.db',
  onCreate: (Database db, int version) {
    return db.execute(
      "CREATE TABLE words(id INTEGER PRIMARY KEY, response TEXT,hintText TEXT, numberOfTimesSeen INTEGER, numberOfTimesCorrect INTEGER)",
    );
  },
  version: 1,
);

Future<void> insertWord(WordModel word) async {
  final Database db = await database;
  await db.insert(
    'words',
    word.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<WordModel>> words() async {
  final Database db = await database;

  final List<Map<String, dynamic>> maps = await db.query('words');

  return List.generate(maps.length, (int i) {
    return WordModel(
      id: maps[i]['id'],
      hintText: maps[i]['hintText'],
      response: maps[i]['response'],
      numberOfTimesCorrect: maps[i]['numberOfTimesCorrect'],
      numberOfTimesSeen: maps[i]['numberOfTimesSeen'],
    );
  });
}
