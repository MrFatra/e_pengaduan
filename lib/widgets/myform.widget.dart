import 'package:e_pengaduan/constant.dart';
import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  final String label;
  final bool? isVisible;
  final Icon? prefixIcon;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final TextInputType? inputType;
  final Icon? suffixIcon;
  final double? height;

  const MyForm({
    super.key,
    required this.label,
    required this.controller,
    this.isVisible,
    this.onChanged,
    this.validator,
    this.inputType,
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
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: inputType,
        obscureText: isVisible ?? false,
        onChanged: onChanged,
        validator: validator,
        cursorColor: kPrimaryColor,
        cursorWidth: 1.5,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: kPrimaryColor,
            ),
          ),
          prefixIcon: prefixIcon,
          labelText: label,
        ),
      ),
    );
  }
}
