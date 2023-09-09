import 'package:e_commerce_app/styles/colors.dart';
import 'package:e_commerce_app/styles/text_styles.dart';
import 'package:flutter/material.dart';

class DeliveryAddressBoxWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String inkwellText;
  final CircleAvatar circleAvatar;
  final double borderWidth;
  final Color borderColor;

  const DeliveryAddressBoxWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.inkwellText,
    required this.circleAvatar,
    required this.borderWidth,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: CustColors.black1,
        border: Border.all(width: borderWidth, color: borderColor),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title),
                circleAvatar,
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  subtitle,
                  style: Body2.Medium14px,
                ),
                InkWell(
                  highlightColor: CustColors.darkYellow,
                  onTap: () {},
                  child: Text(
                    inkwellText,
                    style:
                        Label.Medium12px.copyWith(color: CustColors.darkBlue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
