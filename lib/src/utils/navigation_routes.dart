import 'package:flutter/material.dart';

class NavigationRoute {
  static NavigateToPush({
    required BuildContext context,
    required Widget widget,
  }) {
    return Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return widget;
      },
    ));
  }

  static NavigatePushReplacement({
    required BuildContext context,
    required Widget widget,
  }) {
    return Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return widget;
      },
    ));
  }

  static NavigatePushAndRemoveUnti({
    required BuildContext context,
    required Widget widget,
  }) {
    return Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ),
        (route) => false);
  }

  static NavigatePop({required BuildContext context}) {
    return Navigator.pop(context);
  }
}
