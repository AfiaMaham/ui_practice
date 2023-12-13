import 'package:flutter/material.dart';
import 'package:ui_practice/Widgets/text_and_style.dart';
import 'package:ui_practice/Widgets/text_form_field.dart';
import 'package:ui_practice/helpers/constants.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(RegisterScreen());
}

class RegisterScreen extends StatelessWidget {
  IconData arrowBack = Icons.arrow_back_ios;

  IconData arrowForward = Icons.arrow_forward;

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
          title: Align(
            alignment: Alignment.topLeft,
            child: TextAndStyle("Back to Login", 16, "Poppins Regular",
                FontWeight.w500, AppColor.deepPurple),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextAndStyle("Register", 32, "Poppins Regular",
                    FontWeight.w600, AppColor.black),
                SizedBox(height: 5),
                TextAndStyle(
                    "And start taking notes",
                    16,
                    "Poppins Regular",
                    FontWeight.w400,
                    AppColor.grayShade2),
                SizedBox(height: 20),
                TextAndStyle("Full Name", 16, "Poppins Regular",
                    FontWeight.w600, AppColor.black),
                SizedBox(height: 5),
                FieldOfText(
                  TextInputType.name,
                  "Example: John Doe",
                ),
                SizedBox(height: 20),
                TextAndStyle("Email Address", 16,
                    "Poppins Regular", FontWeight.w600, AppColor.black),
                SizedBox(height: 5),
                FieldOfText(
                  TextInputType.emailAddress,
                  "Example: johndoe@gmail.com",
                ),
                SizedBox(height: 20),
                TextAndStyle("Password", 16, "Poppins Regular",
                    FontWeight.w600, AppColor.black),
                SizedBox(height: 5),
                FieldOfText(TextInputType.text, "********", true),
                SizedBox(height: 20),
                TextAndStyle("Retype Password", 16,
                    "Poppins Regular", FontWeight.w600, AppColor.black),
                SizedBox(height: 5),
                FieldOfText(TextInputType.text, "********", true),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 54,
                  width: 328,
                  decoration: BoxDecoration(
                    color: AppColor.deepPurple,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 120,
                      ),
                      TextAndStyle("Register", 16, "Poppins Regular",
                          FontWeight.w500, AppColor.whiteColor),
                      SizedBox(
                        width: 100,
                      ),
                      Icon(
                        arrowForward,
                        color: AppColor.whiteColor,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        indent: 10,
                        endIndent: 10,
                        color: AppColor.grayLight,
                      ),
                    ),
                    TextAndStyle("Or", 12, "Poppins Regular",
                        FontWeight.w500, AppColor.grayShade3),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        indent: 10,
                        endIndent: 10,
                        color: AppColor.grayLight,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  height: 54,
                  width: 328,
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(30),
                    border:
                        Border.all(color: AppColor.grayShade3, width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/ic_google.png",
                        height: 24,
                        width: 24,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TextAndStyle(
                          "Register with Google",
                          16,
                          "Poppins Regular",
                          FontWeight.w500,
                          AppColor.black),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextAndStyle("Already have an account?", 16,
                        "Poppins Regular", FontWeight.w500, AppColor.deepPurple),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: TextAndStyle("Login here", 16, "Poppins Regular",
                          FontWeight.w500, AppColor.deepPurple),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
