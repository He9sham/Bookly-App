import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/Models/bookmodels/bookmodels.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newset_books_list_state.dart';

class NewsetBooksListCubit extends Cubit<NewsetBooksListState> {
  NewsetBooksListCubit(this.homeRepo) : super(NewsetBooksListInitial());


 final  HomeRepo homeRepo;

  Future<void> fetchNewsetBooks() async {
    emit(NewsetBooksListLoading());
    var result = await homeRepo.fetchNewsetBooks();

    result.fold((failure) {
      emit(NewsetBooksListFailure(failure.errmessage));
    }, (books) {
      emit(NewsetBooksListSuccess(books));
    });
  }
}
