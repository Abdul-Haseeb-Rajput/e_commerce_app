import 'package:e_commerce_app/products_dummy_api.dart';
import 'package:e_commerce_app/screens/add_to_cart.dart/cart_screen.dart';
import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import '../../styles/text_styles.dart';

class CatAppBarStyling extends StatelessWidget {
  const CatAppBarStyling({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hello, Haseeb",
                style: Heading3.Medium20px.copyWith(color: CustColors.black1),
              ),
              Row(
                children: [
                  Icon(
                    Icons.search,
                    color: CustColors.black1,
                    size: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AddToCartScreen()));
                        },
                        child: Container(
                          // color: CustColors.black90,
                          height: 60,
                          width: 40,
                          child: const Icon(
                            Icons.card_travel,
                            color: CustColors.black1,
                            size: 25,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 2,
                        right: 0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddToCartScreen()));
                          },
                          child: CircleAvatar(
                            backgroundColor: CustColors.lightYellow,
                            radius: 12,
                            child: Text(
                              "${cartItems.length}",
                              style: Label.Medium12px.copyWith(
                                  color: CustColors.black1),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shop",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w300,
                        color: CustColors.black1),
                  ),
                  Text(
                    "By Category",
                    style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: CustColors.black1),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
