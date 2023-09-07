import 'package:e_commerce_app/styles/colors.dart';
import 'package:flutter/material.dart';

import '../home_screen/home_screen.dart';
import 'onboarding_model.dart';

class Onbording extends StatefulWidget {
  const Onbording({super.key});

  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  PageController _controller = PageController();

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustColors.lightBlue,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        contents[i].title,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: CustColors.black1,
                        ),
                      ),
                      Text(
                        contents[i].discription,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(
                          contents.length,
                          (index) => buildDot(index, context),
                        ),
                      ),
                      Image.asset(
                        contents[i].image,
                        // height: 300,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.all(30),
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                if (currentIndex == contents.length - 1) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const HomeScreen(),
                    ),
                  );
                }
                _controller.nextPage(
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
              },
              style: ButtonStyle(
                backgroundColor:
                    const MaterialStatePropertyAll(CustColors.black1),
                textStyle: const MaterialStatePropertyAll(
                  TextStyle(color: Colors.white),
                ),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    currentIndex == contents.length - 1 ? "Continue" : "Next",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: CustColors.black100),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    color: CustColors.black100,
                    weight: 50,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 3,
      width: currentIndex == index ? 45 : 20,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? CustColors.black1 : CustColors.black100,
      ),
    );
  }
}
