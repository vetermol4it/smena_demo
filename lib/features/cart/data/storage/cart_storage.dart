import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class CartStorage {
  final _itemsKey = 'items';

  final SharedPreferences _sharedPreferences;

  CartStorage(this._sharedPreferences);

  List<Map<String, dynamic>> fetchItems() {
    final stringList = _sharedPreferences.getStringList(_itemsKey) ?? [];

    final List<Map<String, dynamic>> result = [];
    for (var jsonString in stringList) {
      result.add(jsonDecode(jsonString));
    }
    return result;
  }

  Future<void> saveItems(List<Map<String, dynamic>> items) {
    final stringList = items.map<String>((e) => jsonEncode(e)).toList();
    return _sharedPreferences.setStringList(_itemsKey, stringList);
  }
}
