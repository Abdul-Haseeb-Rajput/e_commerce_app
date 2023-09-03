import 'package:e_commerce_app/products_dummy_api.dart';
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
  // int currentPageIndex = 0;
  // final List<Widget> _pages = [
  //   HomeScreenPageView(),
  //   CategoriesScreen(),
  //   FavouriteScreen(),
  //   MoreScreen(),
  // ];

  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: CustColors.lightBlue,
      //   toolbarHeight: MediaQuery.of(context).size.height * .35,
      //   flexibleSpace: AppBarStyling(),
      // ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
        children: <Widget>[
          HomeScreenPageView(),
          CategoriesScreen(),
          FavouriteScreen(),
          MoreScreen(),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTappedBar,
        selectedItemColor: CustColors.darkYellow,
        currentIndex: _selectedIndex,
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

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
}
