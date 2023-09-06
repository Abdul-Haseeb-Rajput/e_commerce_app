import 'package:e_commerce_app/screens/add_to_cart.dart/cart_screen.dart';
import 'package:e_commerce_app/screens/categories_screen/product_screen.dart';
import 'package:e_commerce_app/styles/text_styles.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../products_dummy_api.dart';
import '../../styles/colors.dart';
// import '../Widgets/products_card_widget.dart';

// ignore: must_be_immutable
class ViewByCategories extends StatefulWidget {
  int indexForCategory;
  ViewByCategories({
    super.key,
    required this.indexForCategory,
  });

  @override
  State<ViewByCategories> createState() => _ViewByCategoriesState();
}

class _ViewByCategoriesState extends State<ViewByCategories> {
  @override
  Widget build(BuildContext context) {
    List itemLeng = categories[widget.indexForCategory];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustColors.black1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: CustColors.black100,
          ),
        ),
        title: Text(
          //for showing text title in appbar
          "${categories[widget.indexForCategory][widget.indexForCategory]['category']}",
          style: Heading3.Regular20px.copyWith(color: CustColors.black100),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10, top: 8),
            height: double.infinity,
            width: 100,
            // color: CustColors.black60,
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                      color: CustColors.black100,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddToCartScreen()));
                      },
                      child: const Icon(
                        Icons.card_travel,
                        color: CustColors.black100,
                      ),
                    ),
                  ],
                ),
                if (cartItems.isEmpty) Container(),
                if (cartItems.isNotEmpty)
                  Positioned(
                    top: 2,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {});
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddToCartScreen()));
                      },
                      child: CircleAvatar(
                        backgroundColor: CustColors.lightYellow,
                        radius: 12,
                        child: Text(
                          "${cartItems.length}",
                          style: Label.Medium12px.copyWith(
                              color: CustColors.black1),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            // shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
            itemCount: itemLeng.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 250,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 2),
            itemBuilder: (buildContext, index) {
              return GestureDetector(
                onTap: () {
                  print('container index $index');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => ProductScreen(
                                indexForItem: widget.indexForCategory,
                                indexForCatItem: index,
                                fromScreen: 'categoryScreen',
                              ))));
                  // print(cartItems.length);
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
                              const BorderRadius.all(Radius.circular(16)),
                          child: Image.network(
                            "${categories[widget.indexForCategory][index]['thumbnail']}",
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
                            print('$index tapped');
                            print(cartItems);
                            setState(() {
                              cartItems.add(
                                  categories[widget.indexForCategory][index]);
                            });
                          },
                          child: const CircleAvatar(
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${categories[widget.indexForCategory][index]['title']}",
                              style: Body2.Medium14px,
                            ),
                            Text(
                              "\$${categories[widget.indexForCategory][index]['price']}",
                              style: Body2.Medium14px,
                            ),
                            Text(
                              "units:${categories[widget.indexForCategory][index]['stock']}",
                              style: Body2.Medium14px,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
