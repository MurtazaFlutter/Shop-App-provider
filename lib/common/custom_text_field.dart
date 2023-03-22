import 'package:flutter/material.dart';
import '../utils/constants.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hinText;
  final TextInputType textInputType;
  final FormFieldValidator formFieldValidator;
  final TextEditingController controller;
  final bool obSecure;

  const CustomTextField(
      {Key? key,
      required this.labelText,
      required this.formFieldValidator,
      required this.textInputType,
      required this.hinText,
      required this.controller,
      this.obSecure = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      validator: formFieldValidator,
      obscureText: obSecure,
      controller: controller,
      decoration: InputDecoration(
        label: Text(labelText),
        labelStyle: kRegular.copyWith(
          fontSize: 12,
          color: kGrey,
        ),
        hintText: hinText,
        hintStyle: kRegular.copyWith(
          fontSize: 13,
        ),
      ),
    );
  }
}
