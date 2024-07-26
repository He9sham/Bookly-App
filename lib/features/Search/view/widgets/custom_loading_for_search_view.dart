import 'package:bookly_app/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomLoadingForSearchView extends StatelessWidget {
  const CustomLoadingForSearchView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: sizeOfWidth(0.9, context),
        height: sizeOfHeight(0.9, context),
        child: Shimmer.fromColors(
          baseColor: const Color.fromARGB(255, 179, 178, 178),
          highlightColor: const Color.fromARGB(255, 158, 157, 157),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        height: sizeOfHeight(0.07, context),
                        width: sizeOfWidth(0.5, context),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
