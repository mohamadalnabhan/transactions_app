import 'package:flutter/material.dart';
import 'package:flutter_application_iddkk/core/constant/app_color.dart';
import 'package:flutter_application_iddkk/core/constant/app_routes.dart';
import 'package:flutter_application_iddkk/view/widget/authentication/auth_button.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColor.primaryColor),
      backgroundColor: AppColor.primaryColor,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        child: ListView(
          children: [
            const SizedBox(height: 50),
            SizedBox(
              child: Text(
                "code verification ",
                style: TextStyle(fontSize: 40, color: AppColor.secondaryColor),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 20),
            SizedBox(
              child: Text(
                "enter the verification code you got on your email ",
                style: TextStyle(fontSize: 20, color: AppColor.white),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 40),
            OtpTextField(
              textStyle: const TextStyle(
                color: Colors.white, // 👈 makes the digits white
                fontSize: 20, // optional: make digits bigger
                fontWeight: FontWeight.bold, // optional
              ),
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Verification Code"),
                      content: Text('Code entered is $verificationCode'),
                    );
                  },
                );
              }, // end onSubmit
            ),
            const SizedBox(height: 70),
            AuthButton(
              buttonTitle: "verify",
              backgroundColor: AppColor.secondaryColor,
              foregroundColor: AppColor.primaryColor,
              onPressed: () {
                Get.offAllNamed(AppRoutes.resetPassowrd);
              },
            ),
          ],
        ),
      ),
    );
  }
}
