import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/Models/bookmodels/bookmodels.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<Bookmodels>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Bookmodels>>> fetchSellerBooks() {
    // TODO: implement fetchSellerBooks
    throw UnimplementedError();
  }
}