part of 'feature_books_list_cubit.dart';

sealed class FeatureBooksListState extends Equatable {
  const FeatureBooksListState();

  @override
  List<Object> get props => [];
}

final class FeatureBooksListInitial extends FeatureBooksListState {}

final class FeatureBooksListLoading extends FeatureBooksListState {}

final class FeatureBooksListfailure extends FeatureBooksListState {
  final String errmessage;

  const FeatureBooksListfailure(this.errmessage);
}

final class FeatureBooksListsuccess extends FeatureBooksListState {
  final List<Bookmodels> books;

  const FeatureBooksListsuccess(this.books);
}
