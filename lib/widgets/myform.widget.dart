import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  final String label;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final double? height;

  const MyForm({
    super.key,
    required this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.height,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          prefixIcon: prefixIcon,
          labelText: label,
        ),
      ),
    );
  }
}
