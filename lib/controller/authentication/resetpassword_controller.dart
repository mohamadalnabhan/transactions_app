import 'package:flutter/material.dart';
import 'package:flutter_application_iddkk/core/constant/app_routes.dart';
import 'package:flutter_application_iddkk/view/screen/authentication/reset_password.dart';
import 'package:get/get.dart';

class ResetpasswordControllerImp extends GetxController {
  late TextEditingController newPassword;
  late TextEditingController confirmPassword;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    newPassword = TextEditingController();
    confirmPassword = TextEditingController();
    super.onInit();
  }

  void ResetPassword() {
    if (formKey.currentState!.validate()) {
      Get.offAllNamed(AppRoutes.login);
    }
  }

  @override
  void onClose() {
    newPassword.dispose();
    confirmPassword.dispose();
    super.onClose();
  }
}
