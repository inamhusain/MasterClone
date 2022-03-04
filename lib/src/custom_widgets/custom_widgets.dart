import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:bot_toast/bot_toast.dart';

import 'button/common_button.dart';

class Customwidgets {
  //autoSize Text
  static autoSizeText({
    required String text,
    TextStyle? style,
    TextAlign? textAlign,
    int? maxLines,
    double? maxFontSize,
    double? minFontSize,
  }) {
    return AutoSizeText(
      text,
      style: style,
      maxFontSize: maxFontSize ?? double.infinity,
      minFontSize: minFontSize ?? 20,
      textAlign: textAlign ?? TextAlign.center,
      overflow: TextOverflow.ellipsis,
      softWrap: true,
      maxLines: maxLines ?? 1,
    );
  }

//remove Scroll Glow
  static Widget RemoveGlow({Widget? child}) {
    return ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false), child: child!);
  }

  //toast show
  static toastMessage({
    String? text,
    Color? color,
    int? duration_Secound,
    Color? textColor,
    double? fontSize,
  }) {
    return BotToast.showText(
      clickClose: true,
      textStyle:
          TextStyle(color: textColor ?? Colors.white, fontSize: fontSize ?? 15),
      text: text!,
      contentColor: color ?? Colors.black,
      duration: Duration(seconds: duration_Secound ?? 4),
    );
  }

  //customButton

  static CustomButton({
    required void Function()? onPressed,
    required Widget? child,
    Color? buttonColor,
    required context,
    Size? fixedSize,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style: ElevatedButton.styleFrom(
        primary: buttonColor ?? Theme.of(context).primaryColor,
        fixedSize: fixedSize ?? Size(200, 50),
      ),
    );
  }

//just for temp buttons
  static staduimnShapedbutton({context, route, text}) {
    return CommonButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => route,
            ));
      },
      backgroundColor: Colors.deepPurpleAccent,
      shape: StadiumBorder(),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
