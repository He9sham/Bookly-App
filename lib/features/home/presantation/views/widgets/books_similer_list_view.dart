import 'package:bookly_app/features/home/presantation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class SimiletorBooKsView extends StatelessWidget {
  const SimiletorBooKsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImage(
                imageurl: 'https://www.google.com/imgres?q=image%20book&imgurl=https%3A%2F%2Fjuliaquinn.com%2FWP%2Fwp-content%2Fuploads%2F2024%2F02%2FJQ_special-edition-covers.png&imgrefurl=https%3A%2F%2Fjuliaquinn.com%2Fseries%2Fbridgertons%2F&docid=ic5YTf7bLucAvM&tbnid=oyEHFjA5A9yW0M&vet=12ahUKEwjovbWVuOSFAxWfcaQEHRI8De8QM3oECDoQAA..i&w=439&h=600&hcb=2&ved=2ahUKEwjovbWVuOSFAxWfcaQEHRI8De8QM3oECDoQAA',
              ),
            );
          }),
    );
  }
}
