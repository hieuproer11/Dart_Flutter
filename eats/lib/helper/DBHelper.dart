import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io' as io;
import 'package:eats/models/Cart.dart';

class DBHelper {
  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await initDatabase();
    return null;
  }

  initDatabase() async {
    io.Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, 'Cart.db');
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

// creating database table
  _onCreate(Database db, int version) async {
    await db.execute(
        'CREATE TABLE Cart(id INTEGER PRIMARY KEY, CartId VARCHAR UNIQUE, CartName TEXT, initialPrice INTEGER, CartPrice INTEGER, quantity INTEGER, unitTag TEXT, image TEXT)');
  }

// inserting data into the table
  Future<Cart> insert(Cart Cart) async {
    var dbClient = await database;
    await dbClient!.insert('Cart', Cart.toMap());
    return Cart;
  }

// getting all the items in the list from the database
  Future<List<Cart>> getCartList() async {
    var dbClient = await database;
    final List<Map<String, Object?>> queryResult =
        await dbClient!.query('Cart');
    return queryResult.map((result) => Cart.fromMap(result)).toList();
  }

  Future<int> updateQuantity(Cart Cart) async {
    var dbClient = await database;
    return await dbClient!.update('Cart', Cart as Map<String, Object?>,
        where: "CartId = ?", whereArgs: [Cart.productId]);
  }

// deleting an item from the Cart screen
  Future<int> deleteCartItem(int id) async {
    var dbClient = await database;
    return await dbClient!.delete('Cart', where: 'id = ?', whereArgs: [id]);
  }
}
