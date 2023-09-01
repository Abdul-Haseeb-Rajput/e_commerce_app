import 'package:flutter/material.dart';
import 'package:e_commerce_app/styles/colors.dart';

final ButtonStyle OnboardButton = ElevatedButton.styleFrom(
  minimumSize: const Size(120, 60),
  backgroundColor: CustColors.black1,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(18),
    ),
  ),
);
