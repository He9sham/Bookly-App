
 import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItim extends StatelessWidget {
  const CustomListViewItim({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
       
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image:const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.testimage),
            ),
          ),
        ),
      ),
    );
  }
}
