import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomePageNotchBottomNavigationBar extends StatelessWidget {
  HomePageNotchBottomNavigationBar({super.key, required this.pageController});

  final PageController pageController;

  int currentIndex = 0;
  //pages
  static const _firstPageIndex = 0;
  static const _secondPageIndex = 1;
  static const _thirdPageIndex = 2;
  static const _fourthPageIndex = 3;
  static const _fifthPageIndex = 4;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return AnimatedNotchBottomBar(
          removeMargins: true,
          notchGradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.red,
              Colors.green,
            ],
          ),
          notchColor: Colors.white,
          color: Colors.amber,
          bottomBarWidth: MediaQuery.of(context).size.width,
          bottomBarHeight: 80,
          notchBottomBarController: NotchBottomBarController(index: 0),
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          bottomBarItems: const [
            //First Item
            BottomBarItem(
              inActiveItem: Icon(
                Icons.document_scanner_outlined,
                color: Colors.blueGrey,
              ),
              activeItem: Icon(
                Icons.document_scanner,
                color: Colors.blueAccent,
              ),
              itemLabel: 'Overview',
            ),
            //Second Item
            BottomBarItem(
              inActiveItem: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.blueGrey,
              ),
              activeItem: Icon(
                Icons.shopping_cart,
                color: Colors.blueAccent,
              ),
              itemLabel: 'Groceries',
            ),
            //ThirdItem
            BottomBarItem(
              inActiveItem: Icon(
                Icons.cloud_outlined,
                color: Colors.blueGrey,
              ),
              activeItem: Icon(
                Icons.cloud,
                color: Colors.blueAccent,
              ),
              itemLabel: 'Weather',
            ),
            //Fourth Item
            BottomBarItem(
              inActiveItem: Icon(
                Icons.edit_document,
                color: Colors.blueGrey,
              ),
              activeItem: Icon(
                Icons.edit_document,
                color: Colors.blueAccent,
              ),
              itemLabel: 'Bills',
            ),
            //Fifth Item
            BottomBarItem(
              inActiveItem: Icon(
                Icons.person_2_outlined,
                color: Colors.blueGrey,
              ),
              activeItem: Icon(
                Icons.person_2_outlined,
                color: Colors.blueAccent,
              ),
              itemLabel: 'Profile',
            ),
          ],
          kBottomRadius: 0,
          kIconSize: 20,
        );
      },
    );
  }
}
