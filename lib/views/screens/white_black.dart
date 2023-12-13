import 'package:flutter/material.dart';

void main() {
  runApp(WhiteBlack());
}

class WhiteBlack extends StatefulWidget {
  @override
  State<WhiteBlack> createState() => _WhiteBlackState();
}

class _WhiteBlackState extends State<WhiteBlack> {
  Color a = Colors.white;
  Color b = Colors.black;
  Color? temp;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: a,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 150,
                width: 150,
                color: b,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  temp = a;
                  a = b;
                  b = temp!;
                });
              },
              child: Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    "Press",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
