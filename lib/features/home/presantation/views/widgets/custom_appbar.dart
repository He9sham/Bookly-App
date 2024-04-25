import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presantation/views/widgets/custom_search_icon.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon, this.ontap, this.onPressed});

  final IconData icon;
  final void Function()? ontap;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AssetsData.logo,
          height: 16,
        ),
        const Spacer(),
        CustomSearchIcon(
          onPressed: onPressed ,
          ontap: ontap,
          icon: icon,
        )
      ],
    );
  }
}
