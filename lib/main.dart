import 'package:flutter/material.dart';
import 'package:ui_practice/views/screens/Notes%20App/forgot__password.dart';
import 'package:ui_practice/views/screens/Notes%20App/login_screen.dart';
import 'package:ui_practice/views/screens/Notes%20App/new_password.dart';
import 'package:ui_practice/views/screens/Notes%20App/register_screen.dart';
import 'package:ui_practice/views/screens/Notes%20App/started_screen.dart';
import 'package:ui_practice/views/screens/Reset%20button.dart';
import 'package:ui_practice/views/screens/container_2_color_change.dart';
import 'package:ui_practice/views/screens/container_3_color_change.dart';
import 'package:ui_practice/views/screens/container_color_change.dart';
import 'package:ui_practice/views/screens/login_screen.dart';
import 'package:ui_practice/views/screens/round_containers.dart';
import 'package:ui_practice/views/screens/signup_screen.dart';
import 'package:ui_practice/views/screens/text_form_field_screen.dart';
import 'package:ui_practice/views/screens/type_of_word.dart';
import 'package:ui_practice/views/screens/white_black.dart';
import 'package:ui_practice/views/screens/screen_test.dart';
import 'package:ui_practice/views/screens/single_multi_child.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartedScreen(),
      // home: ScreenLogin(),
      // home: RegisterScreen(),
      // home: ForgotPasswordScreen(),
      // home: NewPasswordScreen(),

      // title: "UI Project",
      // home: SignupScreen(),
      // home: LoginScreen(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => LoginScreen(),
      //   '/signup': (context) => SignupScreen(),
      // },
      // home: TypeOfWord(),
      // home: TextFormFieldScreen(),
      // home: RoundContainers(),
      // home: WhiteBlack(),
      // home: ColorChange(),
      // home: ChangeColor(),
      // // home: ContainerColor(),
      // home: ResetButton(),
      // home: ScreenTest(),
      // home: SingleMultiChild(),
    );
  }
}
