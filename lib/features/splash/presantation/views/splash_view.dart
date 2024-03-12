import 'package:bookly_app/features/splash/presantation/views/widgets/Splash_view_Body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody() ,
    );
  }
}