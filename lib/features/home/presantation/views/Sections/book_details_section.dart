import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presantation/views/widgets/book_Action_View.dart';
import 'package:bookly_app/features/home/presantation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/features/home/presantation/views/widgets/rating_book_view_detaisl.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.17, vertical: 35),
          child: const CustomBookImage(),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textmlarg
              .copyWith(fontFamily: GoogleFonts.spectral().fontFamily),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textmid.copyWith(
            fontFamily: GoogleFonts.montserrat().fontFamily,
            color: Colors.white.withOpacity(0.6),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const BookRate(),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
