import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final Color? backgroundColor;
  final ShapeBorder? shape;
  final double? elevation;
  final bool? enableBorder;
  final Color? borderColor;
  final double? borderWidth;
  final double? bottonRadius;
  void Function()? onPressed;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  // final double? height;
  final double? width;
  final bool? isLoading;
  final Color? allContaintColor;
  final double? strokeWidth;
  final double? circularProgressIndicatorRadius;

  CommonButton({
    Key? key,
    this.backgroundColor,
    this.shape,
    this.elevation,
    this.enableBorder,
    this.borderColor,
    this.borderWidth,
    this.bottonRadius,
    required this.onPressed,
    this.child,
    this.padding,
    // this.height,
    this.width,
    this.isLoading,
    this.allContaintColor,
    this.strokeWidth,
    this.circularProgressIndicatorRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: MaterialButton(
          key: key,
          textColor: allContaintColor,
          padding: padding ?? EdgeInsets.zero,
          // height: height ?? 0,
          onPressed: onPressed,
          shape: shape ??
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(bottonRadius ?? 0),
                  side: enableBorder == true
                      ? BorderSide(
                          color: borderColor ?? Colors.black,
                          width: borderWidth ?? 2.0,
                        )
                      : BorderSide.none),
          color: backgroundColor ?? Colors.transparent,
          elevation: elevation ?? 0.0,
          child: isLoading == true
              ? SizedBox(
                  height: circularProgressIndicatorRadius,
                  width: circularProgressIndicatorRadius,
                  child: CircularProgressIndicator(
                    color: allContaintColor,
                    strokeWidth: strokeWidth ?? 2,
                  ),
                )
              : child),
    );
  }
}
