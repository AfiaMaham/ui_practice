import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_practice/helpers/constants.dart';
import 'package:ui_practice/views/screens/Notes%20App/register_screen.dart';
import 'package:sizer/sizer.dart';
import '../../../Widgets/text_and_style.dart';
import '../../../Widgets/text_form_field.dart';
import 'forgot__password.dart';

void main() {
  runApp(ScreenLogin());
}

class ScreenLogin extends StatelessWidget {
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
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 50),
              Align(
                alignment: Alignment.centerLeft,
                child: TextAndStyle("Let's Login", 32, "Poppins Regular",
                    FontWeight.w600, AppColor.black),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: TextAndStyle("And notes your idea", 16,
                    "Poppins Regular", FontWeight.w400, AppColor.grayShade2),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: TextAndStyle("Email Address", 16, "Poppins Regular",
                    FontWeight.w500, AppColor.black),
              ),
              SizedBox(height: 5),
              SizedBox(
                height: 54,
                child: FieldOfText(
                  TextInputType.emailAddress,
                  "Example: johndoe@gmail.com",
                ),
              ),
              SizedBox(height: 35),
              Align(
                alignment: Alignment.centerLeft,
                child: TextAndStyle("Password", 16, "Poppins Regular",
                    FontWeight.w500, AppColor.black),
              ),
              SizedBox(height: 5),
              SizedBox(
                height: 54,
                child: FieldOfText(TextInputType.name, "********"),
              ),
              SizedBox(height: 5),
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotPasswordScreen(),
                      ),
                    );
                  },
                  child: TextAndStyle(
                      "Forgot Password",
                      16,
                      "Poppins Regular",
                      FontWeight.w500,
                      AppColor.deepPurple,
                      TextDecoration.underline),
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 54,
                width: 328,
                decoration: BoxDecoration(
                  color: AppColor.deepPurple,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 140),
                    TextAndStyle("Login", 16, "Poppins Regular",
                        FontWeight.w500, AppColor.whiteColor),
                    SizedBox(width: 100),
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
                      indent: 20,
                      endIndent: 10,
                      color: AppColor.grayLight,
                    ),
                  ),
                  TextAndStyle("Or", 12, "Poppins Regular", FontWeight.w500,
                      AppColor.grayShade2),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      indent: 10,
                      endIndent: 20,
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
                  border: Border.all(color: AppColor.grayShade3, width: 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/ic_google.png",
                      height: 24,
                      width: 24,
                    ),
                    SizedBox(width: 15),
                    TextAndStyle("Login with Google", 16, "Poppins Regular",
                        FontWeight.w500, AppColor.black),
                  ],
                ),
              ),
              SizedBox(height: 45),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextAndStyle("Don't have any account?", 16, "Poppins Regular",
                      FontWeight.w500, AppColor.deepPurple),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                    child: TextAndStyle("Register here", 16, "Poppins Regular",
                        FontWeight.w500, AppColor.deepPurple),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
