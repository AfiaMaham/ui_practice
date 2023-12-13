import 'package:flutter/material.dart';
import 'package:ui_practice/helpers/constants.dart';

class FieldOfText extends StatelessWidget {
  String? hint;
  String? helper;

  TextInputType? keyboardType;
  bool obscure;

  FieldOfText(
  this.keyboardType,
  this.hint,
  [this.obscure = false,
  this.helper,]
  );

  @override
  Widget build(BuildContext context) {
  return TextFormField(
  obscureText: obscure,
  obscuringCharacter: '*',
  keyboardType: keyboardType,
  decoration: InputDecoration(
  hintText: hint,
  helperText: helper,
  helperStyle: TextStyle(
  fontFamily: "Poppins Regular",
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: AppColor.grayShade3,
  ),
  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
  hintStyle: TextStyle(
  fontFamily: "Poppins Regular",
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: AppColor.grayShade3,
  ),
  border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: BorderSide(
  width: 1,
  color: AppColor.grayShade3,
  ),
  ),
  ),
  );
  }
}
