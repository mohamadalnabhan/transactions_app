import 'package:flutter/material.dart';
import 'package:flutter_application_iddkk/controller/authentication/forgotpassword_controller.dart';
import 'package:flutter_application_iddkk/core/constant/app_color.dart';
import 'package:flutter_application_iddkk/core/constant/app_routes.dart';
import 'package:flutter_application_iddkk/core/functions/valid_input.dart';
import 'package:flutter_application_iddkk/view/widget/authentication/auth_button.dart';
import 'package:flutter_application_iddkk/view/widget/authentication/textformfield_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ForgotPassword extends GetView<ForgotpasswordController> {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgotpasswordController());
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColor.primaryColor),
      backgroundColor: AppColor.primaryColor,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        child: GetBuilder<ForgotpasswordController>(builder: (controller) =>
        Form(
          key: controller.formKey,
          child:
         ListView(
          children: [
            SizedBox(
              child: Text(
                "Forgot Password",
                style: TextStyle(fontSize: 32, color: AppColor.secondaryColor),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 20),
            SizedBox(
              child: Text(
                "enter your email and you will recieve a verification code ",
                style: TextStyle(fontSize: 18, color: AppColor.white),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 80),
                TextformfieldAuth(
                  validator: (val){
                    return validInput(val!, 6, 30, "email") ; 
                  },
                  Txtcontroller: controller.forgetPasswordCon,
                  hintText: "enter your email",
                  iconTxt: Icon(Icons.email, color: AppColor.white),
                ),
            
            const SizedBox(height: 20),
            AuthButton(
              buttonTitle: "Enter verification code page",
              backgroundColor: AppColor.secondaryColor,
              foregroundColor: AppColor.primaryColor,
              onPressed:controller.ForgotPassword
            ),
          ],
        ), ))
      ),
    );
  }
}
