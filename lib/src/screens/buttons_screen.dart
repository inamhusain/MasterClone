import 'package:flutter/material.dart';

import '../custom_widgets/button/common_button.dart';

class ButtonsScreen extends StatelessWidget {
  ButtonsScreen({Key? key}) : super(key: key);
  ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
              valueListenable: isLoading,
              builder: (BuildContext context, dynamic value, Widget? child) {
                return CommonButton(
                  allContaintColor: Colors.white,
                  isLoading: isLoading.value,
                  circularProgressIndicatorRadius: 15,
                  // width: isLoading.value == true ? null : 200,
                  width: 200,
                  shape: StadiumBorder(),
                  onPressed: () {
                    isLoading.value = true;
                    Future.delayed(Duration(seconds: 2), () {
                      isLoading.value = false;
                    });
                  },
                  backgroundColor: Colors.deepPurple,
                  child: Text(
                    'Loading',
                    style: TextStyle(color: Colors.white),
                  ),
                  padding: EdgeInsets.all(10),
                );
              },
            ),
            CommonButton(
              allContaintColor: Colors.white,
              width: 200,
              onPressed: () {},
              backgroundColor: Colors.deepPurple,
              child: Text(
                'Filled color',
                style: TextStyle(color: Colors.white),
              ),
              padding: EdgeInsets.all(10),
            ),
            CommonButton(
              width: 200,
              elevation: 0,
              enableBorder: true,
              backgroundColor: Colors.white,
              borderColor: Colors.deepPurpleAccent,
              onPressed: () {},
              child: Text(
                'Border',
                style: TextStyle(color: Colors.deepPurpleAccent),
              ),
              padding: EdgeInsets.all(10),
            ),
            CommonButton(
              width: 200,
              elevation: 0,
              backgroundColor: Colors.deepPurpleAccent,
              shape: StadiumBorder(),
              onPressed: () {},
              child: Text(
                'border radius',
                style: TextStyle(color: Colors.white),
              ),
              padding: EdgeInsets.all(10),
            ),
            CommonButton(
              width: 200,
              elevation: 0,
              backgroundColor: Colors.white,
              // shape: StadiumBorder(),
              enableBorder: true,
              bottonRadius: 20,
              borderColor: Colors.deepPurpleAccent,
              onPressed: () {},
              child: Text(
                'border color with radius',
                style: TextStyle(color: Colors.deepPurpleAccent),
              ),
              padding: EdgeInsets.all(10),
            ),
            CommonButton(
              width: 200,
              elevation: 0,
              backgroundColor: Colors.deepPurpleAccent,
              // shape: StadiumBorder(),
              // enableBorder: true,
              // bottonRadius: 20,
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'continue',
                  ),
                  Icon(
                    Icons.arrow_forward,
                  )
                ],
              ),
              padding: EdgeInsets.all(10),
              allContaintColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
