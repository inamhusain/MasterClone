import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_master_temp/src/custom_widgets/custom_appBar.dart';
import 'package:flutter_master_temp/src/custom_widgets/custom_dialog.dart';
import 'package:flutter_master_temp/src/custom_widgets/custom_textFiled.dart';
import 'package:flutter_master_temp/src/custom_widgets/custom_widgets.dart';
import 'package:flutter_master_temp/src/utils/app_validations.dart';

class DialogBoxScreen extends StatefulWidget {
  const DialogBoxScreen({Key? key}) : super(key: key);
  static const String id = "cart-screen";

  @override
  _DialogBoxScreenState createState() => _DialogBoxScreenState();
}

class _DialogBoxScreenState extends State<DialogBoxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar().appBar(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Customwidgets.autoSizeText(text: "Android"),
                Customwidgets.CustomButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => CustomAndroidDialog(
                        title: "Success",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        buttonText: "Okay",
                        iconData: Icons.check,
                        color: Colors.green,
                      ),
                    );
                  },
                  child: Customwidgets.autoSizeText(text: "Success Dialog"),
                  context: context,
                ),
                Customwidgets.CustomButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => CustomAndroidDialog(
                        title: "Warning",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        buttonText: "Okay",
                        iconData: Icons.warning_amber,
                        color: Colors.orangeAccent,
                      ),
                    );
                  },
                  child: Customwidgets.autoSizeText(text: "Warning Dialog"),
                  context: context,
                ),
                Customwidgets.CustomButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => CustomAndroidDialog(
                        title: "Info",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        buttonText: "Okay",
                        iconData: Icons.info_outlined,
                        color: Colors.grey.shade900,
                      ),
                    );
                  },
                  child: Customwidgets.autoSizeText(text: "Info Dialog"),
                  context: context,
                ),
                Customwidgets.CustomButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => CustomAndroidDialog(
                        title: "Error",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        buttonText: "Okay",
                        iconData: Icons.clear,
                        color: Colors.red,
                      ),
                    );
                  },
                  child: Customwidgets.autoSizeText(text: "Error Dialog"),
                  context: context,
                ),
                Customwidgets.CustomButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => CustomAndroidDialog(
                        title: "Confim Dialog",
                        description: "Are you sure to want to confirm.",
                        // buttonText: "Okay",
                        iconData: Icons.warning_rounded,
                        color: Colors.orangeAccent.shade200,
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Yes")),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("No")),
                        ],
                      ),
                    );
                  },
                  child: Customwidgets.autoSizeText(text: "Action Dialog "),
                  context: context,
                ),
                Customwidgets.CustomButton(
                  onPressed: () {
                    CustomAndroidDialogs().showAlertDialog(
                      context: context,
                      height: 400,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            radius: 50.0,
                          ),
                          SizedBox(height: 20.0),
                          Customwidgets.autoSizeText(
                            text:
                                "orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                            maxLines: 3,
                          ),
                          SizedBox(height: 20.0),
                          CustomTextFiled(
                            hintText: "Enter Your Name",
                            controller: TextEditingController(),
                            onChanged: (value) {},
                            onSubmitted: (value) {},
                            validator: (value) =>
                                AppValidation.nameValidation(value),
                            width: 500,
                          ),
                        ],
                      ),
                    );
                  },
                  child: Customwidgets.autoSizeText(text: "Custom Dialog"),
                  context: context,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Customwidgets.autoSizeText(text: "IOS"),
                Customwidgets.CustomButton(
                  onPressed: () {
                    showCupertinoDialog(
                      context: context,
                      builder: (context) => CustomIosDialog(
                        title: "Success",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        buttonText: "Okay",
                        iconData: Icons.check,
                        color: Colors.green,
                      ),
                    );
                  },
                  child: Customwidgets.autoSizeText(text: "Success IOS"),
                  context: context,
                ),
                Customwidgets.CustomButton(
                  onPressed: () {
                    showCupertinoDialog(
                      context: context,
                      builder: (context) => CustomIosDialog(
                        title: "Warning",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        buttonText: "Okay",
                        iconData: Icons.warning_amber,
                        color: Colors.orangeAccent,
                      ),
                    );
                  },
                  child: Customwidgets.autoSizeText(text: "Warning IOS"),
                  context: context,
                ),
                Customwidgets.CustomButton(
                  onPressed: () {
                    showCupertinoDialog(
                      context: context,
                      builder: (context) => CustomIosDialog(
                        title: "Info",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        buttonText: "Okay",
                        iconData: Icons.info_outlined,
                        color: Colors.grey.shade900,
                      ),
                    );
                  },
                  child: Customwidgets.autoSizeText(text: "Info IOS"),
                  context: context,
                ),
                Customwidgets.CustomButton(
                  onPressed: () {
                    showCupertinoDialog(
                      context: context,
                      builder: (context) => CustomIosDialog(
                        title: "Error",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        buttonText: "Okay",
                        iconData: Icons.clear,
                        color: Colors.red,
                      ),
                    );
                  },
                  child: Customwidgets.autoSizeText(text: "Error IOS"),
                  context: context,
                ),
                Customwidgets.CustomButton(
                  onPressed: () {
                    showCupertinoDialog(
                      context: context,
                      builder: (BuildContext context) => CustomIosDialog(
                        title: "Confim Dialog",
                        description: "Are you sure to want to confirm ?",
                        // buttonText: "Okay",
                        iconData: Icons.warning_rounded,
                        color: Colors.orangeAccent.shade200,
                        actions: [
                          CupertinoDialogAction(
                            child: Text('No'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          CupertinoDialogAction(
                            child: Text('Yes'),
                            // isDestructiveAction: true,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )
                        ],
                      ),
                    );
                  },
                  child: Customwidgets.autoSizeText(text: "Action Dialog "),
                  context: context,
                ),
                Customwidgets.CustomButton(
                  onPressed: () {
                    CustomIosDialogs().showAlertIosDialog(
                      context: context,
                      height: 400,
                      width: double.infinity,
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            radius: 50.0,
                          ),
                          SizedBox(height: 30.0),
                          Customwidgets.autoSizeText(
                            text:
                                "orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                            maxLines: 3,
                          ),
                          SizedBox(height: 30.0),
                          // CustomTextFiled(
                          //   hintText: "Enter Your Name",
                          //   controller: TextEditingController(),
                          //   onChanged: (value) {},
                          //   onSubmitted: (value) {},
                          //   validator: (value) =>
                          //       AppValidation.nameValidation(value),
                          //   width: 500,
                          // ),
                          CupertinoTextField(),
                          SizedBox(height: 30.0),
                          CupertinoButton(
                            child: Text("Submit"),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    );
                  },
                  child: Customwidgets.autoSizeText(text: "Custom Dialog"),
                  context: context,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
