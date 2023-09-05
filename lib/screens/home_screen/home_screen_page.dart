import 'package:flutter/material.dart';

import '../../products_dummy_api.dart';
import '../../styles/colors.dart';
import '../../styles/text_styles.dart';
// import '../Widgets/products_card_widget.dart';
import '../categories_screen/product_screen.dart';
import 'appbar_styling_widget.dart';
import 'list_view_horizontal.dart';

class HomeScreenPageView extends StatelessWidget {
  // int index;
  HomeScreenPageView({
    // required this.index,
    super.key,
  });

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
              GestureDetector(
                onTap: () {
                  // print("hoo hoo $index");
                },
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 250,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        print("hii hii $index");

                        Navigator.push(
                          context,
                          (MaterialPageRoute(
                              builder: (context) =>
                                  ProductScreen(indexForItem: index))),
                        );
                      },
                      child: Container(
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
                                  "${products[index]["thumbnail"]}",
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
                                  print("cart index tapped $index");
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "\$ ${products[index]["price"]}",
                                    style: Body2.Medium14px,
                                  ),
                                  Text(
                                    "${products[index]["title"]}",
                                    style: Body2.Medium14px,
                                  ),
                                  Text(
                                    "Unit: ${products[index]["stock"]}",
                                    style: Body2.Medium14px,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
