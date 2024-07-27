import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/Models/bookmodels/bookmodels.dart';
import 'package:bookly_app/features/home/views/widgets/book_Action_View.dart';
import 'package:bookly_app/features/home/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/features/home/views/widgets/rating_book_view_detaisl.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookmodels});
  final Bookmodels bookmodels;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.17, vertical: 35),
          child: CustomBookImage(
            imageurl: bookmodels.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Text(
          textAlign: TextAlign.center,
          bookmodels.volumeInfo.title!,
          style: Styles.textmlarg
              .copyWith(fontFamily: GoogleFonts.spectral().fontFamily),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          bookmodels.volumeInfo.authors[0],
          style: Styles.textmid.copyWith(
            fontFamily: GoogleFonts.montserrat().fontFamily,
            color: Colors.white.withOpacity(0.6),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        BookRate(
          languch: bookmodels.volumeInfo.language!,
          pagecount: bookmodels.volumeInfo.pageCount!,
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 120,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  maxLines: 5,
                  bookmodels.volumeInfo.description ?? "",
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        BooksAction(
          bookmodels: bookmodels,
        ),
      ],
    );
  }
}


