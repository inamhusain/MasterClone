import 'package:flutter/material.dart';
import 'package:flutter_master_temp/src/utils/app_theme.dart';

class CustomAppbar {
  PreferredSizeWidget appBar({
    double? toolbarHeight,
    bool? autoLeading,
    Widget? customLeading,
    Widget? titleWidget,
    List<Widget>? actions,
    IconThemeData? iconTheme,
    Color? backgroundColor,
    double? elevation,
  }) {
    return AppBar(
      toolbarHeight: toolbarHeight ?? 80.0,
      elevation: elevation ?? 5,
      automaticallyImplyLeading: autoLeading ?? true,
      leading: customLeading,
      centerTitle: true,
      title: titleWidget,
      actions: actions,
      iconTheme: iconTheme,
      backgroundColor: backgroundColor ?? AppTheme.PrimaryColor,
    );
  }
}
