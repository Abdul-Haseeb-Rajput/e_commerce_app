// import 'package:e_commerce_app/screens/onboard_screens/widget/onboard_button.dart';
// import 'package:flutter/material.dart';
// import 'package:introduction_screen/introduction_screen.dart';

// import '../../styles/colors.dart';
// // import 'onboard2.dart';

// class OnboardScreen extends StatefulWidget {
//   const OnboardScreen({super.key});

//   @override
//   State<OnboardScreen> createState() => _OnboardScreenState();
// }

// class _OnboardScreenState extends State<OnboardScreen> {
//   final List<PageViewModel> pages = [
//     PageViewModel(
//       reverse: true,
//       decoration: PageDecoration(
//         footerFlex: 0,
//         // footerFit: FlexFit.tight,
//         imageFlex: 1,
//         safeArea: 0,
//       ),
//       titleWidget: Title(
//         color: CustColors.black1,
//         child: Text(
//           "Your holiday shopping delivered to Screen one",
//           style: TextStyle(color: CustColors.black1, fontSize: 30),
//         ),
//       ),
//       bodyWidget: Title(
//         color: CustColors.black1,
//         child: Text(
//           "There's something for everyone to enjoy with Sweet Shop Favourites Screen 1",
//           style: TextStyle(color: CustColors.black1, fontSize: 18),
//         ),
//       ),
//       image: Image.asset('assets/onboardImages/Onboard1.png'),
//       footer: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         child: ElevatedButton(
//           style: OnboardButton,
//           onPressed: () {},
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "Next",
//                 style: TextStyle(
//                   color: CustColors.black100,
//                   fontSize: 16,
//                 ),
//               ),
//               SizedBox(
//                 width: 12,
//               ),
//               Icon(
//                 Icons.arrow_forward,
//                 color: CustColors.black100,
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//     PageViewModel(
//       reverse: true,
//       decoration: PageDecoration(
//         footerFlex: 0,
//         // footerFit: FlexFit.tight,
//         imageFlex: 1,
//         safeArea: 0,
//       ),
//       titleWidget: Title(
//         color: CustColors.black1,
//         child: Text(
//           "Your holiday shopping delivered to Screen two",
//           style: TextStyle(color: CustColors.black1, fontSize: 30),
//         ),
//       ),
//       bodyWidget: Title(
//         color: CustColors.black1,
//         child: Text(
//           "There's something for everyone to enjoy with Sweet Shop Favourites Screen 2",
//           style: TextStyle(color: CustColors.black1, fontSize: 18),
//         ),
//       ),
//       image: Image.asset('assets/onboardImages/Onboard2.png'),
//       footer: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         child: ElevatedButton(
//           style: OnboardButton,
//           onPressed: () {},
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "Get Started",
//                 style: TextStyle(
//                   color: CustColors.black100,
//                   fontSize: 16,
//                 ),
//               ),
//               SizedBox(
//                 width: 12,
//               ),
//               Icon(
//                 Icons.arrow_forward,
//                 color: CustColors.black100,
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: IntroductionScreen(
//         controlsPosition: Position(top: 270, left: -210, right: 0),
//         controlsPadding: EdgeInsets.all(0),
//         bodyPadding: EdgeInsets.only(left: 16, right: 16, top: 0),
//         globalBackgroundColor: CustColors.lightBlue,
//         pages: pages,
//         dotsDecorator: DotsDecorator(
//           shape:
//               ContinuousRectangleBorder(borderRadius: BorderRadius.circular(6)),
//           activeShape:
//               ContinuousRectangleBorder(borderRadius: BorderRadius.circular(6)),
//           size: Size(20, 3),
//           activeSize: Size(46, 3),
//           color: CustColors.black45,
//           activeColor: CustColors.black1,
//         ),
//         showDoneButton: false,
//         showNextButton: false,
//       ),
//     );
//   }
// }
