import 'package:flutter/material.dart';
import 'package:ui_practice/helpers/constants.dart';

void main() {
  runApp(SignupScreen());
}

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  IconData arrowIcon = Icons.arrow_back_ios;
  bool isHidden = true;
  IconData visibilityIcon = Icons.visibility_outlined;
  IconData visibilityHiddenIcon = Icons.visibility_off_outlined;

  @override
  Widget build(BuildContext context) {
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
            arrowIcon,
            color: AppColor.blackShade,
            size: 17,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Hero(
                      tag: "first",
                      child: Text(
                        "Signup",
                        style: TextStyle(
                          fontFamily: "Segoe UI",
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  "assets/images/Logo.png",
                  height: 66,
                  width: 131,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Let's Get It Started!",
                  style: TextStyle(
                    color: AppColor.black,
                    fontFamily: "Rubik",
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 43,
                  width: 325,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "First Name",
                      hintStyle: TextStyle(
                        color: AppColor.grayDark,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        fontFamily: "Segoe UI",
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
                  height: 25,
                ),
                SizedBox(
                  height: 43,
                  width: 325,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Last Name",
                      hintStyle: TextStyle(
                        color: AppColor.grayDark,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        fontFamily: "Segoe UI",
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
                  height: 25,
                ),
                SizedBox(
                  height: 43,
                  width: 325,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(
                        color: AppColor.grayDark,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        fontFamily: "Segoe UI",
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
                  height: 25,
                ),
                SizedBox(
                  height: 43,
                  width: 325,
                  child: TextFormField(
                    obscureText: isHidden,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {});
                          isHidden = !isHidden;
                        },
                        icon: Icon(
                          isHidden ? visibilityIcon : visibilityHiddenIcon,
                          color: AppColor.black,
                        ),
                      ),
                      suffixStyle: TextStyle(
                        color: AppColor.black,
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: AppColor.grayDark,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        fontFamily: "Segoe UI",
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
                  height: 35,
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
                      "Signup",
                      style: TextStyle(
                        color: AppColor.whiteColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Segoe UI",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        indent: 95,
                        endIndent: 5,
                        color: AppColor.grayLight,
                      ),
                    ),
                    Text(
                      "or",
                      style: TextStyle(
                        color: AppColor.black,
                        fontFamily: "Segoe UI",
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        indent: 5,
                        endIndent: 95,
                        color: AppColor.grayLight,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/images/facebook (8) 1.png",
                            height: 24,
                            width: 24,
                          ),
                          Text(
                            "Facebook",
                            style: TextStyle(
                              color: AppColor.whiteColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Segoe UI",
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
                            width: 20,
                            height: 20.59,
                          ),
                          Text(
                            "Google",
                            style: TextStyle(
                              color: AppColor.whiteColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Segoe UI",
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
          Padding(
            padding: EdgeInsets.only(bottom: 28),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account",
                    style: TextStyle(
                      color: AppColor.grayShade,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Segoe UI",
                    ),
                  ),
                  VerticalDivider(
                    color: AppColor.grayShade,
                    thickness: 1,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                      color: AppColor.red,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Segoe UI",
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
