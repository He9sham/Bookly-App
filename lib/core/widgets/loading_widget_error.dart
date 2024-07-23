import 'package:bookly_app/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingWidgetError extends StatelessWidget {
  const LoadingWidgetError({super.key, required this.axis});
  final Axis axis;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: sizeOfWidth(0.9, context),
        height: sizeOfHeight(0.3, context),
        child: Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: ListView.builder(
                  scrollDirection: axis ,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        height: sizeOfHeight(0.0009, context),
                        width: sizeOfWidth(0.3, context),
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
