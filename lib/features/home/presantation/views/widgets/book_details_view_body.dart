import 'package:bookly_app/features/home/presantation/views/widgets/customappbar_bookview.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.7, vertical: 40.2),
      child: Column(
        children: [
          CustomappBar(),
        ],
      ),
    );
  }
}
