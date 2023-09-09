import 'package:e_commerce_app/styles/colors.dart';
import 'package:e_commerce_app/styles/text_styles.dart';
import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget {
  final String title;
  const TopBarWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const CircleAvatar(
            backgroundColor: CustColors.black10,
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: CustColors.black100,
              size: 16,
              weight: 30,
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          title,
          style: Body1.Medium16px.copyWith(color: CustColors.black90),
        ),
      ],
    );
  }
}
