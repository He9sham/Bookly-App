import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomappBar extends StatelessWidget {
  const CustomappBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(FontAwesomeIcons.x),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.cartShopping),
        ),
      ],
    );
  }
}
