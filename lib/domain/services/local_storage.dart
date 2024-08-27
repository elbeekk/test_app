import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class LocalStorage {
  LocalStorage._();

  static Database? _db;
  static const String _tableName = 'events';
  static const String _columnId = 'id';
  static const String _columnContent = 'content';
  static const String _columnStatus = 'status';

  Future<Database> get database async {
    if (_db != null) {
      return _db!;
    }
    _db = await getDatabase();
    return _db!;
  }

  Future<Database> getDatabase() async {
    final databaseDirPath = await getDatabasesPath();

    final databasePath = join(databaseDirPath, "$_tableName.db");

    final database = await openDatabase(
      databasePath,
      onCreate: (db, version) {
        db.execute("""
        CREATE TABLE $_tableName (
        $_columnId INTEGER PRIMARY KEY,
        $_columnContent TEXT NOT NULL,
        $_columnStatus INTEGER NOT NULL
        )
        """);
      },
    );
    return database;
  }

  Future<void> addTask(String content) async {
    final db = await database;

    await db.insert(_tableName, {
      _columnContent: content,
      _columnStatus: 0,
    });
  }
}
