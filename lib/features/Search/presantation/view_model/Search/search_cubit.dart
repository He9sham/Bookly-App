import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Search/data/repo/search_repo.dart';
import 'package:bookly_app/features/home/data/Models/bookmodels/bookmodels.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;

  Future<void> fetchSearchBooks() async {
    emit(SearchLoading());
    var result = await searchRepo.fetchSearchBooks();

    result.fold((failure) {
      emit(SearchFauiler(failure.errmessage));
    }, (books) {
      emit(SearchSuccess(books));
    });
  }
}
