import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/Models/bookmodels/bookmodels.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<Bookmodels>>> fetchSearchBooks();
}