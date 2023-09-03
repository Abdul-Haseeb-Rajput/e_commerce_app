import 'package:e_commerce_app/products_dummy_api.dart';
import 'package:e_commerce_app/screens/categories_screen/view_by_categories.dart';
import 'package:e_commerce_app/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import 'Cat_appbar_styling_widget.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustColors.lightBlue,
        toolbarHeight: MediaQuery.of(context).size.height * .35,
        flexibleSpace: CatAppBarStyling(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: productCategories.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 200,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (BuildContext, index) {
                  return GestureDetector(
                    onTap: () {
                      print(index);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (buildContext) => ViewByCategories(
                                    indexForCategory: index,
                                  )));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: CustColors.black10,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.network(
                                "${productCategories[index]['thumbnail']}",
                                height: 120,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "${productCategories[index]['category']}",
                              style: Heading4.Bold18px,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "${productCategories[index]['description']}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
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
    );
  }
}
