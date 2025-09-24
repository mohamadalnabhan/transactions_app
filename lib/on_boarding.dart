import 'package:flutter/material.dart';
import 'package:flutter_application_iddkk/core/constant/app_color.dart';
import 'package:flutter_application_iddkk/core/constant/app_routes.dart';
import 'package:flutter_application_iddkk/view/screen/authentication/signup.dart';
import 'package:flutter_application_iddkk/view/widget/on_boarding_animation.dart';
import 'package:flutter_application_iddkk/view/widget/on_boarding_button.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Animated Image
              OnBoardingAnimation(
                moveRight: true,
                imagePath: "assets/images/onBoarding.png",
              ),
              const SizedBox(height: 30),
              // Title
              Text(
                "Welcome to My App",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColor.secondaryColor,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 10),

              // Subtitle
              Text(
                "Organize your tasks easily and stay productive!",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white.withOpacity(0.9),
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 40),

              // Button
              OnBoardingButton(
                backgroundColor: AppColor.secondaryColor,
                foregroundColor: AppColor.primaryColor,
                onPressed: () {
                  Get.offAllNamed(AppRoutes.signup);
                },
                buttonTitle: "Get Started",
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
