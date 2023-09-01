// import 'package:e_commerce_app/screens/onboard_screens/onboard2.dart';
// import 'package:e_commerce_app/styles/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'widget/onboard_button.dart';

// class OnboardScreen1 extends StatefulWidget {
//   const OnboardScreen1({super.key});

//   @override
//   State<OnboardScreen1> createState() => _OnboardScreen1State();
// }

// class _OnboardScreen1State extends State<OnboardScreen1> {
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
// delivered to Screen one''',
//               style: TextStyle(
//                 fontSize: 30,
//                 color: CustColors.black20,
//               ),
//               maxLines: 4,
//             ),
//             Text(
//               '''There's something for everyone 
// to enjoy with Sweet Shop Favourites Screen 1''',
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
//                       keepPage: true, viewportFraction: 5, initialPage: 0),
//                   count: 2),
//             ),
//             Image.asset(
//               'assets/onboardImages/Onboard1.png',
//             ),
//             ElevatedButton(
//               style: OnboardButton,
//               onPressed: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: ((BuildContext context) => OnboardScreen2()),
//                   ),
//                 );
//               },
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Next",
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
