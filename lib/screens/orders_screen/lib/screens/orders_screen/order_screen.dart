import 'package:e_commerce_app/products_dummy_api.dart';
import 'package:e_commerce_app/screens/Widgets/top_bar_tile.dart';
import 'package:e_commerce_app/styles/colors.dart';
import 'package:e_commerce_app/styles/text_styles.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
        child: Column(
          children: [
            TopBarWidget(
              title: 'Orders',
            ),
            Expanded(
              child: ListView.separated(
                itemCount: orderList.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 280,
                    width: double.infinity,
                    // color: CustColors.black60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // for top
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          // tileColor: CustColors.darkYellow,
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "${orderList[index]["thumbnail"]}"),
                            radius: 30,
                          ),
                          title: Text("${orderList[index]["title"]}"),
                          subtitle: Text("\$${orderList[index]["price"]}"),
                          trailing: Text("ID: #434234"),
                        ),
                        // for left side (rider)
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 200,
                                  width: 170,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height: 120,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            color: CustColors.lightYellow,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                      ),
                                      Positioned(
                                        bottom: 30,
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                spreadRadius: 8,
                                                blurRadius: 20,
                                                color: Color.fromARGB(
                                                    169, 96, 109, 118),
                                              )
                                            ],
                                            color: CustColors.black45,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                width: 3,
                                                color: CustColors.black1,
                                                strokeAlign: BorderSide
                                                    .strokeAlignOutside),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        child: Text("Meet Our Driver, abc"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 160,
                                  width: 150,
                                  // color: CustColors.darkBlue,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Your ${orderList[index]["title"]}",
                                            style: Heading3.Regular20px,
                                          ),
                                          Text(
                                            "is on the way",
                                            style: Heading3.Bold20px,
                                          ),
                                        ],
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Track Order",
                                        ),
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  CustColors.lightBlue),
                                          shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(22),
                                            ),
                                          ),
                                          fixedSize: MaterialStatePropertyAll(
                                            Size(120, 60),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    height: 1, // Adjust the thickness of the line as needed
                    color: Colors.grey, // You can set the color of the line
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
