import 'package:flutter/material.dart';
import 'package:flutter_application_iddkk/core/constant/app_color.dart';
import 'package:flutter_application_iddkk/core/constant/app_routes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class OnBoardingButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? foregroundColor;
  late void Function()? onPressed;
  final String buttonTitle;
  OnBoardingButton({
    super.key,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.onPressed,
    required this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 4,
        ),
        onPressed: onPressed,
        child:  Text(
          "$buttonTitle",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
