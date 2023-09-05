import 'package:e_commerce_app/screens/home_screen/appbar_styling_widget.dart';
import 'package:e_commerce_app/styles/colors.dart';
import 'package:e_commerce_app/styles/text_styles.dart';
import 'package:flutter/material.dart';

class AddToCartScreen extends StatelessWidget {
  const AddToCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: CustColors.lightYellow,
            height: MediaQuery.of(context).size.height * .35,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  top: -35,
                  left: -15,
                  child: Image.asset(
                    "assets/svgs/hashtag.png",
                    height: 200,
                    width: 250,
                  ),
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: CircleAvatar(
                    backgroundColor: CustColors.black10,
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: CustColors.black100,
                      size: 18,
                    ),
                  ),
                ),
                Positioned(
                  top: 26,
                  left: 64,
                  child: Text(
                    "Shopping Cart",
                    style: Body1.Medium16px.copyWith(
                      color: CustColors.black90,
                    ),
                  ),
                ),
                Positioned(
                  right: 40,
                  bottom: 40,
                  child: Text(
                    "25%",
                    style: TextStyle(
                        fontSize: 90,
                        fontWeight: FontWeight.bold,
                        color: CustColors.black1),
                  ),
                ),
                Positioned(
                  right: 40,
                  top: 80,
                  child: Text(
                    "OFF!!",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: CustColors.black1),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    color: CustColors.darkYellow,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 32,
                  child: Text(
                    "Use code #HalalFood at Checkouut",
                    style:
                        Body1.SemiBold16px.copyWith(color: CustColors.black90),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
