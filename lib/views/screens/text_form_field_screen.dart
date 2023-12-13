import 'package:flutter/material.dart';

void main() {
  runApp(TextFormFieldScreen());
}

class TextFormFieldScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SizedBox(
          width: 350,
          child: TextFormField(
            maxLength: 4,
            keyboardType: TextInputType.number,
            obscureText: true,
            obscuringCharacter: "*",
            decoration: InputDecoration(
              counter: SizedBox(),
              hintText: "Name",
              hintStyle: TextStyle(),
              label: Text("name"),
              helperText: "Name",
              suffix: Icon(Icons.add),
              // suffixIcon: Icon(Icons.ac_unit),
              prefix: Icon(Icons.access_alarm_sharp),
              // prefixIcon: Icon(Icons.accessibility_new_rounded),
              fillColor: Colors.green,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.purple,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.purple,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
