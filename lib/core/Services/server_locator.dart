import 'package:bookly_app/core/Services/api_service.dart';
import 'package:bookly_app/features/Search/data/repo/search_repo_impl.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServerLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(getIt.get<ApiService>()),
  );
  getIt.registerSingleton<SearchRepoimpl>(
    SearchRepoimpl(getIt.get<ApiService>()),
  );
}
