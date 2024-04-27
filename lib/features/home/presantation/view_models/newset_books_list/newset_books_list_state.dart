part of 'newset_books_list_cubit.dart';

sealed class NewsetBooksListState extends Equatable {
  const NewsetBooksListState();

  @override
  List<Object> get props => [];
}

final class NewsetBooksListInitial extends NewsetBooksListState {}

final class NewsetBooksListLoading extends NewsetBooksListState {}

final class NewsetBooksListFailure extends NewsetBooksListState {
  final String errmessage;

  const NewsetBooksListFailure(this.errmessage);
}

final class NewsetBooksListSuccess extends NewsetBooksListState {
  final List<Bookmodels> books;

  const NewsetBooksListSuccess(this.books);
}
