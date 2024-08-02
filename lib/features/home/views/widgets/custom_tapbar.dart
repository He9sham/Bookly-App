import 'package:bookly_app/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTapBar extends StatefulWidget {
  const CustomTapBar({super.key, required this.onCategorySelected});
  final Function(String) onCategorySelected;
  @override
  // ignore: library_private_types_in_public_api
  _CustomTapBarState createState() => _CustomTapBarState();
}

class _CustomTapBarState extends State<CustomTapBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          horizontalSpace(9),
          itemtapbar(
              title: 'Programming',
              isSelected: selectedIndex == 0,
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                  widget.onCategorySelected('programming');
                });
              }),
          horizontalSpace(9),
          itemtapbar(
              title: 'sports',
              isSelected: selectedIndex == 1,
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                  widget.onCategorySelected('sports');
                });
              }),
          horizontalSpace(9),
          itemtapbar(
              title: 'moveis',
              isSelected: selectedIndex == 2,
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                  widget.onCategorySelected('movies');
                });
              }),
          horizontalSpace(9),
          itemtapbar(
              title: 'cooks',
              isSelected: selectedIndex == 3,
              onTap: () {
                setState(() {
                  selectedIndex = 3;
                  widget.onCategorySelected('cooks');
                });
              }),
        ],
      ),
    );
  }
}

Widget itemtapbar(
    {required String title,
    required bool isSelected,
    required VoidCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.deepPurple : Colors.grey,
        borderRadius: BorderRadius.circular(12),
      ),
      height: 40.h,
      width: 95.w,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
  );
}
