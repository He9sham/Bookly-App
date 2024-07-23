import 'package:bookly_app/core/helper/spacing.dart';
import 'package:bookly_app/features/home/logic/newset_books_list/newset_books_list_cubit.dart';
import 'package:bookly_app/features/home/views/widgets/Best_seller_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

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
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerViewItem(
                  bookmodels: state.books[index],
                ),
              );
            });
      } else if (state is NewsetBooksListFailure) {
        return Center(
          child: Text(
            state.errmessage,
          ),
        );
      } else {
        return const LoadingWidgetErrorForBestSeller();
      }
    });
  }
}

class LoadingWidgetErrorForBestSeller extends StatelessWidget {
  const LoadingWidgetErrorForBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: sizeOfWidth(0.9, context),
        height: sizeOfHeight(0.9, context),
        child: Shimmer.fromColors(
          baseColor: const Color.fromARGB(255, 179, 178, 178),
          highlightColor: const Color.fromARGB(255, 158, 157, 157),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        height: sizeOfHeight(0.07, context),
                        width: sizeOfWidth(0.5, context),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
