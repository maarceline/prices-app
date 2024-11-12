import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextfield extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  final String hintText;
  MyTextfield({
    super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(24),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      controller: controller,
    );
  }
}
