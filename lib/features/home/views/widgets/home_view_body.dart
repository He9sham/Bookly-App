import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/logic/feature_books_list/feature_books_list_cubit.dart';
import 'package:bookly_app/features/home/logic/newset_books_list/newset_books_list_cubit.dart';
import 'package:bookly_app/features/home/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/views/widgets/custom_drawer.dart';
import 'package:bookly_app/features/home/views/widgets/custom_tapbar.dart';
import 'package:bookly_app/features/home/views/widgets/feature_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    String selectedCategory = context.watch<NewsetBooksListCubit>().category;
    return Scaffold(
      key: context.read<FeatureBooksListCubit>().scaffoldstate,
      drawer: const SafeArea(
        child: CustomDrawer(),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await refrashMethod(context, selectedCategory);
        },
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
                    child: CustomAppBar(
                      onPressed2: () {
                        openDrawerMethod(context);
                      },
                      icon: FontAwesomeIcons.magnifyingGlass,
                      onPressed: () {
                        GoRouter.of(context).push('/SearchView');
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: CustomTapBar(
                      onCategorySelected: (p) async {
                        selectedCategory = p;
                        await showBooksForTapBar(context, selectedCategory);
                      },
                    ),
                  ),
                  // use the features in futuer by: hesham hemdan
                  // const AuthRouter(),
                  SizedBox(
                    height: 20.h,
                  ),
                  const FeatureBooksListView(),
                  SizedBox(
                    height: 25.h,
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

  Future<void> showBooksForTapBar(
      BuildContext context, String selectedCategory) async {
    await context
        .read<NewsetBooksListCubit>()
        .fetchNewsetBooks(selectedCategory);
    // ignore: use_build_context_synchronously
    await context
        .read<FeatureBooksListCubit>()
        .fetchFeatureBooks(selectedCategory);
  }

  void openDrawerMethod(BuildContext context) {
    context
        .read<FeatureBooksListCubit>()
        .scaffoldstate
        .currentState!
        .openDrawer();
  }

  Future<void> refrashMethod(
      BuildContext context, String selectedCategory) async {
    await context
        .read<FeatureBooksListCubit>()
        .fetchFeatureBooks('programming');
    // ignore: use_build_context_synchronously
    await context.read<NewsetBooksListCubit>().fetchNewsetBooks('programming');
    await Future.delayed(const Duration(seconds: 2));
  }
}
