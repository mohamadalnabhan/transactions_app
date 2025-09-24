import 'package:flutter_application_iddkk/core/constant/app_routes.dart';
import 'package:flutter_application_iddkk/on_boarding.dart';
import 'package:flutter_application_iddkk/view/screen/authentication/forgot_password.dart';
import 'package:flutter_application_iddkk/view/screen/authentication/login.dart';
import 'package:flutter_application_iddkk/view/screen/authentication/reset_password.dart';
import 'package:flutter_application_iddkk/view/screen/authentication/signup.dart';
import 'package:flutter_application_iddkk/view/screen/authentication/verification_code.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> GetPages = [
  GetPage(name: AppRoutes.signup, page: () => Signup()),
  GetPage(name: "/", page: () => OnBoarding()),
  GetPage(name: AppRoutes.login, page: () => Login()),
  GetPage(name: AppRoutes.forgetPassword, page: () => ForgotPassword()),
  GetPage(name: AppRoutes.verifyCode, page: () => VerificationCode()),
   GetPage(name: AppRoutes.resetPassowrd, page: () => ResetPassword()),
];
