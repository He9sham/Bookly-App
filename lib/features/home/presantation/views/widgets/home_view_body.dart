import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presantation/views/widgets/Best_seller_view.dart';
import 'package:bookly_app/features/home/presantation/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/presantation/views/widgets/feature_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 45),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(icon: FontAwesomeIcons.magnifyingGlass),
          const SizedBox(
            height: 20,
          ),
          const FeatureBooksListView(),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Best Seller',
            style: Styles.textmid.copyWith(fontFamily: kGtSectraFine),
          ),
          const SizedBox(
            height: 20,
          ),
          const BestSellerViewItem(),
        ],
      ),
    );
  }
}

 