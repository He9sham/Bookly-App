import 'package:bookly_app/features/Search/presantation/view/search_view.dart';
import 'package:bookly_app/features/home/presantation/views/book_details_view.dart';
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
    GoRoute(
      path: '/Bookview',
      builder: (context, state) =>const BookDetailsView()
    ),
     GoRoute(
      path: '/SearchView',
      builder: (context, state) =>const SearchView(),
    ),
  ],
);
}