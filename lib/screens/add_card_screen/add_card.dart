import 'package:e_commerce_app/screens/onboard_screens/widget/cust_text_botton.dart';
import 'package:flutter/material.dart';

import '../../products_dummy_api.dart';
import '../../styles/colors.dart';
import '../../styles/text_styles.dart';
import '../Widgets/top_bar_tile.dart';
import '../payment_sucess/payment_sucess.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 24, left: 16, right: 16, bottom: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBarWidget(
              title: 'Add Card',
            ),
            const SizedBox(
              height: 60,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Card Holder's Name",
                      style:
                          Body2.Medium14px.copyWith(color: CustColors.black45),
                    )
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextField(),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      "Card Number",
                      style:
                          Body2.Medium14px.copyWith(color: CustColors.black45),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  // color: CustColors.black60,
                  height: MediaQuery.of(context).size.height * .10,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "EXP Date",
                            style: Body2.Medium14px.copyWith(
                                color: CustColors.black45),
                          ),
                          Container(
                            // color: CustColors.darkBlue,
                            height: 40,
                            width: MediaQuery.of(context).size.width * .45,
                            child: TextField(
                              keyboardType: TextInputType.datetime,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CVC",
                            style: Body2.Medium14px.copyWith(
                                color: CustColors.black45),
                          ),
                          Container(
                            // color: CustColors.darkBlue,
                            height: 40,
                            width: MediaQuery.of(context).size.width * .40,
                            child: TextField(
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomSheet: BottomSheet(
          enableDrag: false,
          onClosing: () {},
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                height: 195,
                decoration: const BoxDecoration(
                  color: CustColors.black10,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Subtotal",
                              style: Label.Medium12px.copyWith(
                                  color: CustColors.black60),
                            ),
                            Text("\$${subtotalPrice[0]}"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Delivery charges",
                              style: Label.Medium12px.copyWith(
                                  color: CustColors.black60),
                            ),
                            Text("\$20"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total",
                              style: Label.Medium12px.copyWith(
                                  color: CustColors.black60),
                            ),
                            Text("\$${subtotalPrice[0] + 20}"),
                          ],
                        ),
                      ),
                      CustTextButton(
                        onPressed: () {
                          orderList.addAll(cartItems);
                          cartItems.clear();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaymentSucess(),
                            ),
                          );
                        },
                        title: "Make Payment",
                        textStyle:
                            Body1.Medium16px.copyWith(color: CustColors.black1),
                        buttonStyle: ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(
                            Size(MediaQuery.of(context).size.width, 60),
                          ),
                          backgroundColor: const MaterialStatePropertyAll(
                              CustColors.lightBlue),
                          side: const MaterialStatePropertyAll(
                            BorderSide(
                              width: 2,
                              color: CustColors.lightBlue,
                            ),
                          ),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
