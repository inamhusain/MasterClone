import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final TextEditingController? textController;
  final String? hintText;
  void Function(String)? onChanged;
  Widget? prefixIcon;
  Widget? suffix;
  bool? filled;
  Color? fillColor;
  TextStyle? hintStyle;
  EdgeInsetsGeometry? contentPadding;
  Color? enabledBorderColor;
  Color? focusedBorderColor;
  double? enabledBorderWidth;
  double? focusedBorderWidth;
  double? enabledBorderRadius;
  double? focusedBorderRadius;

  Color? allcontaintColor;
  TextStyle? style;

  SearchInput({
    Key? key,
    required this.textController,
    required this.hintText,
    this.onChanged,
    this.prefixIcon,
    this.suffix,
    this.filled,
    this.fillColor,
    this.hintStyle,
    this.contentPadding,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.enabledBorderWidth,
    this.focusedBorderWidth,
    this.enabledBorderRadius,
    this.focusedBorderRadius,
    this.allcontaintColor,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: allcontaintColor,
      style: style ?? TextStyle(color: allcontaintColor),
      controller: textController,
      onChanged: onChanged,
      decoration: InputDecoration(
        suffixIcon: suffix,
        prefixIcon: prefixIcon,
        filled: filled ?? true,
        fillColor: fillColor ?? Colors.white,
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyle(color: Colors.grey),
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: enabledBorderColor ?? Colors.black,
              width: enabledBorderWidth ?? 1.0),
          borderRadius:
              BorderRadius.all(Radius.circular(enabledBorderRadius ?? 0.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: focusedBorderColor ?? Colors.black,
              width: focusedBorderWidth ?? 2.0),
          borderRadius:
              BorderRadius.all(Radius.circular(focusedBorderRadius ?? 0.0)),
        ),
      ),
    );
  }
}
