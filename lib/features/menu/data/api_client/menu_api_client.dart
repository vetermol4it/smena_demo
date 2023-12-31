import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:smena_demo/features/menu/data/api_client/menu_api_routes.dart';

@injectable
class MenuApiClient {
  final Dio _dio;

  MenuApiClient(this._dio);

  Future<List> fetchMenu() async {
    final result = await _dio.get(MenuApiRoutes.fetchMenu);
    return jsonDecode(result.data);
  }
}
