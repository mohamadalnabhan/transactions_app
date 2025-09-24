import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LoginControllerImp extends GetxController {
 final GlobalKey<FormState> formKey = GlobalKey<FormState>();  // ✅ fixed
  // Controllers (optional for login data)
  late TextEditingController emailController;
  late TextEditingController passwordController;

  String? Function(String?)? validatorPassword() {
   return (value) {
      if (value == null || value.isEmpty) {
        return "Password is required";
      }
      if (value.length < 6) {
        return "Password must be at least 6 characters";
      }
      return null;
    };
  }

  String? Function(String?)? validatorEmail() {
   return (value) {
      if (value == null || value.isEmpty) {
        return "Email is required";
      }
      if (!value.contains("@")) {
        return "Enter a valid email";
      }
      return null;
    };
  }

  void login() {
  if (formKey.currentState!.validate()) {
    // Handle login API or navigation
       // TODO: Call login API or navigate
                    print("Email: ${emailController.text}");
                    print("Password: ${passwordController.text}");
  }
}

@override
void onInit() {

  emailController = TextEditingController();
  passwordController = TextEditingController();
  super.onInit();
}
@override
void onClose() {
  emailController.dispose();
  passwordController.dispose();
  super.onClose();
}

}
