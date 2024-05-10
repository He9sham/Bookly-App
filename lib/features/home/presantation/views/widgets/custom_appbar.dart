import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presantation/views/widgets/custom_search_icon.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.icon,
      this.ontap,
      this.onPressed,
      this.onPressed2});

  final IconData icon;
  final void Function()? ontap;
  final void Function()? onPressed;
  final void Function()? onPressed2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: onPressed2, icon: const Icon(Icons.menu)),
        const SizedBox(
          width: 10,
        ),
        Image.asset(
          AssetsData.logo,
          height: 16,
        ),
        const Spacer(),
        CustomSearchIcon(
          onPressed: onPressed,
          ontap: ontap,
          icon: icon,
        )
      ],
    );
  }
}
