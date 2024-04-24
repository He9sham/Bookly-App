import 'package:bookly_app/features/home/presantation/views/Sections/Similator_books_section.dart';
import 'package:bookly_app/features/home/presantation/views/Sections/book_details_section.dart';
import 'package:bookly_app/features/home/presantation/views/widgets/customappbar_bookview.dart';

import 'package:flutter/material.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding:
                 EdgeInsets.symmetric(horizontal: 30.7, vertical: 40.2),
            child: Column(
              children: [
                 CustomappBar(),
                 BookDetailsSection(),
                 Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilatorBooksSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

