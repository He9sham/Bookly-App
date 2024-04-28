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
          child: const CustomBookImage(
            imageurl: 'https://www.google.com/imgres?q=image%20book&imgurl=https%3A%2F%2Fjuliaquinn.com%2FWP%2Fwp-content%2Fuploads%2F2024%2F02%2FJQ_special-edition-covers.png&imgrefurl=https%3A%2F%2Fjuliaquinn.com%2Fseries%2Fbridgertons%2F&docid=ic5YTf7bLucAvM&tbnid=oyEHFjA5A9yW0M&vet=12ahUKEwjovbWVuOSFAxWfcaQEHRI8De8QM3oECDoQAA..i&w=439&h=600&hcb=2&ved=2ahUKEwjovbWVuOSFAxWfcaQEHRI8De8QM3oECDoQAA',
          ),
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
