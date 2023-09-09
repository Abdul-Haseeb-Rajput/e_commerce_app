// ignore_for_file: sort_child_properties_last

import 'package:e_commerce_app/screens/add_card_screen/add_card.dart';
import 'package:e_commerce_app/screens/checkout_screen/widgets/deliv_box_widget.dart';
import 'package:e_commerce_app/styles/colors.dart';
import 'package:e_commerce_app/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../Widgets/top_bar_tile.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 24, left: 16, right: 16, bottom: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBarWidget(
              title: 'CheckOut',
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              "Delivery Address",
              style: Body1.Regular16px,
            ),
            const SizedBox(
              height: 16,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DeliveryAddressBoxWidget(
                  title: 'Home',
                  subtitle: 'Abc st,random City',
                  circleAvatar: CircleAvatar(
                    backgroundColor: CustColors.lightYellow,
                    foregroundColor: CustColors.black100,
                    radius: 12,
                    child: Icon(
                      Icons.check_rounded,
                      size: 16,
                    ),
                  ),
                  inkwellText: 'Edit',
                  borderWidth: 2,
                  borderColor: CustColors.lightYellow,
                ),
                SizedBox(
                  height: 8,
                ),
                DeliveryAddressBoxWidget(
                  title: 'Office',
                  subtitle: 'xyz st,random City',
                  inkwellText: 'Edit',
                  circleAvatar: CircleAvatar(
                    radius: 0,
                  ),
                  borderWidth: 0,
                  borderColor: CustColors.black20,
                ),
              ],
            ),
            const SizedBox(
              height: 48,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_circle_outline,
                  color: CustColors.lightYellow,
                ),
                SizedBox(
                  width: 8,
                ),
                Text("Add New Address"),
              ],
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext) => AddCardScreen()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: double.infinity,
                child: Text(
                  "Add Card",
                  style: Body1.Medium16px.copyWith(color: CustColors.black1),
                ),
                decoration: BoxDecoration(
                  color: CustColors.lightBlue,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
