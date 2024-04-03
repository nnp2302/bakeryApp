import 'package:demo_app/data/model/cart.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  // static Database? _db;
  // Future<Database?> get db async {
  //   if (_db != null) {
  //     return _db!;
  //   }

  //   _db = await initDatabase();
  // }

  // Future<Database> initDatabase() async {
  //   final databasePath = await getDatabasesPath();

  //   final path = join(databasePath, 'cart.db');
  //   return await openDatabase(path, version: 1, onCreate: _onCreate);
  // }

  // Future<void> _onCreate(Database db, int version) async {
  //   await db.execute(
  //       'CREATE TABLE cart (id INTEGER PRIMARY KEY, productId INT UNIQUE, productName TEXT, initPrice FLOAT, productPrice FLOAT, quantity INTEGER, unitTag TEXT, img TEXT)');
  // }

  // Future<Cart> addToCart(Cart cart) async {
  //   final db = await _db;
  //   await db!.insert('cart', cart.toMap());
  //   return cart;
  // }
}
