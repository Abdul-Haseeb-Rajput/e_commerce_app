import 'package:e_commerce_app/products.dart';
import 'package:e_commerce_app/screens/favorite_screen/favourite_screen.dart';
import 'package:e_commerce_app/styles/colors.dart';
import 'package:e_commerce_app/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../categories_screen/categories_screen.dart';
import '../more_screen/more_screen.dart';
import 'appbar_styling_widget.dart';
import 'home_screen_page.dart';
import 'list_view_horizontal.dart';

// import '../../products.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPageIndex = 0;
  final List<Widget> _pages = [
    HomeScreenPageView(),
    CategoriesScreen(),
    FavouriteScreen(),
    MoreScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: CustColors.lightBlue,
      //   toolbarHeight: MediaQuery.of(context).size.height * .35,
      //   flexibleSpace: AppBarStyling(),
      // ),
      body: _pages[_currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPageIndex,
        onTap: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        selectedItemColor: CustColors.black100,
        unselectedItemColor: CustColors.black60,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Category"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outlined), label: "Favourite"),
          BottomNavigationBarItem(icon: Icon(Icons.more_vert), label: "More"),
        ],
      ),
    );
  }
}
