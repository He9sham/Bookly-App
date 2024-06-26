import 'package:bookly_app/core/Services/server_locator.dart';
import 'package:bookly_app/features/Search/data/repo/search_repo_impl.dart';
import 'package:bookly_app/features/Search/presantation/view/search_view.dart';
import 'package:bookly_app/features/Search/presantation/view_model/Search/search_cubit.dart';
import 'package:bookly_app/features/auth/Login/presantation/view/Login_view.dart';
import 'package:bookly_app/features/home/data/Models/bookmodels/bookmodels.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/presantation/view_models/similer_books/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presantation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presantation/views/home_view.dart';
import 'package:bookly_app/features/splash/presantation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/LoginView',
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: '/HomeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/Bookview',
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailsView(
            bookmodels: state.extra as Bookmodels,
          ),
        ),
      ),
      GoRoute(
        path: '/SearchView',
        builder: (context, state) => BlocProvider(
          create: (context) => SearchCubit(
            getIt.get<SearchRepoimpl>(),
          ),
          child: const SearchView(),
        ),
      ),
    ],
  );
}
