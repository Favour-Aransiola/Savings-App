import 'package:flutter/material.dart';
import 'package:assesment/utils/colors.dart';

class InputField extends StatelessWidget {
  TextInputType keyboarType;
  TextEditingController controller;
  String? Function(String?)? validator;
  String hintText;
  FocusNode? focus;
  void Function(String)? onDone;
  bool obscureText;
  InputField(
      {Key? key,
      required this.keyboarType,
      required this.controller,
      required this.validator,
      required this.hintText,
      this.focus,
      this.onDone,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obscureText,
        focusNode: focus,
        keyboardType: keyboarType,
        controller: controller,
        validator: validator,
        textInputAction: TextInputAction.done,
        onFieldSubmitted: onDone,
        style: const TextStyle(fontFamily: 'Arial', fontSize: 15),
        decoration: InputDecoration(
          filled: true,
          fillColor: fadedBlue,
          contentPadding: const EdgeInsets.all(8),
          hintText: hintText,
          hintStyle: TextStyle(
              fontFamily: 'Arial',
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: black),
          focusColor: fadedBlue,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: blue, width: 1)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: blue, width: 1)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: blue, width: 1)),
          // fillColor: ,
          enabled: true,
        ));
  }
}
