import 'package:smena_demo/common/models/menu_category.dart';

abstract class IMenuRepository {
  Future<List<MenuCategory>> fetchMenu();
}
