// import 'package:e_commerce_app/screens/categories_screen/view_by_categories.dart';
import 'package:e_commerce_app/screens/add_to_cart.dart/cart_screen.dart';
import 'package:e_commerce_app/screens/categories_screen/product_screen.dart';
import 'package:flutter/material.dart';

import 'screens/onboard_screens/onboarding.dart';

void main() {
  runApp(const ECommerceApp());
}

class ECommerceApp extends StatefulWidget {
  const ECommerceApp({super.key});

  @override
  State<ECommerceApp> createState() => _ECommerceAppState();
}

class _ECommerceAppState extends State<ECommerceApp> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AddToCartScreen(),
      ),
    );
  }
}
