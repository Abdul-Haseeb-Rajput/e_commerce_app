import 'package:e_commerce_app/screens/favorite_screen/favourite_screen.dart';
import 'package:e_commerce_app/styles/colors.dart';
import 'package:flutter/material.dart';

import '../categories_screen/categories_screen.dart';
import '../orders_screen/order_screen.dart';
import 'home_screen_page.dart';

import 'package:iconly/iconly.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: CustColors.lightBlue,
      //   toolbarHeight: MediaQuery.of(context).size.height * .35,
      //   flexibleSpace: AppBarStyling(),
      // ),
      extendBody: true,
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
        children: <Widget>[
          HomeScreenPageView(),
          const CategoriesScreen(),
          const FavouriteScreen(),
          const OrderScreen(),
        ],
      ),
      // extendBody: true,
      // extendBodyBehindAppBar: true,
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        onTap: _onTappedBar,
        index: _selectedIndex,
        height: 55.0,
        items: const [
          Icon(
            IconlyLight.home,
            size: 20,
            // color: CustColors.bottomNavBut,
          ),
          Icon(
            IconlyLight.category,
            // color: CustColors.bottomNavBut,
            size: 20,
          ),
          Icon(
            IconlyLight.heart,
            // color: CustColors.bottomNavBut,
            size: 20,
          ),
          Icon(
            Icons.local_shipping_outlined,
            // color: CustColors.bottomNavBut,
            size: 20,
          ),
        ],
        color: CustColors.lightBlue,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeIn,
        animationDuration: Duration(milliseconds: 500),
        letIndexChange: (index) => true,
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
