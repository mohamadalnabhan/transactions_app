import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SingupControllerImp extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;

  void SignUp() {
    if (formKey.currentState!.validate()) {
      // Handle login API or navigation
      // TODO: Call login API or navigate
      print("Email: ${email.text}");
      print("Password: ${password.text}");
    }
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    username.dispose();
    email.dispose();
    password.dispose();
    phone.dispose();
    super.onClose();
  }
}
