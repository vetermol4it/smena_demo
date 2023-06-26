import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:smena_demo/features/menu/domain/cubit/menu_state.dart';
import 'package:smena_demo/features/menu/domain/repository/i_menu_repository.dart';

@injectable
class MenuCubit extends Cubit<MenuState> {
  MenuCubit(this._repository) : super(MenuLoadingState());

  final IMenuRepository _repository;

  void fetchCategories() async {
    emit(MenuLoadingState());
    try {
      final result = await _repository.fetchCategories();
      emit(MenuReadyState(categories: result));
    } catch (e) {
      Logger().e(e);
      emit(MenuErrorState());
    }
  }
}
