import 'package:bookly_app/features/home/presantation/views/widgets/Best_seller_view.dart';
import 'package:flutter/material.dart';

class BooklistView extends StatelessWidget {
  const BooklistView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BestSellerViewItem(),
          );
        });
  }
}
