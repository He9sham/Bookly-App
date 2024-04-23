import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingBook extends StatelessWidget {
  const RatingBook({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          r'19.99$',
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
          '  4.8',
          style: Styles.textmid.copyWith(
            fontSize: 16,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 40,
        ),
        const Text(
          '(2390)',
          style: Styles.textsmail,
        ),
      ],
    );
  }
}
