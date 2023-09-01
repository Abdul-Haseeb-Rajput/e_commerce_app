// import 'package:e_commerce_app/styles/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'widget/onboard_button.dart';

// class OnboardScreen2 extends StatefulWidget {
//   const OnboardScreen2({super.key});

//   @override
//   State<OnboardScreen2> createState() => _OnboardScreen2State();
// }

// class _OnboardScreen2State extends State<OnboardScreen2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: CustColors.lightBlue,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Text(
//               '''Your holiday 
// shopping 
// delivered to Screen two''',
//               style: TextStyle(
//                 fontSize: 30,
//                 color: CustColors.black20,
//               ),
//               maxLines: 4,
//             ),
//             Text(
//               '''There's something for everyone 
// to enjoy with Sweet Shop Favourites Screen 2''',
//               style: TextStyle(fontSize: 18, color: CustColors.black45),
//             ),
//             Align(
//               alignment: Alignment.topLeft,
//               child: SmoothPageIndicator(
//                   effect: SlideEffect(
//                       spacing: 8.0,
//                       radius: 4.0,
//                       dotWidth: 54.0,
//                       dotHeight: 4.0,
//                       paintStyle: PaintingStyle.fill,
//                       dotColor: CustColors.black60,
//                       activeDotColor: CustColors.black10),
//                   controller: PageController(
//                       keepPage: true, viewportFraction: 5, initialPage: 1),
//                   count: 2),
//             ),
//             Image.asset(
//               'assets/onboardImages/Onboard2.png',
//             ),
//             ElevatedButton(
//               style: OnboardButton,
//               onPressed: () {},
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Get started",
//                     style: TextStyle(color: CustColors.black100, fontSize: 16),
//                   ),
//                   SizedBox(
//                     width: 12,
//                   ),
//                   Icon(
//                     Icons.arrow_forward,
//                     color: CustColors.black100,
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
