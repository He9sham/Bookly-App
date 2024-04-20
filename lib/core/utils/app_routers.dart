import 'package:bookly_app/features/navigation_bar_control.dart';
import 'package:bookly_app/features/splash/presantation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter 
{
  static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>const SplashView(),
    ),
    GoRoute(
      path: '/HomeView',
      builder: (context, state) =>const NavigationBarControl(),
    ),
  ],
);
}