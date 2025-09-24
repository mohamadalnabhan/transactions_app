import 'package:flutter/material.dart';
import 'package:flutter_application_iddkk/core/constant/app_routes.dart';
import 'package:flutter_application_iddkk/view/screen/authentication/reset_password.dart';
import 'package:get/get.dart';

class VerificationcodeController extends GetxController {


  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void onInit() {
 
    super.onInit();
  }

  void verifyCode() {
    if (formKey.currentState!.validate()) {
    
    }
  }

  @override
  void onClose() {
    
    super.onClose();
  }
}
