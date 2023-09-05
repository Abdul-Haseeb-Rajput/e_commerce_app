import 'package:e_commerce_app/products_dummy_api.dart';
import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import '../../styles/text_styles.dart';

class AppBarStyling extends StatelessWidget {
  void Function()? onTap;
  AppBarStyling({
    required this.onTap,
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
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, Haseeb",
                style: Heading3.Medium20px.copyWith(color: CustColors.black1),
              ),
              GestureDetector(
                onTap: onTap,
                child: Center(
                  child: Stack(
                    children: [
                      Container(
                        // color: CustColors.black90,
                        height: 60,
                        width: 40,
                        child: Icon(
                          Icons.card_travel,
                          color: CustColors.black1,
                          size: 25,
                        ),
                      ),
                      Positioned(
                        top: 2,
                        right: 0,
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
                    ],
                  ),
                ),
              ),
            ],
          ),
          TextField(
            decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  color: CustColors.black20,
                ),
                hintText: "Search Products or store",
                hintStyle: const TextStyle(color: CustColors.black45),
                filled: true,
                fillColor: CustColors.darkBlue,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(48))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("DELIVERY TO",
                      style:
                          Label.Medium12px.copyWith(color: CustColors.black45)),
                  Text("Green Way 3000, Sylhet",
                      style:
                          Body2.Medium14px.copyWith(color: CustColors.black45)),
                ],
              ),
              Column(
                children: [
                  Text(
                    "WITHIN",
                    style: Label.Medium12px.copyWith(color: CustColors.black45),
                  ),
                  Text(
                    "1 Hour",
                    style: Body2.Medium14px.copyWith(color: CustColors.black45),
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
