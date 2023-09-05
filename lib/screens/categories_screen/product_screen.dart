import 'package:e_commerce_app/styles/colors.dart';
import 'package:e_commerce_app/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../products_dummy_api.dart';
import '../onboard_screens/widget/cust_text_botton.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../home_screen/home_screen_page.dart';

// ignore: must_be_immutable
class ProductScreen extends StatefulWidget {
  final int indexForItem;

  ProductScreen({super.key, required this.indexForItem});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final controller = PageController();

  // get indexForItem => indexForItem;
  @override
  Widget build(BuildContext context) {
    int itForInd = widget.indexForItem;
    List imgLen = products[0]['images'];
    List imgL = prodsImgs[widget.indexForItem];
    List im = prodsImgs[widget.indexForItem];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    backgroundColor: CustColors.black10,
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: CustColors.black100,
                      size: 18,
                    ),
                  ),
                ),
                Container(
                  // color: CustColors.black90,
                  height: 230,
                  width: 230,
                  child: PageView.builder(
                    itemCount: imgL.length,
                    controller: controller,
                    itemBuilder: (context, index) {
                      // String imagesWithoutBrackets =
                      //     (products[indexForItem]["images"] as List<String>)
                      //         .join(',');
                      return GestureDetector(
                        onTap: () {
                          print("im circle $index");
                          print("index from previous $itForInd");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: CustColors.black45,
                            // borderRadius: BorderRadius.circular(8),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(200),
                            child: Image.network(
                                "${prodsImgs[widget.indexForItem][index]}"),
                          ),
                          // backgroundColor: const Color.fromARGB(255, 29, 52, 71),
                          // foregroundImage:
                          //     NetworkImage("${imagesWithoutBrackets[index]}"),
                          // radius: MediaQuery.of(context).size.width * .32,
                        ),
                      );
                    },
                  ),
                ),
                Icon(
                  Icons.card_travel,
                  color: CustColors.black100,
                  // size: 18,
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            SmoothPageIndicator(
              controller: controller,
              count: im.length,
              effect: const WormEffect(
                dotHeight: 3,
                dotWidth: 30,
                type: WormType.underground,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Text(
                  "Title : Thin chieese \ntop orangea",
                  style: Heading3.SemiBold20px,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //
                // for price , discount, and reg
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Priceeee",
                      style: Body1.SemiBold16px.copyWith(
                          color: CustColors.lightBlue),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 100,
                      height: 25,
                      decoration: BoxDecoration(
                        color: CustColors.lightBlue,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text(
                          "Discounttt",
                          style: Label.Medium12px.copyWith(
                              color: CustColors.black1),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Reg : 70.32 USD",
                      style:
                          Label.Medium12px.copyWith(color: CustColors.black20),
                      softWrap: true,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),

            //for star icon and review label
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.star, color: CustColors.lightYellow),
                Icon(Icons.star, color: CustColors.lightYellow),
                Icon(Icons.star, color: CustColors.lightYellow),
                Icon(Icons.star, color: CustColors.lightYellow),
                Icon(
                  Icons.star_half_sharp,
                  fill: 1,
                  color: CustColors.lightYellow,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "110 Reviews",
                  style: Label.Regular12px.copyWith(color: CustColors.black20),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            //
            // for buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //
                // without bg color
                CustTextButton(
                  title: 'Add to Cart',
                  textStyle:
                      Body2.Medium14px.copyWith(color: CustColors.lightBlue),
                  buttonStyle: ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(
                      Size(MediaQuery.of(context).size.width * .4, 60),
                    ),
                    backgroundColor:
                        MaterialStatePropertyAll(CustColors.black1),
                    side: MaterialStatePropertyAll(
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
                  onPressed: () {},
                ),
                //
                // with bg color
                CustTextButton(
                  title: 'Buy Now',
                  textStyle:
                      Body2.Medium14px.copyWith(color: CustColors.black1),
                  buttonStyle: ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(
                      Size(MediaQuery.of(context).size.width * .46, 60),
                    ),
                    backgroundColor:
                        MaterialStatePropertyAll(CustColors.lightBlue),
                    side: MaterialStatePropertyAll(
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
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .31,
                  // color: CustColors.black60,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description",
                          style: Heading4.SemiBold18px.copyWith(
                              color: CustColors.black100),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Praesent commodo cursus magna, vel scelerisque nisl ursus magna, vel consectetur et"
                          "Nullam quis risus eget urna quis risus eget urna mollis ornare vel eu leo.",
                          textAlign: TextAlign.justify,
                          style: Label.Medium12px.copyWith(),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 2,
                          separatorBuilder: (context, index) {
                            return Container(
                              height: 1.5,
                              width: double.infinity,
                              color: CustColors.black100,
                            );
                          },
                          itemBuilder: (context, index) {
                            return ExpansionTile(
                              title: Text("Haseeb"),
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "helloo sdsdsd dfdfdf jfdn fdfndn  nfdhfdfsd f fhsdhfd f",
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                )
                              ],
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
      ),
    );
  }
}
