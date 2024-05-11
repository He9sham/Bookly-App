// ignore_for_file: unnecessary_null_comparison

import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/loading_widget_error.dart';
import 'package:bookly_app/features/Search/presantation/view_model/Search/search_cubit.dart';
import 'package:bookly_app/features/home/presantation/views/widgets/Best_seller_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooklistView extends StatelessWidget {
  const BooklistView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BestSellerViewItem(bookmodels: state.books[index]),
                );
              });
        } else if (state is SearchFauiler) {
          return Center(
            child: Text(state.errmessage),
          );
        } else {
          return ShowWhenTheDataNull(state);
        }
      },
    );
  }

  // ignore: non_constant_identifier_names
  Widget ShowWhenTheDataNull(SearchState state) {
    if (state != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/msg1683023380-39546.jpg',
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'What kind of books do you want to look for?',
              style: Styles.textmid,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      );
    } else {
      return const LoadingWidgetError();
    }
  }
}
