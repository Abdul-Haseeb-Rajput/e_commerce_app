import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import '../../styles/text_styles.dart';

class AppBarStyling extends StatelessWidget {
  const AppBarStyling({
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
              Icon(
                Icons.card_travel,
                color: CustColors.black1,
                size: 25,
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
