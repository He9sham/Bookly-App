import 'package:bookly_app/core/widgets/loading_widget_error.dart';
import 'package:bookly_app/features/home/presantation/view_models/feature_books_list/feature_books_list_cubit.dart';
import 'package:bookly_app/features/home/presantation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksListCubit, FeatureBooksListState>(
      builder: (context, state) {
        if (state is FeatureBooksListsuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: ListView.builder(
                padding: const EdgeInsets.only(left: 10),
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context)
                            .push('/Bookview', extra: state.books[index]);
                      },
                      child: CustomBookImage(
                        imageurl:
                            state.books[index].volumeInfo.imageLinks.thumbnail,
                      ),
                    ),
                  );
                }),
          );
        } else if (state is FeatureBooksListfailure) {
          return Center(
            child: Text(
              state.errmessage,
            ),
          );
        } else {
          return const Center(
            child: LoadingWidgetError(),
          );
        }
      },
    );
  }
}
