import 'package:bookly_app/features/home/presantation/view_models/newset_books_list/newset_books_list_cubit.dart';
import 'package:bookly_app/features/home/presantation/views/widgets/Best_seller_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksListCubit, NewsetBooksListState>(
        builder: (context, state) {
      if (state is NewsetBooksListSuccess) {
        return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerViewItem(
                  bookmodels: state.books[index],
                ),
              );
            });
      } else if (state is NewsetBooksListFailure) {
        return const Center(
          child: Text('was an error'),
        );
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
