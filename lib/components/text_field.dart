import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final bool obscureText;
  final String hintText;
  final Widget labelText;
  final TextEditingController controller;

  // constructor with formal parameter intiations
  const MyTextField({
    super.key,
    required this.obscureText,
    required this.hintText,
    required this.controller,
    required this.labelText,
    });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric( horizontal: 25),
      child: TextField(
        controller: controller,
        cursorColor: Colors.grey[600],
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[300]!
              ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            )
          ),
          label: labelText,
          labelStyle: TextStyle(color: Colors.grey[800]),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[300]),
        ),
        obscureText: obscureText,
      ),
    );
  }
}