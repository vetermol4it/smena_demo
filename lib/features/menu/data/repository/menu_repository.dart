import 'package:injectable/injectable.dart';
import 'package:smena_demo/common/models/menu_category.dart';
import 'package:smena_demo/features/menu/data/api_client/menu_api_client.dart';
import 'package:smena_demo/features/menu/domain/repository/i_menu_repository.dart';

@Injectable(as: IMenuRepository)
class MenuRepository implements IMenuRepository {
  final MenuApiClient _apiClient;

  MenuRepository(this._apiClient);

  @override
  Future<List<MenuCategory>> fetchMenu() async {
    final menuCategoryMapList = await _apiClient.fetchMenu();

    final List<MenuCategory> result = [];
    for (var menuCategoryMap in menuCategoryMapList) {
      result.add(MenuCategory.fromJson(menuCategoryMap));
    }

    return result;
  }
}
