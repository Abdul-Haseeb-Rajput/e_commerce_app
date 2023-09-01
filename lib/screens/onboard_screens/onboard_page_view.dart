// import 'package:dots_indicator/dots_indicator.dart';
// import 'package:e_commerce_app/styles/colors.dart';
// import 'package:flutter/material.dart';

// class OnboardPageView extends StatefulWidget {
//   const OnboardPageView({super.key});

//   @override
//   State<OnboardPageView> createState() => _OnboardPageViewState();
// }

// class _OnboardPageViewState extends State<OnboardPageView> {
//   PageController _pageController = PageController(initialPage: 0);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: CustColors.lightBlue,
//       body: PageView(
//         controller: _pageController,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
//             child: Column(
//               children: [
//                 Align(
//                   alignment: Alignment.topLeft,
//                   child: Text(
//                     '''Your holiday
// shopping
// delivered to Screen one''',
//                     style: TextStyle(fontSize: 30, color: CustColors.black1),
//                   ),
//                 ),
//                 Text(
//                   "There's something for everyone to enjoy with Sweet Shop Favourites Screen 1",
//                   maxLines: 3,
//                   style: TextStyle(fontSize: 18, color: CustColors.black1),
//                 ),
//                 DotsIndicator(
//                   dotsCount: 2,
//                 ),
//                 Image.asset("assets/onboardImages/Onboard1.png"),
//                 // ElevatedButton(onPressed: () {}, child: Text("hello"),),
//               ],
//             ),
//           ),
//           Column(
//             children: [
//               Text("dsdsdf sdsdsds eeerere ccxcxcxcsd sdsds"),
//               Text("dsdsdf sdsdsds eeerere ccxcxcxcsd sdsds"),
//               DotsIndicator(dotsCount: 2),
//               Image.asset("assets/onboardImages/Onboard2.png"),
//             ],
//           ),
//         ],
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       floatingActionButton: Container(
//         margin: EdgeInsets.only(bottom: 20),
//         height: 50,
//         width: 270,
//         child: FloatingActionButton(
//           onPressed: () {
//             _pageController.animateToPage(1,
//                 duration: Duration(milliseconds: 200), curve: Curves.ease);
//           },
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//         ),
//       ),
//     );
//   }
// }
