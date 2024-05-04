import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/Services/api_service.dart';
import 'package:bookly_app/features/home/data/Models/bookmodels/bookmodels.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<Bookmodels>>> fetchFeatureBooks() async {
    try {
      var data = await apiService.get(
          endpoints: 'volumes?Filtering=free-ebooks&q=subject:programming');
      List<Bookmodels> books = [];
      for (var item in data['items']) {
        books.add(Bookmodels.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioerro(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Bookmodels>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endpoints:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:sports');
      List<Bookmodels> books = [];
      for (var item in data['items']) {
        try {
          books.add(Bookmodels.fromJson(item));
        } catch (e) {
          print(item);
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioerro(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
