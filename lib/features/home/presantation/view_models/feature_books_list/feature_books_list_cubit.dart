import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/Models/bookmodels/bookmodels.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'feature_books_list_state.dart';

class FeatureBooksListCubit extends Cubit<FeatureBooksListState> {
  FeatureBooksListCubit(this.homeRepo) : super(FeatureBooksListInitial());

 final  HomeRepo homeRepo;

  Future<void> fetchFeatureBooks() async {
    emit(FeatureBooksListLoading());
    var result = await homeRepo.fetchFeatureBooks();

    result.fold((failure) {
      emit(FeatureBooksListfailure(failure.errmessage));
    }, (books) {
      emit(FeatureBooksListsuccess(books));
    });
  }
}
