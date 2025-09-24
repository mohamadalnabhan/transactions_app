import 'package:flutter/material.dart';
import 'package:flutter_application_iddkk/controller/authentication/singup_controller.dart';
import 'package:flutter_application_iddkk/core/constant/app_color.dart';
import 'package:flutter_application_iddkk/core/constant/app_routes.dart';
import 'package:flutter_application_iddkk/core/functions/valid_input.dart';
import 'package:flutter_application_iddkk/view/widget/authentication/auth_button.dart';
import 'package:flutter_application_iddkk/view/widget/authentication/auth_footer.dart';
import 'package:flutter_application_iddkk/view/widget/authentication/textformfield_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Signup extends GetView<SingupControllerImp> {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SingupControllerImp()); // ✅ Register controller

    return Scaffold(
      appBar: AppBar(backgroundColor: AppColor.primaryColor),
      backgroundColor: AppColor.primaryColor,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        child: GetBuilder<SingupControllerImp>(
          builder: (controller) => Form(
            // ✅ wrap with Form
            key: controller.formKey,
            child: ListView(
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 40,
                    color: AppColor.secondaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 80),

                // Username
                TextformfieldAuth(
                  validator: (val) {
                    return validInput(val!, 5, 12, "username");
                  },
                  Txtcontroller: controller.username,
                  hintText: "Enter your username",
                  iconTxt: Icon(Icons.person, color: AppColor.white),
                ),
                const SizedBox(height: 20),

                // Email
                TextformfieldAuth(
                  validator: (val) {
                    return validInput(val!, 8, 50, "email");
                  },
                  Txtcontroller: controller.email,
                  hintText: "Enter your email",
                  iconTxt: Icon(Icons.email, color: AppColor.white),
                ),
                const SizedBox(height: 20),

                // Password
                TextformfieldAuth(
                  validator: (val) {
                    return validInput(val!, 5, 12, "password");
                  },
                  Txtcontroller: controller.password,
                  hintText: "Enter your password",
                  iconTxt: Icon(Icons.lock, color: AppColor.white),
                ),
                const SizedBox(height: 20),

                // Phone
                TextformfieldAuth(
                  validator: (val) {
                    return validInput(val!, 6, 15, "phone");
                  },
                  Txtcontroller: controller.phone,
                  hintText: "Enter your phone number",
                  iconTxt: Icon(Icons.phone, color: AppColor.white),
                ),
                const SizedBox(height: 40),

                // Signup Button
                AuthButton(
                  buttonTitle: "Sign Up",
                  backgroundColor: AppColor.secondaryColor,
                  foregroundColor: AppColor.primaryColor,
                  onPressed: () {
                    controller.SignUp(); // ✅ call controller method
                  },
                ),
                const SizedBox(height: 5),

                // Footer
                AuthFooter(
                  buttonQuestion: "Already have an account? ",
                  pageRedirection: "Login",
                  onTap: () {
                    Get.offAllNamed(AppRoutes.login);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
