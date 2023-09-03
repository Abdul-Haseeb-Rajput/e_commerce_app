import 'package:flutter/material.dart';

import '../../products_dummy_api.dart';
import '../../styles/colors.dart';
import '../../styles/text_styles.dart';
import '../Widgets/products_card_widget.dart';
import 'appbar_styling_widget.dart';
import 'list_view_horizontal.dart';

class HomeScreenPageView extends StatelessWidget {
  const HomeScreenPageView({
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
                  return ProductsCardWidget(
                    index: index,
                    listName: products,
                    thumbnail: 'thumbnail',
                    price: 'price',
                    title: 'title',
                    stock: 'stock',
                    stockIsEmpty: false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
