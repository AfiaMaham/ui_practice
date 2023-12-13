import 'package:flutter/material.dart';
import 'package:ui_practice/Widgets/text_form_field.dart';
import 'package:ui_practice/helpers/constants.dart';
import 'package:flutter/services.dart';
import '../../../Widgets/text_and_style.dart';
import 'new_password.dart';
import 'package:sizer/sizer.dart';

class ForgotPasswordScreen extends StatelessWidget {
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
              Navigator.pop(context);
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
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Image.asset("assets/images/Illustration.png"),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: TextAndStyle("Forgot Password", 32, "Poppins Regular",
                    FontWeight.w600, AppColor.black),
              ),
              SizedBox(height: 15),
              TextAndStyle(
                  "Inset your email address to receive a code for creating a new password",
                  16,
                  "Poppins Regular",
                  FontWeight.w400,
                  AppColor.grayShade2),
              SizedBox(height: 40),
              Align(
                alignment: Alignment.centerLeft,
                child: TextAndStyle("Email Address", 16, "Poppins Regular",
                    FontWeight.w400, AppColor.black),
              ),
              SizedBox(height: 10),
              FieldOfText(
                TextInputType.emailAddress,
                "anto_michael@gmail.com",
              ),
              SizedBox(height: 80),
              Container(
                height: 54,
                width: 328,
                decoration: BoxDecoration(
                  color: AppColor.deepPurple,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewPasswordScreen(),
                        ),
                      );
                    },
                    child: TextAndStyle("Send Code", 16, "Poppins Regular",
                        FontWeight.w500, AppColor.whiteColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
