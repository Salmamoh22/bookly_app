import 'package:bookly_app/Core/utils/api_service.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_imp.dart';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
}
