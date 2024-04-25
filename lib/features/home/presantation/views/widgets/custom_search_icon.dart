import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon, this.ontap, this.onPressed});

  final IconData icon;
  final void Function()? ontap;
  final  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 45,
      child: Center(
        child: GestureDetector(
          onTap: ontap,
          child: IconButton(
            icon:Icon(icon)  ,
            onPressed:onPressed ,
            color: Colors.white,
           
          ),
        ),
      ),
    );
  }
}
