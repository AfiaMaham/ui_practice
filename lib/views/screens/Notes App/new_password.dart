import 'package:flutter/material.dart';
import 'package:ui_practice/Widgets/text_form_field.dart';
import 'package:ui_practice/helpers/constants.dart';
import 'package:flutter/services.dart';
import '../../../Widgets/text_and_style.dart';
import 'login_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(NewPasswordScreen());
}

class NewPasswordScreen extends StatelessWidget {
  IconData arrowBack = Icons.arrow_back_ios;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColor.whiteColor,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Sizer(builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColor.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColor.whiteColor,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScreenLogin(),
                ),
              );
            },
            child: Icon(
              arrowBack,
              size: 20,
              color: AppColor.deepPurple,
            ),
          ),
          title: TextAndStyle("Back to Login", 16, "Poppins Regular",
              FontWeight.w500, AppColor.deepPurple),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              TextAndStyle("Create a New Password", 32, "Poppins Regular",
                  FontWeight.w600, AppColor.black),
              SizedBox(height: 20),
              TextAndStyle(
                  "Your new password should be different from the previous password",
                  16,
                  "Poppins Regular",
                  FontWeight.w400,
                  AppColor.grayShade2),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: TextAndStyle("New Password", 16, "Poppins Regular",
                    FontWeight.w500, AppColor.black),
              ),
              SizedBox(height: 10),
              FieldOfText(
                TextInputType.text,
                "********",
                true,
                "min.8 characters, combination of 0-9, A-Z, a-z",
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: TextAndStyle("Retype New Password", 16,
                    "Poppins Regular", FontWeight.w500, AppColor.black),
              ),
              SizedBox(height: 10),
              FieldOfText(TextInputType.text, "********", true),
              SizedBox(height: 200),
              Container(
                height: 54,
                width: 328,
                decoration: BoxDecoration(
                  color: AppColor.deepPurple,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: TextAndStyle("Create Password", 16, "Poppins Regular",
                      FontWeight.w500, AppColor.whiteColor),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
