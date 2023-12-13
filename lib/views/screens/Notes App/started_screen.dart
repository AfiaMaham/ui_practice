import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_practice/helpers/constants.dart';
import 'package:sizer/sizer.dart';
import '../../../Widgets/text_and_style.dart';
import 'login_screen.dart';

void main() {
  runApp(StartedScreen());
}

class StartedScreen extends StatelessWidget {
  IconData arrowForward = Icons.arrow_forward;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColor.deepPurple,
      statusBarIconBrightness: Brightness.light,
    ));
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return Scaffold(
          backgroundColor: AppColor.deepPurple,
          body: Column(
            children: [
              SizedBox(height: 110),
              Image.asset("assets/images/Illustration.png"),
              SizedBox(height: 25),
              TextAndStyle(
                  "Jot Down anything you want to achieve, today or in the future",
                  20,
                  "Poppins Bold",
                  FontWeight.w700,
                  AppColor.whiteColor),
              SizedBox(
                height: 180,
              ),
              Container(
                height: 54,
                width: 328,
                decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 90),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScreenLogin(),
                          ),
                        );
                      },
                      child: TextAndStyle(
                          "Let's Get Started",
                          16,
                          "Poppins Regular",
                          FontWeight.w500,
                          AppColor.deepPurple),
                    ),
                    SizedBox(width: 70),
                    Icon(
                      arrowForward,
                      color: AppColor.deepPurple,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
