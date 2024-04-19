import 'package:bookly_app/features/home/presantation/views/widgets/home_view_body.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavigateBar extends StatefulWidget {
  const NavigateBar({super.key});

  @override
  State<NavigateBar> createState() => _NavigateBarState();
}

class _NavigateBarState extends State<NavigateBar> {
  int index = 0;
  final PageController _pageController = PageController();
  final screens = [
    const HomeViewBody(),
  ];

  @override
  Widget build(BuildContext context) {
    double iconSize = MediaQuery.of(context).size.width < 600 ? 24 : 32;
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: screens,
        onPageChanged: (index) {
          setState(() {
            this.index = index;
          });
        },
      ),
      bottomNavigationBar: SizedBox(
        height: 120,
        child: DotNavigationBar(
          backgroundColor: Colors.white.withOpacity(0.2),
          paddingR: EdgeInsets.zero,
          items: [
            DotNavigationBarItem(
              icon: Icon(
                Icons.menu_book_sharp,
                size: iconSize,
              ),
              selectedColor: Colors.blue,
            ),
            DotNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
                size: iconSize,
              ),
              selectedColor: Colors.blue,
            ),
            DotNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: iconSize,
              ),
              selectedColor: Colors.blue,
            ),
            DotNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: iconSize,
              ),
              selectedColor: Colors.blue,
            ),
          ],
          onTap: (index) {
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
          currentIndex: index,
        ),
      ),
    );
  }
}
