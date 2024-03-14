import 'package:bookly_app/features/home/presantation/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/presantation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          FeatureBooksListView(),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                'Best Seller',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CustomListViewItim(),
            );
          }),
    );
  }
}
