import 'package:e_commerce_app/screens/add_to_cart.dart/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../products_dummy_api.dart';
import '../../styles/colors.dart';
import '../../styles/text_styles.dart';
// import '../Widgets/products_card_widget.dart';
import '../categories_screen/product_screen.dart';
import 'appbar_styling_widget.dart';
import 'list_view_horizontal.dart';

class HomeScreenPageView extends StatefulWidget {
  // int index;
  HomeScreenPageView({
    // required this.index,
    super.key,
  });

  @override
  State<HomeScreenPageView> createState() => _HomeScreenPageViewState();
}

class _HomeScreenPageViewState extends State<HomeScreenPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: CustColors.lightBlue,
        toolbarHeight: MediaQuery.of(context).size.height * .35,
        flexibleSpace: AppBarStyling(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => AddToCartScreen()));
          },
        ),
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
                              builder: (context) => ProductScreen(
                                    indexForItem: index,
                                    fromScreen: 'homeScreen',
                                  ))),
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
                                  setState(() {
                                    cartItems.add(products[index]);
                                  });
                                  print(cartItems);
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
                              top: 180,
                              right: 20,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    // print("fovourite index tapped $index");
                                    // favouriteList.add(products[index]);
                                    // print(favouriteList);
                                    if (products[index]['favourite'] == false) {
                                      products[index]['favourite'] = true;

                                      favouriteList.add(products[index]);
                                      print(favouriteList);
                                      Fluttertoast.showToast(
                                        msg: 'Added to favorites',
                                      );
                                      // print(products[index]['favotrite']);
                                    } else if (products[index]['favourite'] ==
                                        true) {
                                      products[index]['favourite'] = false;
                                      favouriteList.remove(products[index]);
                                      print(favouriteList);
                                      Fluttertoast.showToast(
                                        msg: 'Removed from favorites',
                                      );
                                      print(favouriteList);
                                      // print(products[index]['favotrite']);
                                    }
                                  });
                                },
                                // favourite icon
                                child: CircleAvatar(
                                  // change color of fovourute button
                                  backgroundColor:
                                      products[index]['favourite'] == true
                                          ? Colors.redAccent
                                          : CustColors.black45,
                                  foregroundColor: CustColors.black1,
                                  radius: 15,
                                  child: Icon(Icons.favorite_outline_rounded),
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
                                  SizedBox(
                                    width: 100,
                                    child: Text(
                                      "${products[index]["title"]}",
                                      style: Body2.Medium14px,
                                      overflow: TextOverflow.ellipsis,
                                    ),
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
