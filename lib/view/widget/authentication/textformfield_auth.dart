import 'package:flutter/material.dart';

class TextformfieldAuth extends StatelessWidget {
  final TextEditingController Txtcontroller;
  final String hintText;
  final Widget? iconTxt;
  final String? Function(String?)? validator;
  final bool obscureText;

  const TextformfieldAuth({
    super.key,
    required this.Txtcontroller,
    required this.hintText,
    this.iconTxt,
    this.validator,
    this.obscureText = false, 
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: Txtcontroller,
      decoration: InputDecoration(
        icon: iconTxt,
        hintText: hintText,
      ),
      validator: validator,
      obscureText: obscureText, 
    );
  }
}
