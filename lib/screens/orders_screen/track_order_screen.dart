import 'package:e_commerce_app/screens/Widgets/top_bar_tile.dart';
import 'package:e_commerce_app/styles/colors.dart';
import 'package:e_commerce_app/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
        child: Column(
          children: [
            TopBarWidget(title: "Track Order"),
            SizedBox(height: 8),
            Divider(),
            SizedBox(height: 8),
            Container(
              width: double.infinity,
              child: Stack(
                children: [
                  Image.asset("assets/onboardImages/mapImage.png"),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      height: 90,
                      decoration: BoxDecoration(
                        color: CustColors.black10,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 3, color: CustColors.black1),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 5,
                                    blurRadius: 20,
                                    color: CustColors.black45),
                              ]),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/driver.jpg"),
                            radius: 30,
                          ),
                        ),
                        title: Text(
                          "Delivery Man",
                          style: Label.Medium12px.copyWith(
                              color: CustColors.black45),
                        ),
                        subtitle: Text(
                          "MR CAT",
                          style: Body1.SemiBold16px,
                        ),
                        trailing: CircleAvatar(
                          backgroundColor: CustColors.lightBlue,
                          foregroundColor: CustColors.black1,
                          radius: 25,
                          child: Icon(
                            IconlyBroken.message,
                            size: 32,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Delivery in",
                style: Body2.Medium14px.copyWith(color: CustColors.black45),
              ),
              subtitle: Text(
                "25 Min",
                style: Body1.SemiBold16px.copyWith(color: CustColors.black100),
              ),
              leading: Icon(IconlyBroken.time_circle),
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return DraggableScrollableSheet(
                      snap: true,
                      initialChildSize:
                          .5, // Adjust the initial height as needed
                      minChildSize: 0.25, // Minimum height when collapsed
                      maxChildSize: 1.0, // Maximum height when expanded
                      expand: true,
                      builder: (BuildContext context,
                          ScrollController scrollController) {
                        return Container(
                          color: Colors.white,
                          child: ListView(
                            controller: scrollController,
                            children: <Widget>[
                              ListTile(
                                title: Text('Item 1'),
                                onTap: () {
                                  // Add functionality for item 1
                                },
                              ),
                              ListTile(
                                title: Text('Item 2'),
                                onTap: () {
                                  // Add functionality for item 2
                                },
                              ),
                              // Add more list items as needed
                            ],
                          ),
                        );
                      },
                    );
                  },
                );
              },
              child: ListTile(
                title: Text(
                  "Delivery Address",
                  style: Body2.Medium14px.copyWith(color: CustColors.black45),
                ),
                subtitle: Text(
                  "abc address, karachi",
                  style:
                      Body1.SemiBold16px.copyWith(color: CustColors.black100),
                ),
                leading: Icon(IconlyBroken.location),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
