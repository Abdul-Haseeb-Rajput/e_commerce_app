import 'package:flutter/material.dart';

class CustTextButton extends StatelessWidget {
  final String title;
  final TextStyle textStyle;
  final ButtonStyle buttonStyle;
  final void Function()? onPressed;
  const CustTextButton(
      {super.key,
      required this.title,
      required this.textStyle,
      required this.buttonStyle,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: buttonStyle,
      onPressed: onPressed,
      child: Text(
        title,
        style: textStyle,
      ),
    );
  }
}
