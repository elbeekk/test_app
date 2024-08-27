import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:test_app/domain/models/event.dart';

class LocalStorage {
  LocalStorage._();

  static Database? _db;
  static const String _tableName = 'events';
  static const String _columnId = 'id';
  static const String _columnName = 'name';
  static const String _columnDesc = 'description';
  static const String _columnLocation = 'location';
  static const String _columnColor = 'color';
  static const String _columnTime = 'time';

  static Future<Database> get database async {
    if (_db != null) {
      return _db!;
    }
    _db = await getDatabase();
    return _db!;
  }

  static Future<Database> getDatabase() async {
    final databaseDirPath = await getDatabasesPath();

    final databasePath = join(databaseDirPath, "$_tableName.db");

    final database = await openDatabase(
      databasePath,
      version: 1,
      onCreate: (db, version) async {
        db.execute("""
        CREATE TABLE $_tableName (
        $_columnId INTEGER PRIMARY KEY,
        $_columnTime TEXT NOT NULL,
        $_columnDesc TEXT NOT NULL,
        $_columnColor INTEGER NOT NULL,
        $_columnLocation TEXT NOT NULL,
        $_columnName TEXT NOT NULL
        )
        """);
      },
    );
    return database;
  }

  static Future<void> addEvent(EventModel event) async {
    final db = await database;

    await db.insert(_tableName, event.toJson());
  }

  static Future<void> updateEvent(EventModel event) async {
    final db = await database;

    await db.update(_tableName, event.toJson());
  }

  static Future<List<EventModel>> getEvents() async {
    final db = await database;

    final res = await db.query(
      _tableName,
    );
    return res
        .map(
          (e) => EventModel.fromJson(e),
        )
        .toList();
  }
}
