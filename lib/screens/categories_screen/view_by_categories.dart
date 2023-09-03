import 'package:e_commerce_app/styles/text_styles.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../products_dummy_api.dart';
import '../../styles/colors.dart';
// import '../Widgets/products_card_widget.dart';

// ignore: must_be_immutable
class ViewByCategories extends StatelessWidget {
  int indexForCategory;
  ViewByCategories({
    super.key,
    required this.indexForCategory,
  });
  @override
  Widget build(BuildContext context) {
    List itemLeng = categories[indexForCategory];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustColors.black1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: CustColors.black100,
          ),
        ),
        title: Text(
          "${categories[indexForCategory][indexForCategory]['category']}",
          style: Heading3.Regular20px.copyWith(color: CustColors.black100),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: CustColors.black100,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.card_travel),
            color: CustColors.black100,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            // shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
            itemCount: itemLeng.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 250,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 2),
            itemBuilder: (buildContext, index) {
              return GestureDetector(
                onTap: () {},
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
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          child: Image.network(
                            "${categories[indexForCategory][index]['thumbnail']}",
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${categories[indexForCategory][index]['title']}",
                              style: Body2.Medium14px,
                            ),
                            Text(
                              "\$${categories[indexForCategory][index]['price']}",
                              style: Body2.Medium14px,
                            ),
                            Text(
                              "units:${categories[indexForCategory][index]['stock']}",
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
