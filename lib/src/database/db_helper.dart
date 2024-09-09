import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database? _database;

  DatabaseHelper._privateConstructor();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'my_database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE Users (
        id INTEGER PRIMARY KEY,
        name TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE Orders (
        id INTEGER PRIMARY KEY,
        productName TEXT,
        userId INTEGER,
        FOREIGN KEY (userId) REFERENCES Users (id) ON DELETE CASCADE
      )
    ''');
  }

  Future<void> insertUser(Map<String, dynamic> user) async {
    Database db = await DatabaseHelper.instance.database;
    await db.insert('Users', user);
  }

  Future<void> insertOrder(Map<String, dynamic> order) async {
    Database db = await DatabaseHelper.instance.database;
    await db.insert('Orders', order);
  }

  Future<List<Map<String, dynamic>>> getUserOrders(int userId) async {
    Database db = await DatabaseHelper.instance.database;
    return await db.rawQuery('''
    SELECT Orders.id, Orders.productName, Users.name
    FROM Orders
    JOIN Users ON Orders.userId = Users.id
    WHERE Users.id = ?
  ''', [userId]);
  }
}
