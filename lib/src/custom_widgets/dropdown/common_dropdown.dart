import 'package:flutter/material.dart';

class DropDownDemo extends StatefulWidget {
  List<String> items;
  Color? dropDownColor;
  double? itemHeight;
  TextStyle? hintTextStyle;
  String? hintText;
  TextStyle? dropDownItemStyle;

  DropDownDemo({
    Key? key,
    required this.items,
    this.dropDownColor,
    this.itemHeight,
    this.hintTextStyle,
    this.hintText,
    this.dropDownItemStyle,
  }) : super(key: key);

  @override
  _DropDownDemoState createState() => _DropDownDemoState();
}

class _DropDownDemoState extends State<DropDownDemo> {
  String? _chosenValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      dropdownColor: widget.dropDownColor,
      itemHeight: widget.itemHeight,
      value: _chosenValue,
      style: TextStyle(color: Colors.black),
      items: widget.items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: widget.dropDownItemStyle,
          ),
        );
      }).toList(),
      hint: Text(
        widget.hintText ?? "Please choose any item",
        style: widget.hintTextStyle ??
            TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
      ),
      onChanged: (String? value) {
        setState(() {
          _chosenValue = value!;
        });
      },
    );
  }
}
