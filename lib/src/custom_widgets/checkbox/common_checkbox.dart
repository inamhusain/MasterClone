import 'package:flutter/material.dart';

class CommonCheckBox extends StatelessWidget {
  String? title;
  String? subTitle;
  Widget? secondary;
  Color? activeColor;
  CommonCheckBox({
    Key? key,
    this.title,
    this.subTitle,
    this.secondary,
    this.activeColor,
  }) : super(key: key);

  ValueNotifier<bool> _value = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _value,
      builder: (BuildContext context, dynamic value, Widget? child) {
        return CheckboxListTile(
          title: Text(title ?? 'Title'),
          subtitle: Text(subTitle ?? 'Sub Title'),
          secondary: secondary ?? Icon(Icons.code),
          activeColor: activeColor ?? Colors.black,
          checkColor: Colors.white,
          selected: _value.value,
          value: _value.value,
          onChanged: (bool? value) {
            _value.value = value!;
          },
        );
      },
    );
  }
}
