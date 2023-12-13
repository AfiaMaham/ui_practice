import 'package:flutter/material.dart';
import 'package:ui_practice/views/screens/signup_screen.dart';
import 'package:ui_practice/helpers/constants.dart';

void main() {
  runApp(LoginScreen());
}

class LoginScreen extends StatelessWidget {
  IconData arrowIcon = Icons.arrow_back_ios;
  IconData visibilityIcon = Icons.visibility_outlined;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColor.whiteColor,
        elevation: 0,
        // leadingWidth: 100,
        /* title: Text("My First Login Screen",style: TextStyle(
          color: Colors.black
        ),),*/
        leading: Icon(
          arrowIcon,
          color: AppColor.blackShade,
          size: 19,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 27),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Segoe UI"),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Image.asset(
                    "assets/images/Logo.png",
                    height: 66,
                    width: 131,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome back!",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontFamily: "Rubik",
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 43,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        hintText: "Email",
                        hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Segoe UI",
                          color: AppColor.grayDark,
                        ),
                        filled: true,
                        fillColor: AppColor.grayLight,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 43,
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontSize: 12,
                          fontFamily: "Segoe UI",
                          fontWeight: FontWeight.w400,
                          color: AppColor.grayDark,
                        ),
                        suffixIcon: Icon(
                          visibilityIcon,
                          color: AppColor.blackShade,
                        ),
                        fillColor: AppColor.grayLight,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: "Segoe UI",
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 43,
                    width: 264,
                    decoration: BoxDecoration(
                      color: AppColor.red,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: AppColor.whiteColor,
                            fontFamily: "Segoe UI",
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: AppColor.grayLight,
                          indent: 85,
                          endIndent: 6,
                          thickness: 1,
                        ),
                      ),
                      Text(
                        "or",
                        style: TextStyle(
                            color: AppColor.black,
                            fontFamily: "Segoe UI",
                            fontWeight: FontWeight.w400,
                            fontSize: 10),
                      ),
                      Expanded(
                        child: Divider(
                          color: AppColor.grayLight,
                          indent: 6,
                          endIndent: 85,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 37,
                        width: 138,
                        decoration: BoxDecoration(
                          color: AppColor.blueShade,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              "assets/images/facebook (8) 1.png",
                              height: 24,
                              width: 24,
                            ),
                            Center(
                              child: Text(
                                "Facebook",
                                style: TextStyle(
                                  color: AppColor.whiteColor,
                                  fontFamily: "Segoe UI",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 37,
                        width: 138,
                        decoration: BoxDecoration(
                          color: AppColor.black,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/images/ic_google.png",
                              height: 20,
                              width: 20,
                            ),
                            Center(
                              child: Text(
                                "Google",
                                style: TextStyle(
                                  color: AppColor.whiteColor,
                                  fontFamily: "Segoe UI",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 35),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account",
                    style: TextStyle(
                      color: AppColor.grayShade,
                      fontFamily: "Segoe UI",
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                  ),
                  VerticalDivider(
                    thickness: 1,
                    color: AppColor.grayShade,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signup');
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => SignupScreen(),
                      //   ),
                      // );
                    },
                    child: Hero(
                      tag: "first",
                      child: Text(
                        "Signup",
                        style: TextStyle(
                          color: AppColor.red,
                          fontFamily: "Segoe UI",
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
