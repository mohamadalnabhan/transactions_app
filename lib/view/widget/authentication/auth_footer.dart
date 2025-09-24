import 'package:flutter/material.dart';
import 'package:flutter_application_iddkk/core/constant/app_color.dart';
import 'package:flutter_application_iddkk/core/constant/app_routes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AuthFooter extends StatelessWidget {
  final String buttonQuestion ;
late  void Function()? onTap ;
final String pageRedirection  ; 
   AuthFooter({super.key, required this.buttonQuestion, required this.pageRedirection , required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            "$buttonQuestion",
            style: TextStyle(color: AppColor.white, fontSize: 15),
          ),
          const SizedBox(width: 5),
          InkWell(
            onTap: onTap , 
            child: Text(
              "$pageRedirection",
              style: TextStyle(color: AppColor.secondaryColor, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
