// ignore_for_file: sort_child_properties_last

import 'package:dotted_border/dotted_border.dart';
import 'package:e_commerce_app/products_dummy_api.dart';
import 'package:e_commerce_app/screens/add_card_screen/add_card.dart';
import 'package:e_commerce_app/screens/checkout_screen/widgets/deliv_box_widget.dart';
import 'package:e_commerce_app/styles/colors.dart';
import 'package:e_commerce_app/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../Widgets/top_bar_tile.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: size.width * 0.9,
          child: MaterialButton(
            padding: const EdgeInsets.all(18.0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: CustColors.lightBlue,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const AddCardScreen()),
                ),
              );
            },
            child: const Text(
              "Add Card",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: CustColors.black1,
        leadingWidth: 50,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: CircleAvatar(
              backgroundColor: CustColors.black10,
              foregroundColor: CustColors.black100,
              child: Icon(Icons.arrow_back_ios_new_rounded),
            ),
          ),
        ),
        title: Text(
          "Shopping Cart ${cartItems.length}",
          style: const TextStyle(color: CustColors.black100),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 18,
              ),
              const Text("Deliver Address"),
              const SizedBox(
                height: 18,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: address.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            width: currentIndex == index ? 3 : 2,
                            color: currentIndex == index
                                ? CustColors.lightYellow
                                : CustColors.black20,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "${address[index][0]}",
                                    style: Body1.Medium16px,
                                  ),
                                  currentIndex == index
                                      ? const CircleAvatar(
                                          radius: 12,
                                          backgroundColor:
                                              CustColors.lightYellow,
                                          foregroundColor: CustColors.black100,
                                          child: Icon(Icons.check_rounded),
                                        )
                                      : const SizedBox()
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("${address[index][1]}"),
                                  Text(
                                    "Edit",
                                    style: Body2.Regular14px.copyWith(
                                      color: CustColors.lightBlue,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 8,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    address.add(["home address 2", "abc house 2"]);
                  });
                },
                child: DottedBorder(
                  strokeWidth: 1,
                  borderType: BorderType.RRect,
                  dashPattern: const [10],
                  radius: const Radius.circular(16),
                  color: CustColors.black20,
                  child: Container(
                    height: 100,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_circle_outline_rounded,
                          color: CustColors.lightYellow,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Add New Address"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
