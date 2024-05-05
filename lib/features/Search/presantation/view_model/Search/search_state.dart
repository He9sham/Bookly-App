part of 'search_cubit.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchFauiler extends SearchState {
  final String errmessage;

  const SearchFauiler(this.errmessage);
}

final class SearchSuccess extends SearchState {
  final List<Bookmodels> books;

  const SearchSuccess(this.books);
}
