import 'package:e_commerce_app/products.dart';
import 'package:e_commerce_app/styles/colors.dart';
import 'package:e_commerce_app/styles/text_styles.dart';
import 'package:flutter/material.dart';

import 'appbar_styling_widget.dart';
import 'list_view_horizontal.dart';

// import '../../products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustColors.lightBlue,
        toolbarHeight: MediaQuery.of(context).size.height * .35,
        flexibleSpace: AppBarStyling(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 123,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 50,
                      child: Image.asset(
                        'assets/svgs/ellipseShort.png',
                        height: 120,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 30,
                      child: Image.asset(
                        'assets/svgs/Ellipse.png',
                        height: 120,
                      ),
                    ),
                    HomeListViewHorizontal(),
                  ],
                ),
              ),
              Text(
                "Recommend",
                style:
                    Heading1.Regular30px.copyWith(color: CustColors.black100),
              ),
              SizedBox(
                height: 4,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 250,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: CustColors.black10,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              child: Image.network(
                                "${products[index]['thumbnail']}",
                                height: 150,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 140,
                            right: 20,
                            child: GestureDetector(
                              onTap: () {
                                // print('$index tapped');
                              },
                              child: CircleAvatar(
                                backgroundColor: CustColors.darkBlue,
                                foregroundColor: CustColors.black1,
                                radius: 15,
                                child: Icon(Icons.add),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            left: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "\$ ${products[index]['price']}",
                                  style: Body2.Medium14px,
                                ),
                                Text(
                                  "${products[index]['title']}",
                                  style: Body2.Medium14px,
                                ),
                                Text(
                                  "Unit: ${products[index]['stock']}",
                                  style: Body2.Medium14px,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: CustColors.black100,
        unselectedItemColor: CustColors.black60,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "text"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "text"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "text"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "text"),
        ],
      ),
    );
  }
}
