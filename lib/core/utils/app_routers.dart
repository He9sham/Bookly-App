import 'package:bookly_app/core/Services/server_locator.dart';
import 'package:bookly_app/features/Search/data/repo/search_repo_impl.dart';
import 'package:bookly_app/features/Search/logic/Search/search_cubit.dart';
import 'package:bookly_app/features/Search/view/search_view.dart';
import 'package:bookly_app/features/auth/view/Login_view.dart';
import 'package:bookly_app/features/home/data/Models/bookmodels/bookmodels.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/logic/feature_books_list/feature_books_list_cubit.dart';
import 'package:bookly_app/features/home/logic/newset_books_list/newset_books_list_cubit.dart';
import 'package:bookly_app/features/home/logic/similer_books/similar_books_cubit.dart';
import 'package:bookly_app/features/home/views/book_details_view.dart';
import 'package:bookly_app/features/home/views/home_view.dart';
import 'package:bookly_app/features/splash/views/splash_view.dart';
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
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
          create: (context) => FeatureBooksListCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeatureBooks('programming'),
        ),
        BlocProvider(
          create: (context) => NewsetBooksListCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewsetBooks('programming'),
        ),
          ],
          child: const HomeView(),
        ),
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
