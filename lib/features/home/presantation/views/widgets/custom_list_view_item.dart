import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageurl});
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image:  DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(imageurl),
            ),
          ),
        ),
      ),
    );
  }
}
