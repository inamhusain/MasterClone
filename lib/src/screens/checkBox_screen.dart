import 'package:flutter/material.dart';

import '../custom_widgets/checkbox/common_checkbox.dart';

class CheckBoxScreen extends StatelessWidget {
  const CheckBoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Box tile'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        children: [
          CommonCheckBox(
            activeColor: Colors.deepPurpleAccent,
          ),
          CommonCheckBox(
            activeColor: Colors.deepOrange,
          ),
          CommonCheckBox(),
          CommonCheckBox(),
          CommonCheckBox(),
        ],
      ),
    );
  }
}
