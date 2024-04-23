import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.textcolor,
    required this.text,
    required this.backgroundColor,
    this.borderRadius,
  });
  final Color textcolor;
  final String text;
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius!,
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.textmid.copyWith(
            fontWeight: FontWeight.w900,
            fontFamily: GoogleFonts.montserrat().fontFamily,
            color: textcolor,
          ),
        ),
      ),
    );
  }
}
