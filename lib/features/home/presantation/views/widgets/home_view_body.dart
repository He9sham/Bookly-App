
import 'package:bookly_app/features/home/presantation/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/presantation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 35),
      child: Column(
        children: [
          CustomAppBar(icon: FontAwesomeIcons.magnifyingGlass),
          SizedBox(
            height: 20,
          ),
          CustomListViewItim(),
        ],
      ),
    );
  }
}