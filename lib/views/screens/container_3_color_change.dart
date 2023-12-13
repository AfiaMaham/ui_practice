import 'package:flutter/material.dart';

void main() {
  runApp(ColorChange());
}

class ColorChange extends StatefulWidget {
  @override
  State<ColorChange> createState() => _ColorChangeState();
}

class _ColorChangeState extends State<ColorChange> {
  Color c1 = Colors.red;
  Color c2 = Colors.purple;
  Color c3 = Colors.green;
  Color? temp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 150,
                width: 150,
                color: c1,
              ),
              Container(
                height: 150,
                width: 150,
                color: c2,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 150,
            width: 150,
            color: c3,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    temp = c1;
                    c1 = c2;
                    c2 = c3;
                    c3 = temp!;
                  });
                },
                child: Container(
                  height: 40,
                  width: 155,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "Anti-Clockwise",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    temp = c1;
                    c1 = c3;
                    c3 = c2;
                    c2 = temp!;
                  });
                },
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "clockwise",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
