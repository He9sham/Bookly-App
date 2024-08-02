import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/Models/bookmodels/bookmodels.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Bookmodels>>> fetchNewsetBooks(String category);
  Future<Either<Failure, List<Bookmodels>>> fetchFeatureBooks(String category);
  Future<Either<Failure, List<Bookmodels>>> fetchSimilarBooks({required String category});
}
