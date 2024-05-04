
import 'package:bookly_app/features/home/presantation/views/widgets/books_similer_list_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utils/styles.dart';

class SimilatorBooksSection extends StatelessWidget {
  const SimilatorBooksSection({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textmid.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            fontFamily: GoogleFonts.montserrat().fontFamily,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
       const  SimiletorBooKsView()
      ],
    );
  }
}
