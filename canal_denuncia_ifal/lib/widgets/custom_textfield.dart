import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final int minLines;
  final int maxLines;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;
  final TextEditingController? controller;

  const CustomTextField({
    required this.label,
    this.minLines = 1,
    this.maxLines = 1,
    this.validator,
    this.onSaved,
    this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        filled: true,
        fillColor: Colors.white,
      ),
      minLines: minLines,
      maxLines: maxLines,
      validator: validator,
      onSaved: onSaved,
      controller: controller,
    );
  }
} 