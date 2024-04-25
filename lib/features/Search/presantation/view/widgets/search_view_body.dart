import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Search/presantation/view/widgets/book_list_view.dart';
import 'package:bookly_app/features/Search/presantation/view/widgets/search_item.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 80,
          ),
          SearchWidget(),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'Search Result',
              style: Styles.textmid,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: BooklistView(),
            ),
          ),
        ],
      ),
    );
  }
}
