import 'package:bookly_app/core/Services/server_locator.dart';
import 'package:bookly_app/features/Search/data/repo/search_repo_impl.dart';
import 'package:bookly_app/features/Search/presantation/view/search_view.dart';
import 'package:bookly_app/features/Search/presantation/view_model/Search/search_cubit.dart';
import 'package:bookly_app/features/home/data/Models/bookmodels/bookmodels.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/presantation/view_models/similer_books/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presantation/views/book_details_view.dart';
import 'package:bookly_app/features/navigation_bar_control.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      // GoRoute(
      //   path: '/',
      //   builder: (context, state) => const SplashView(),
      // ),
      // GoRoute(
      //   path: '/',
      //   builder: (context, state) => const LoginView(),
      // ),
      GoRoute(
        path: '/',
        builder: (context, state) => const NavigationBarControl(),
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
