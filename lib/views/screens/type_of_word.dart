import 'package:flutter/material.dart';

void main() {
  runApp(TypeOfWord());
}

class TypeOfWord extends StatefulWidget {
  @override
  State<TypeOfWord> createState() => _TypeOfWordState();
}

class _TypeOfWordState extends State<TypeOfWord> {
  final _WordController = TextEditingController();
  String number = " ";
  String even = " ";
  String odd = " ";
  String prime = " ";
  String composite = " ";
  String letter = " ";
  String smallLetter = " ";
  String capitalLetter = " ";
  String character = " ";
  Color c1 = Colors.red;
  Color c2 = Colors.red;
  Color c3 = Colors.red;
  Color c4 = Colors.red;
  Color c5 = Colors.red;
  Color c6 = Colors.red;
  Color c7 = Colors.red;
  Color c8 = Colors.red;
  Color c9 = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 70,
                ),
                // RichText(
                //   text: TextSpan(
                //       text: "Number",
                //       style: TextStyle(
                //         fontSize: 25,
                //         color: Colors.red,
                //         fontWeight: FontWeight.bold,
                //       ),
                //       children: [
                //         TextSpan(
                //             text: "Hello",
                //             style: TextStyle(
                //               color: Colors.teal,
                //               fontSize: 18,
                //             )),
                //         TextSpan(text: "Hi"),
                //         TextSpan(text: "Wow"),
                //       ]),
                // ),
                RichText(
                  text: TextSpan(
                      text: "Number:  ",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "$number",
                        )
                      ]),
                ),
                // Text(
                //   "Number:  $number",
                //   style: TextStyle(
                //     fontSize: 25,
                //   ),
                // ),
                // Text(
                //   "",
                //   style: TextStyle(
                //     fontSize: 25,
                //     color: c1,
                //   ),
                // ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Even:  ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "$even",
                  style: TextStyle(
                    fontSize: 25,
                    color: c2,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Odd:  ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "$odd",
                  style: TextStyle(
                    fontSize: 25,
                    color: c3,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Prime:  ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "$prime",
                  style: TextStyle(
                    fontSize: 25,
                    color: c4,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Composite:  ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "$composite",
                  style: TextStyle(
                    fontSize: 25,
                    color: c5,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Letter:  ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "$letter",
                  style: TextStyle(
                    fontSize: 25,
                    color: c6,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Capital letter:  ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "$capitalLetter",
                  style: TextStyle(
                    fontSize: 25,
                    color: c7,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Small letter:  ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "$smallLetter",
                  style: TextStyle(
                    fontSize: 25,
                    color: c8,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Special character:  ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "$character",
                  style: TextStyle(
                    fontSize: 25,
                    color: c9,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 355,
              child: TextFormField(
                keyboardType: TextInputType.name,
                controller: _WordController,
                maxLength: 3,
                decoration: InputDecoration(
                  counter: SizedBox(),
                  hintText: "Enter any letter, number or special character",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.teal,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    findWord();
                  });
                },
                child: Text(
                  "Save",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                )),
          ],
        ),
      ),
    );
  }

  void findWord() {
    String word = _WordController.text;
    if (word.codeUnitAt(0) >= 65 && word.codeUnitAt(0) <= 90) {
      number = "No";
      even = "No";
      odd = "No";
      prime = "No";
      composite = "No";
      letter = "Yes";
      capitalLetter = "Yes";
      smallLetter = 'No';
      character = "No";
      c1 = Colors.red;
      c2 = Colors.red;
      c3 = Colors.red;
      c4 = Colors.red;
      c5 = Colors.red;
      c6 = Colors.green;
      c7 = Colors.green;
      c8 = Colors.red;
      c9 = Colors.red;
    } else if (word.codeUnitAt(0) >= 97 && word.codeUnitAt(0) <= 122) {
      number = "No";
      even = "No";
      odd = "No";
      prime = "No";
      composite = "No";
      letter = "Yes";
      capitalLetter = "No";
      smallLetter = 'Yes';
      character = "No";
      c1 = Colors.red;
      c2 = Colors.red;
      c3 = Colors.red;
      c4 = Colors.red;
      c5 = Colors.red;
      c6 = Colors.green;
      c7 = Colors.red;
      c8 = Colors.green;
      c9 = Colors.red;
    } else if (word.codeUnitAt(0) >= 33 && word.codeUnitAt(0) <= 47 ||
        word.codeUnitAt(0) >= 58 && word.codeUnitAt(0) <= 64 ||
        word.codeUnitAt(0) >= 91 && word.codeUnitAt(0) <= 96 ||
        word.codeUnitAt(0) >= 123 && word.codeUnitAt(0) <= 126) {
      letter = "No";
      smallLetter = 'No';
      capitalLetter = "No";
      number = "No";
      even = "No";
      odd = "No";
      prime = "No";
      composite = "No";
      character = "Yes";
      c1 = Colors.red;
      c2 = Colors.red;
      c3 = Colors.red;
      c4 = Colors.red;
      c5 = Colors.red;
      c6 = Colors.red;
      c7 = Colors.red;
      c8 = Colors.red;
      c9 = Colors.green;
    } else if (int.parse(word) >= 1 || int.parse(word) <= 1000) {
      number = 'Yes';
      letter = "No";
      capitalLetter = "No";
      smallLetter = 'No';
      character = "No";
      c1 = Colors.green;
      c6 = Colors.red;
      c7 = Colors.red;
      c8 = Colors.red;
      c9 = Colors.red;
      if (int.parse(word) % 2 == 0) {
        even = "Yes";
        odd = "No";
        c2 = Colors.green;
        c3 = Colors.red;
        bool isPrime = true;
        for (int i = 2; i < int.parse(word); i++) {
          if (int.parse(word) % i == 0) {
            isPrime = false;
          }
        }
        if (isPrime) {
          prime = "Yes";
          composite = "No";
          c4 = Colors.green;
          c5 = Colors.red;
        } else {
          prime = "No";
          composite = "Yes";
          c4 = Colors.red;
          c5 = Colors.green;
        }
      } else if (int.parse(word) % 2 != 0) {
        even = "No";
        odd = "Yes";
        c2 = Colors.red;
        c3 = Colors.green;
        bool isPrime = true;
        for (int i = 2; i < int.parse(word); i++) {
          if (int.parse(word) % i == 0) {
            isPrime = false;
          }
        }
        if (isPrime) {
          prime = "Yes";
          composite = "No";
          c4 = Colors.green;
          c5 = Colors.red;
        } else {
          prime = "No";
          composite = "Yes";
          c4 = Colors.red;
          c5 = Colors.green;
        }
      }
    }
  }
}
