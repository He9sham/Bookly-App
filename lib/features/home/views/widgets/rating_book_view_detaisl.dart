import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRate extends StatelessWidget {
  const BookRate({super.key, required this.pagecount, required this.languch});
  final int pagecount;
  final String languch;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Page count  ($pagecount)  ||',
          style: Styles.textmid.copyWith(
            fontSize: 16,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 40,
        ),
        Text(
          languch,
          style: Styles.textsmail,
        ),
      ],
    );
  }
}
