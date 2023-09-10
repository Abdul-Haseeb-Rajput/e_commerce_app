import 'package:e_commerce_app/screens/favorite_screen/favourite_screen.dart';
import 'package:e_commerce_app/styles/colors.dart';
import 'package:flutter/material.dart';

import '../categories_screen/categories_screen.dart';
import '../orders_screen/order_screen.dart';
import 'home_screen_page.dart';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

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
      bottomNavigationBar: ConvexAppBar(
        elevation: 0,
        style: TabStyle.reactCircle,
        onTap: _onTappedBar,
        activeColor: CustColors.darkYellow,
        initialActiveIndex: _selectedIndex,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        // color: CustColors.black1,
        items: const [
          TabItem(
            title: "Home",
            icon: Icon(
              IconlyLight.home,
              color: CustColors.bottomNavBut,
            ),
          ),
          TabItem(
            title: "Categories",
            icon: Icon(
              IconlyLight.category,
              color: CustColors.bottomNavBut,
            ),
          ),
          TabItem(
            title: "Favourites",
            icon: Icon(
              IconlyLight.heart,
              color: CustColors.bottomNavBut,
            ),
          ),
          TabItem(
            title: "more",
            icon: Icon(
              Icons.local_shipping_outlined,
              color: CustColors.bottomNavBut,
            ),
          ),
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
