import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRate extends StatelessWidget {
  const BookRate({super.key, required this.pagecount, required this.languch});
  final int pagecount;
  final String languch;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 16,
        ),
        Text(
          '  $pagecount',
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
