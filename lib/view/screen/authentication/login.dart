import 'package:flutter/material.dart';
import 'package:flutter_application_iddkk/controller/authentication/login_controller.dart';
import 'package:flutter_application_iddkk/core/constant/app_color.dart';
import 'package:flutter_application_iddkk/core/constant/app_routes.dart';
import 'package:flutter_application_iddkk/view/widget/authentication/auth_button.dart';
import 'package:flutter_application_iddkk/view/widget/authentication/auth_footer.dart';
import 'package:flutter_application_iddkk/view/widget/authentication/textformfield_auth.dart';
import 'package:get/get.dart';

class Login extends GetView<LoginControllerImp> {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp()); // ✅ register controller
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColor.primaryColor),
      backgroundColor: AppColor.primaryColor,
      body: GetBuilder<LoginControllerImp>(
        builder: (controller) => Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          child: Form(
            key: controller.formKey ?? GlobalKey<FormState>(),
            child: ListView(
              children: [
                SizedBox(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 40,
                      color: AppColor.secondaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 80),

                TextformfieldAuth(
                  validator: controller.validatorEmail(),
                  Txtcontroller: controller.emailController,
                  hintText: "enter your email",
                  iconTxt: Icon(Icons.email, color: AppColor.white),
                ),
                const SizedBox(height: 20),

                // Password
                TextformfieldAuth(
                  validator: controller.validatorPassword(),
                  Txtcontroller: controller.passwordController,
                  hintText: "enter your password",
                  iconTxt: Icon(Icons.lock, color: AppColor.white),
                ),
                const SizedBox(height: 10),

                // Forgot password
                AuthFooter(
                  buttonQuestion: "Forgot your password? ",
                  pageRedirection: "Reset password",
                  onTap: () {
                    Get.offAllNamed(AppRoutes.forgetPassword);
                  },
                ),
                const SizedBox(height: 40),

                // Login Button
                AuthButton(
                  buttonTitle: "Login",
                  backgroundColor: AppColor.secondaryColor,
                  foregroundColor: AppColor.primaryColor,
                  onPressed: controller.login,
                ),
                const SizedBox(height: 5),

                // Signup redirection
                AuthFooter(
                  buttonQuestion: "Don't have an account? ",
                  pageRedirection: "Sign up",
                  onTap: () {
                    Get.offAllNamed(AppRoutes.signup);
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
