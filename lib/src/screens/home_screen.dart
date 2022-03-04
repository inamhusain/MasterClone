import 'package:flutter/material.dart';
import 'package:flutter_master_temp/src/custom_widgets/custom_appBar.dart';
import 'package:flutter_master_temp/src/custom_widgets/custom_textFiled.dart';
import 'package:flutter_master_temp/src/custom_widgets/custom_widgets.dart';
import 'package:flutter_master_temp/src/screens/buttons_screen.dart';
import 'package:flutter_master_temp/src/screens/dialogbox_screen.dart';
import 'package:flutter_master_temp/src/screens/searchbar_screen.dart';
import 'package:flutter_master_temp/src/screens/slider_screen.dart';
import 'package:flutter_master_temp/src/screens/textfiled_screen.dart';
import 'package:flutter_master_temp/src/utils/app_validations.dart';
import 'package:flutter_master_temp/src/utils/navigation_routes.dart';
import 'package:sentry/sentry.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import '../custom_widgets/calander/common_calander.dart';
import 'checkBox_screen.dart';
import 'dropdown_screeen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //temp
  final List menuItems = [
    {'icon': Icons.people, 'text': 'Friends'},
    {'icon': Icons.favorite_border, 'text': 'Liked Photos'},
    {'text': 'Workflow', 'icon': Icons.workspaces_outline},
    {'text': 'Updates', 'icon': Icons.update},
    {'text': 'Notifications', 'icon': Icons.notifications_outlined},
    {'text': 'Settings', 'icon': Icons.settings},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(
        menuItems: menuItems,
        drawerColor: Colors.deepPurpleAccent,
        imageRadius: 40,
      ),
      appBar: CustomAppbar().appBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.notification_add),
          ),
        ],
        titleWidget: Customwidgets.autoSizeText(
          text: "Master templates App",
        ),
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Customwidgets.CustomButton(
              onPressed: () {
                NavigationRoute.NavigateToPush(
                    context: context, widget: TextFiledScreens());
              },
              child: Customwidgets.autoSizeText(text: "TextFileds"),
              context: context,
            ),
            Customwidgets.CustomButton(
              onPressed: () {
                NavigationRoute.NavigateToPush(
                    context: context, widget: DialogBoxScreen());
              },
              child: Customwidgets.autoSizeText(text: "Dialog Box"),
              context: context,
            ),
            Customwidgets.autoSizeText(
              text: "Master templates App",
            ),
            Customwidgets.CustomButton(
              onPressed: () async {
                await Sentry.captureException(
                  "button exception",
                );
              },
              child: Customwidgets.autoSizeText(text: "Check Error"),
              context: context,
            ),
            Customwidgets.staduimnShapedbutton(
                context: context, route: ButtonsScreen(), text: 'Buttons'),
            Customwidgets.staduimnShapedbutton(
                context: context, route: SearchBarScreen(), text: 'Search bar'),
            Customwidgets.staduimnShapedbutton(
                context: context, route: DropDownScreen(), text: 'dropdown'),
            Customwidgets.staduimnShapedbutton(
                context: context,
                route: CheckBoxScreen(),
                text: 'check box tile'),
            Customwidgets.staduimnShapedbutton(
                context: context, route: SliderScreen(), text: 'Sliders')
          ],
        ),
      )),
    );
  }
}
