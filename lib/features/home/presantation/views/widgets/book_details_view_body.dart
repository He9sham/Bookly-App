import 'package:bookly_app/features/home/data/Models/bookmodels/bookmodels.dart';
import 'package:bookly_app/features/home/presantation/views/Sections/Similator_books_section.dart';
import 'package:bookly_app/features/home/presantation/views/Sections/book_details_section.dart';
import 'package:bookly_app/features/home/presantation/views/widgets/customappbar_bookview.dart';

import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookmodels});
  final Bookmodels bookmodels;
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.7, vertical: 40.2),
            child: Column(
              children: [
              const  CustomappBar(),
                BookDetailsSection(
                  bookmodels: bookmodels,
                ),
             const   Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
            const    SimilatorBooksSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
