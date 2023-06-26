import 'package:smena_demo/common/models/menu_category.dart';

abstract class MenuState {}

class MenuLoadingState extends MenuState {}

class MenuErrorState extends MenuState {}

class MenuReadyState extends MenuState {
  final List<MenuCategory> categories;

  MenuReadyState({
    required this.categories,
  });
}
