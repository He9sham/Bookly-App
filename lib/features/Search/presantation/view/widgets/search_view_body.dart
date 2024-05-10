import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Search/presantation/view/widgets/book_list_view.dart';
import 'package:bookly_app/features/Search/presantation/view/widgets/search_item.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key, required this.onsearch});
  final dynamic Function(String) onsearch;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 80,
          ),
          SearchWidget(
            onSearch: onsearch ,
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'Search Result',
              style: Styles.textmid,
            ),
          ),
          const Expanded(
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
