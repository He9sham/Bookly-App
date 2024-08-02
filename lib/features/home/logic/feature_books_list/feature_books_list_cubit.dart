import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/Models/bookmodels/bookmodels.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'feature_books_list_state.dart';

class FeatureBooksListCubit extends Cubit<FeatureBooksListState> {
  FeatureBooksListCubit(this.homeRepo) : super(FeatureBooksListInitial());
  GlobalKey<ScaffoldState> scaffoldstate = GlobalKey();
  String category = '';
  final HomeRepo homeRepo;

  Future<void> fetchFeatureBooks(category) async {
    emit(FeatureBooksListLoading());
    var result = await homeRepo.fetchFeatureBooks(category);

    result.fold((failure) {
      emit(
        FeatureBooksListfailure(failure.errmessage),
      );
    }, (books) {
      emit(FeatureBooksListsuccess(books));
    });
  }
}
