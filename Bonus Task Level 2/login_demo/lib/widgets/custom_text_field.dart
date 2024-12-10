import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hint,
    required this.validator,
    this.isObsecure = false,
  });
  final TextEditingController controller;
  final String hint;
  final String? Function(String?) validator;
  final bool isObsecure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObsecure,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        fillColor: Colors.grey[100],
        filled: true,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
