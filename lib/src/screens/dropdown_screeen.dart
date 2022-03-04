import 'package:flutter/material.dart';
import 'package:flutter_master_temp/src/custom_widgets/dropdown/common_dropdown.dart';

class DropDownScreen extends StatelessWidget {
  List<String> items = <String>[
    'Android',
    'IOS',
    'Flutter',
    'Node',
    'Java',
    'Python',
    'PHP',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('DropDown'),
      ),
      body: Center(
        child: DropDownDemo(
          items: items,
          dropDownColor: Colors.white,
          dropDownItemStyle: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
