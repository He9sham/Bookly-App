import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presantation/views/widgets/auth_router.dart';
import 'package:bookly_app/features/home/presantation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presantation/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/presantation/views/widgets/custom_drawer.dart';
import 'package:bookly_app/features/home/presantation/views/widgets/feature_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  GlobalKey<ScaffoldState> scaffoldstate = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldstate,
      drawer: const SafeArea(
        child: CustomDrawer(),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: CustomAppBar(
                    onPressed2: () {
                      scaffoldstate.currentState!.openDrawer();
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
                const SizedBox(
                  height: 20,
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
    );
  }
}
