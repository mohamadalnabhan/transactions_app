import 'package:flutter/material.dart';
import 'package:flutter_application_iddkk/controller/authentication/resetpassword_controller.dart';
import 'package:flutter_application_iddkk/core/constant/app_color.dart';
import 'package:flutter_application_iddkk/core/constant/app_routes.dart';
import 'package:flutter_application_iddkk/core/functions/valid_input.dart';
import 'package:flutter_application_iddkk/view/widget/authentication/auth_button.dart';
import 'package:flutter_application_iddkk/view/widget/authentication/textformfield_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ResetPassword extends GetView<ResetpasswordControllerImp> {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetpasswordControllerImp());
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColor.primaryColor),
      backgroundColor: AppColor.primaryColor,
      body: GetBuilder<ResetpasswordControllerImp>(
        builder: (controller) => Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          child: Form(
            key: controller.formKey,
            child: ListView(
              children: [
                const SizedBox(height: 50),
                SizedBox(
                  child: Text(
                    "Reset Password",
                    style: TextStyle(
                      fontSize: 32,
                      color: AppColor.secondaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                const SizedBox(height: 30),
                Container(
                  child: TextformfieldAuth(
                    validator: (val) {
                      return validInput(val!, 6, 20, "password");
                    },
                    Txtcontroller: controller.newPassword,
                    hintText: "enter your new password ",
                    obscureText: true,
                    iconTxt: Icon(Icons.lock),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  child: TextformfieldAuth(
                    validator: (val) {
                      if(val == null || val.isEmpty) return "confirm password is require" ; 
                      if(val != controller.newPassword.text ) return "passwords does no match" ;
                      return validInput(val!, 6, 20, "password");
                    },
                    Txtcontroller: controller.confirmPassword,
                    hintText: "confirm password ",
                    obscureText: true,
                    iconTxt: Icon(Icons.lock),
                  ),
                ),
                const SizedBox(height: 60),
                AuthButton(
                  buttonTitle: "Enter verification code page",
                  backgroundColor: AppColor.secondaryColor,
                  foregroundColor: AppColor.primaryColor,
                  onPressed:controller.ResetPassword
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
