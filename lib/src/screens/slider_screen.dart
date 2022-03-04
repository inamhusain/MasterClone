import 'package:flutter/material.dart';

import '../custom_widgets/slider/common_Normal_slider.dart';
import '../custom_widgets/slider/common_range_slider.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('slider'),
      ),
      body: Center(
        child: Column(
          children: [
            NormalSlider(
              min: 0,
              max: 100,
              isNumVisible: true,
              onChange: (v) {},
              primaryColor: Colors.red,
            ),
            NormalSlider(
              min: 0,
              max: 10,
              onChange: (v) {},
              primaryColor: Colors.deepPurpleAccent,
            ),
            NormalSlider(
              min: 0,
              max: 10,
              divisions: 5,
              isNumVisible: true,
              label: 'slider',
              onChange: (v) {},
              primaryColor: Colors.deepPurpleAccent,
            ),
            CommonRangeSlider(
              min: 0,
              max: 100,
              onChange: (v) {},
              primaryColor: Colors.red,
              // isNumVisible: true,
            )
          ],
        ),
      ),
    );
  }
}
