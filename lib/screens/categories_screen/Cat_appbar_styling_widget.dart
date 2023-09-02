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
                  Icon(
                    Icons.card_travel,
                    color: CustColors.black1,
                    size: 25,
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
