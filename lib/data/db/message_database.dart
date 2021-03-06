import 'package:sqflite/sqflite.dart';

class MessageDatabase {
  static final MessageDatabase instance = MessageDatabase._init();

  static Database? _database;

  MessageDatabase._init();

  // Future<Database> get database async {
  //   if (_database != null) return _database!;
  //
  //   _database = await _initDB('chat.db');
  //   return _database!;
  // }

  // Future<Database> _initDB(String filePath) async {
  //   final dbPath = await getDatabasesPath();
  //   final path = join(dbPath, filePath);
  //
  //   return await openDatabase(path, version: 1, onCreate: _createDB);
  // }

  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    const boolType = 'BOOLEAN NOT NULL';
    const integerType = 'INTEGER NOT NULL';

    // await db.execute('''
    //   CREATE TABLE $tableNotes (
    //   ${Message.id} $idType,
    //   ${NoteFields.isImportant} $boolType,
    //   ${NoteFields.number} $integerType,
    //   ${NoteFields.title} $textType,
    //   ${NoteFields.description} $textType,
    //   ${NoteFields.time} $textType
    // )
    // ''');
  }

  // Future close() async {
  //   final db = await instance.database;
  //
  //   db.close();
  // }
}
