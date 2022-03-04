import 'package:flutter/material.dart';
import 'package:flutter_master_temp/src/utils/app_validations.dart';

class CustomTextFiled extends StatelessWidget {
  String hintText;
  bool obscureText;
  bool isPassword;
  Widget? icon;
  IconData suffixIcon;
  dynamic width;

  // IconData suffixIcon;
  TextEditingController controller;
  void Function(String) onChanged;
  void Function(String) onSubmitted;
  void Function()? onShowPassword;
  String? Function(String?) validator;
  Color? changeColor;
  int? maxLines;
  BorderRadius? borderRadius;
  InputBorder? border;
  CustomTextFiled({
    Key? key,
    required this.hintText,
    this.obscureText = false,
    this.isPassword = false,
    this.icon,
    this.suffixIcon = Icons.visibility_off,
    required this.controller,
    required this.onChanged,
    required this.onSubmitted,
    this.onShowPassword,
    required this.validator,
    this.changeColor,
    this.maxLines,
    this.borderRadius,
    required this.width,
    this.border,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      child: TextFormField(
        inputFormatters:
            isPassword == true ? AppValidation.passwordInputFormatter : null,
        textInputAction:
            isPassword == false ? TextInputAction.next : TextInputAction.done,
        cursorColor: changeColor ?? Colors.black,
        validator: validator,
        onChanged: onChanged,
        onFieldSubmitted: onSubmitted,
        keyboardType: TextInputType.emailAddress,
        controller: controller,
        obscureText: obscureText == false ? false : true,
        maxLines: maxLines ?? 1,
        style: TextStyle(
          letterSpacing: 2,
          fontSize: width * 0.045,
          color: changeColor ?? Colors.black,
        ),
        decoration: InputDecoration(
          enabledBorder: border ??
              OutlineInputBorder(
                borderRadius: borderRadius ?? BorderRadius.zero,
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
              ),
          suffixIcon: isPassword == true
              ? Padding(
                  padding: EdgeInsets.only(right: width * 0.010),
                  child: IconButton(
                      iconSize: width * 0.055,
                      onPressed: onShowPassword,
                      icon: Icon(
                        suffixIcon,
                      ),
                      color: Colors.black),
                )
              : null,
          prefixIcon: icon,
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: width * 0.033,
              color: changeColor ?? Colors.black,
              letterSpacing: 1),
          focusedBorder: border ??
              OutlineInputBorder(
                borderRadius: borderRadius ?? BorderRadius.zero,
                borderSide: BorderSide(
                  color: changeColor ?? Colors.black,
                  width: 2,
                ),
              ),
          errorBorder: border ??
              OutlineInputBorder(
                borderRadius: borderRadius ?? BorderRadius.zero,
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2,
                ),
              ),
          focusedErrorBorder: border ??
              OutlineInputBorder(
                borderRadius: borderRadius ?? BorderRadius.zero,
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2,
                ),
              ),
          errorStyle: TextStyle(fontSize: width * 0.032, color: Colors.red),
        ),
      ),
    );
  }
}
