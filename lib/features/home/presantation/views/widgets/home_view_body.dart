import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/utils/Styles.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presantation/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/presantation/views/widgets/feature_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const  CustomAppBar(icon: FontAwesomeIcons.magnifyingGlass),
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
        const  SizedBox(
            height: 15,
          ),
        const  BestSellerViewItem()
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

class BestSellerViewItem extends StatelessWidget {
  const BestSellerViewItem({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testimage),
                ),
              ),
            ),
          ),
          const Column(
            children: [
              Text(
                'Harry Potter\n and the Goblet of fire ',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'J.K.Rowling',
                style: TextStyle(fontSize: 14),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(r'19.99$'),
                  Text('4.8'),
                  Text('(2390)'),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
