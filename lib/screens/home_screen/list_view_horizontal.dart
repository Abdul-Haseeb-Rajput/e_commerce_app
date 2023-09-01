import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import '../../styles/text_styles.dart';

class HomeListViewHorizontal extends StatelessWidget {
  const HomeListViewHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 2,
      itemBuilder: (context, index) {
        return Container(
          width: 270,
          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          decoration: BoxDecoration(
            color: CustColors.darkYellow,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/svgs/blackImg.png',
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Get",
                    style:
                        Heading3.Regular20px.copyWith(color: CustColors.black1),
                  ),
                  Text(
                    "50% OFF",
                    style:
                        Heading2.Medium26px.copyWith(color: CustColors.black1),
                  ),
                  Text(
                    "On first 03 order",
                    style: Body2.Regular14px.copyWith(color: CustColors.black1),
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
