import 'package:bookly_app/const.dart';
import 'package:bookly_app/features/splash/presantation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: kprimarycolor
      ),
      debugShowCheckedModeBanner: false,
      home:const SplashView(),
    );
  }
}
