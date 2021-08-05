import 'package:flutter/material.dart';

class AppTextFormFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const AppTextFormFieldWidget(
      {Key? key, 
      required this.controller, 
      required this.hintText, 
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          hintText: hintText
        ),
      ),
    );
  }
}
