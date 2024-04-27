import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/Models/bookmodels/bookmodels.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Bookmodels>>> fetchSellerBooks();
  Future<Either<Failure, List<Bookmodels>>> fetchFeatureBooks();
}
