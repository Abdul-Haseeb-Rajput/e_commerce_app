// import 'package:flutter/material.dart';

// import '../../styles/colors.dart';
// import '../../styles/text_styles.dart';
// import '../categories_screen/product_screen.dart';

// class ProductsCardWidget extends StatelessWidget {
//   final String thumbnail;
//   int index;
//   final List listName;
//   final String price;
//   final String title;
//   final String? stock;
//   final bool stockIsEmpty;

//   ProductsCardWidget({
//     required this.index,
//     super.key,
//     required this.listName,
//     required this.price,
//     required this.thumbnail,
//     required this.title,
//     this.stock,
//     required this.stockIsEmpty,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: CustColors.black10,
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: Stack(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: ClipRRect(
//               borderRadius: BorderRadius.all(Radius.circular(16)),
//               child: Image.network(
//                 "${listName[index][thumbnail]}",
//                 height: 150,
//                 width: double.infinity,
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Positioned(
//             top: 140,
//             right: 20,
//             child: GestureDetector(
//               onTap: () {
//                 print('$index tapped');
//               },
//               child: CircleAvatar(
//                 backgroundColor: CustColors.darkBlue,
//                 foregroundColor: CustColors.black1,
//                 radius: 15,
//                 child: Icon(Icons.add),
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: 20,
//             left: 10,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "\$ ${listName[index][price]}",
//                   style: Body2.Medium14px,
//                 ),
//                 Text(
//                   "${listName[index][title]}",
//                   style: Body2.Medium14px,
//                 ),
//                 stockIsEmpty
//                     ? Row(
//                         children: [],
//                       )
//                     : Text(
//                         "Unit: ${listName[index][stock]}",
//                         style: Body2.Medium14px,
//                       ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
