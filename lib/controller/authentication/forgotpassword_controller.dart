
import 'package:flutter/material.dart';
import 'package:flutter_application_iddkk/core/constant/app_routes.dart';
import 'package:flutter_application_iddkk/view/screen/authentication/forgot_password.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ForgotpasswordController extends GetxController {

  late TextEditingController forgetPasswordCon;

   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void onInit() {
    forgetPasswordCon = TextEditingController();
    super.onInit();
  }

  void ForgotPassword() {
    if (formKey.currentState!.validate()) {
    Get.offAllNamed(AppRoutes.verifyCode);  }
  }

  @override
  void onClose() {
    forgetPasswordCon.dispose();

    super.onClose();
  }
}