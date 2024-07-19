import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingBook extends StatelessWidget {
  const RatingBook({super.key, required this.language, required this.count});
  final String language;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Free',
          style: Styles.textmid,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 8,
        ),
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 16,
        ),
        Text(
          ('  ($count)'),
          style: Styles.textmid.copyWith(
            fontSize: 16,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 30,
        ),
        Text(
          language,
          style: Styles.textmid.copyWith(fontSize: 15),
        ),
      ],
    );
  }
}
