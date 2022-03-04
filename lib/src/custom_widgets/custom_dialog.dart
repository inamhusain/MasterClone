import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAndroidDialog extends StatelessWidget {
  final String title, description;
  final String? buttonText;
  final Image? image;
  final IconData? iconData;
  final Color? color;
  final void Function()? buttonOnPressed;
  final List<Widget>? actions;

  CustomAndroidDialog({
    required this.title,
    required this.description,
    this.buttonText,
    this.image,
    this.iconData,
    this.color,
    this.buttonOnPressed,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      elevation: 0.0,
      backgroundColor: Colors.white,
      content: dialogContent(context),
      actions: actions ??
          [
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  primary: Colors.transparent,
                  shadowColor: Colors.white.withOpacity(0.1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onPressed: buttonOnPressed ??
                    () {
                      Navigator.of(context).pop(); //
                    },
                child: Text(
                  "${buttonText}",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )
          ],
    );
  }

  dialogContent(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min, // To make the card compact
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 40,
            child: Icon(
              iconData,
              size: 40.0,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16),
          Text(
            title,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 24.0),
        ],
      ),
    );
  }
}

class CustomAndroidDialogs {
  void showAlertDialog({
    required BuildContext context,
    required Widget child,
    bool barrierDismissible = true,
    double? height,
  }) {
    showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            width: MediaQuery.of(context).size.width / 1.3,
            height: height ?? MediaQuery.of(context).size.height / 2,
            decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              color: const Color(0xFFFFFF),
              borderRadius: new BorderRadius.all(new Radius.circular(32.0)),
            ),
            child: child,
          ),
        );
      },
    );
  }
}

class CustomIosDialog extends StatelessWidget {
  final String? title;
  final String? buttonText;
  final String? description;
  final Image? image;
  final IconData? iconData;
  final Color? color;
  final void Function()? buttonOnPressed;
  final List<Widget>? actions;

  CustomIosDialog({
    required this.title,
    this.description,
    this.buttonText,
    this.image,
    this.iconData,
    this.color,
    this.buttonOnPressed,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      content: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min, // To make the card compact
          children: [
            CircleAvatar(
              backgroundColor: color,
              radius: 40,
              child: Icon(
                iconData,
                size: 40.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "${title}",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              "${description}",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
      actions: actions ??
          [
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  primary: Colors.transparent,
                  shadowColor: Colors.white.withOpacity(0.1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onPressed: buttonOnPressed ??
                    () {
                      Navigator.of(context).pop(); //
                    },
                child: Text(
                  "${buttonText}",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )
          ],
    );
  }
}

class CustomIosDialogs {
  void showAlertIosDialog({
    required BuildContext context,
    required Widget child,
    bool barrierDismissible = true,
    double? height,
    double? width,
  }) {
    showCupertinoDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          content: Container(
            width: width ?? MediaQuery.of(context).size.width / 1,
            height: height ?? MediaQuery.of(context).size.height / 2,
            decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              color: const Color(0xFFFFFF),
              borderRadius: new BorderRadius.all(new Radius.circular(32.0)),
            ),
            child: child,
          ),
        );
      },
    );
  }
}
