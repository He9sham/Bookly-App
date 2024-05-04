part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksLoading extends SimilarBooksState {}

final class SimilarBooksSuccess extends SimilarBooksState {
  final List<Bookmodels> books;

  const SimilarBooksSuccess(this.books);
}

final class SimilarBooksFailuer extends SimilarBooksState {
  final String errmessage;

  const SimilarBooksFailuer(this.errmessage);
}
