import 'package:bookly_app/core/Services/api_service.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/Search/data/repo/search_repo.dart';
import 'package:bookly_app/features/home/data/Models/bookmodels/bookmodels.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoimpl implements SearchRepo {
  ApiService apiService;
  SearchRepoimpl(this.apiService);
  @override
  Future<Either<Failure, List<Bookmodels>>> fetchSearchBooks() async {
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
}
