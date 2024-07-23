import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/logic/feature_books_list/feature_books_list_cubit.dart';
import 'package:bookly_app/features/home/logic/newset_books_list/newset_books_list_cubit.dart';
import 'package:bookly_app/features/home/views/widgets/auth_router.dart';
import 'package:bookly_app/features/home/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/views/widgets/custom_drawer.dart';
import 'package:bookly_app/features/home/views/widgets/feature_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<FeatureBooksListCubit>().scaffoldstate,
      drawer: const SafeArea(
        child: CustomDrawer(),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<FeatureBooksListCubit>().fetchFeatureBooks();
          context.read<NewsetBooksListCubit>().fetchNewsetBooks();
          await Future.delayed(const Duration(seconds: 2));
        },
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    child: CustomAppBar(
                      onPressed2: () {
                        context
                            .read<FeatureBooksListCubit>()
                            .scaffoldstate
                            .currentState!
                            .openDrawer();
                      },
                      icon: FontAwesomeIcons.magnifyingGlass,
                      onPressed: () {
                        GoRouter.of(context).push('/SearchView');
                      },
                    ),
                  ),
                  const AuthRouter(),
                  const SizedBox(
                    height: 20,
                  ),
                  const FeatureBooksListView(),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'Best Seller',
                      style: Styles.textmid.copyWith(fontFamily: kGtSectraFine),
                    ),
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: BestSellerListView(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
