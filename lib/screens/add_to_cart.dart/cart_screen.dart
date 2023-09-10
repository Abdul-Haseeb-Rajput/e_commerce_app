import 'package:e_commerce_app/products_dummy_api.dart';
import 'package:e_commerce_app/screens/checkout_screen/checkout_screen.dart';
import 'package:e_commerce_app/screens/onboard_screens/widget/cust_text_botton.dart';
import 'package:e_commerce_app/styles/colors.dart';
import 'package:e_commerce_app/styles/text_styles.dart';
import 'package:flutter/material.dart';

class AddToCartScreen extends StatefulWidget {
  const AddToCartScreen({super.key});

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {
  // int quantity = 1;

  List<int> quantities = List.filled(cartItems.length, 1);

  double calculateSubtotal() {
    double subtotal = 0.0;
    for (int i = 0; i < cartItems.length; i++) {
      subtotal += quantities[i] * cartItems[i]['price'];
    }
    subtotalPrice.add(subtotal);
    return subtotal;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: CustColors.lightYellow,
            height: MediaQuery.of(context).size.height * .3,
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
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const CircleAvatar(
                      backgroundColor: CustColors.black10,
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: CustColors.black100,
                        size: 18,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 26,
                  left: 64,
                  child: Text(
                    "Shopping Cart (${cartItems.length})",
                    style: Body1.Medium16px.copyWith(
                      color: CustColors.black90,
                    ),
                  ),
                ),
                Positioned(
                  right: 40,
                  top: 10,
                  child: Image.asset(
                    "assets/svgs/zigzag.png",
                    width: 120,
                  ),
                ),
                const Positioned(
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
                const Positioned(
                  right: 40,
                  top: 50,
                  child: Text(
                    "OFF!!",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: CustColors.black1),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    color: CustColors.darkYellow,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 36,
                  child: Text(
                    "Use code #HalalFood at Checkout",
                    style:
                        Body1.SemiBold16px.copyWith(color: CustColors.black90),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                // color: CustColors.black45,
                height: MediaQuery.of(context).size.height * .4,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: cartItems.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  "${cartItems[index]['thumbnail']}"),
                            ),
                            title: Text("${cartItems[index]['title']}"),
                            subtitle: Text("\$${cartItems[index]['price']}"),
                            trailing: Container(
                              // color: CustColors.black45,
                              width: 100,
                              height: 60,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      print("Minus pressed $index");
                                      setState(() {
                                        quantities[index] =
                                            quantities[index] > 1
                                                ? quantities[index] - 1
                                                : quantities[index];
                                        print(quantities[index]);
                                      });
                                    },
                                    child: const CircleAvatar(
                                      backgroundColor: CustColors.black10,
                                      foregroundColor: CustColors.black100,
                                      radius: 16,
                                      child: Icon(
                                        Icons.remove,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "${quantities[index]}",
                                    style: Body2.SemiBold14px,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      print("plus pressed $index");
                                      setState(() {
                                        quantities[index]++;
                                        print(quantities[index]);
                                      });
                                    },
                                    child: const CircleAvatar(
                                      backgroundColor: CustColors.black10,
                                      foregroundColor: CustColors.black100,
                                      radius: 16,
                                      child: Icon(
                                        Icons.add,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomSheet: BottomSheet(
          enableDrag: false,
          onClosing: () {},
          builder: (context) {
            double subtotal = calculateSubtotal();
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
                            Text("\$$subtotal"),
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
                            Text("\$${subtotal + 20}"),
                          ],
                        ),
                      ),
                      CustTextButton(
                          title: "proceed to checkout",
                          textStyle: Body1.Medium16px.copyWith(
                              color: CustColors.black1),
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
                          onPressed: () {
                            Navigator.push(
                                context,
                                (MaterialPageRoute(
                                    builder: (builder) => CheckoutScreen())));
                          }),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
