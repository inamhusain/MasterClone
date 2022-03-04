import 'package:flutter/material.dart';
import 'package:flutter_master_temp/src/custom_widgets/custom_appBar.dart';
import 'package:flutter_master_temp/src/custom_widgets/custom_textFiled.dart';
import 'package:flutter_master_temp/src/custom_widgets/custom_widgets.dart';
import 'package:flutter_master_temp/src/utils/app_validations.dart';
import 'package:flutter_master_temp/src/utils/navigation_routes.dart';

class TextFiledScreens extends StatefulWidget {
  const TextFiledScreens({Key? key}) : super(key: key);

  @override
  State<TextFiledScreens> createState() => _TextFiledScreensState();
}

class _TextFiledScreensState extends State<TextFiledScreens> {
  final formKey = GlobalKey<FormState>();
  final ValueNotifier<bool> _isShowPassword = ValueNotifier<bool>(true);
  bool _isShowPasswords = true;
  TextEditingController passWord = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar().appBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomTextFiled(
                hintText: "Enter Your Name",
                controller: TextEditingController(),
                onChanged: (value) {},
                onSubmitted: (value) {},
                validator: (value) => AppValidation.nameValidation(value),
                width: 500,
              ),
              CustomTextFiled(
                hintText: "Enter an email",
                borderRadius: BorderRadius.circular(20.0),
                icon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                controller: TextEditingController(),
                onChanged: (value) {},
                onSubmitted: (value) {},
                validator: (value) => AppValidation.emailValidation(value),
                width: 500,
              ),
              CustomTextFiled(
                hintText: "Enter password",
                controller: passWord,
                isPassword: true,
                obscureText: _isShowPasswords,
                suffixIcon: _isShowPasswords == true
                    ? Icons.visibility_off
                    : Icons.visibility,
                onShowPassword: () {
                  setState(() {
                    _isShowPasswords = !_isShowPasswords;
                  });
                },
                onChanged: (value) {},
                onSubmitted: (value) {},
                validator: (value) => AppValidation.passwordValidation(value),
                width: 500,
              ),
              CustomTextFiled(
                hintText: "Enter mobile number",
                border: UnderlineInputBorder(),
                controller: TextEditingController(),
                onChanged: (value) {},
                onSubmitted: (value) {},
                validator: (value) => AppValidation.mobileNoValidation(value),
                width: 500,
              ),
              CustomTextFiled(
                hintText: "Enter address",
                controller: TextEditingController(),
                maxLines: 5,
                onChanged: (value) {},
                onSubmitted: (value) {},
                validator: (value) => AppValidation.addressValidation(value),
                width: 500,
              ),
              SizedBox(height: 20),
              Customwidgets.CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    print("validate");
                  }
                },
                context: context,
                child: Customwidgets.autoSizeText(
                  text: "Submit",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
