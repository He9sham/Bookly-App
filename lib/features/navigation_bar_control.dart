import 'package:bookly_app/features/home/presantation/views/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class NavigationBarControl extends StatelessWidget {
  const NavigationBarControl({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     bottomNavigationBar: NavigateBar(),
    );
  }
}