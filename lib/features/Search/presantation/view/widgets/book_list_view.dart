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
            // child: BestSellerViewItem(),
            child: Text('data'),
          );
        });
  }
}
