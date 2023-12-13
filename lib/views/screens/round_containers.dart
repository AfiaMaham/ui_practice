import 'package:flutter/material.dart';

void main() {
  runApp(RoundContainers());
}

class RoundContainers extends StatefulWidget {
  @override
  State<RoundContainers> createState() => _RoundContainersState();
}

class _RoundContainersState extends State<RoundContainers> {
  Color c1 = Colors.red;
  Color c2 = Colors.orange;
  Color c3 = Colors.blue;
  Color c4 = Colors.green;
  Color c5 = Colors.purple;
  Color c6 = Colors.yellow;
  Color c7 = Colors.teal;
  Color c8 = Colors.amber;
  Color c9 = Colors.blueAccent;
  Color c10 = Colors.brown;
  Color c11 = Colors.deepOrange;
  Color c12 = Colors.cyanAccent;
  Color c13 = Colors.lightGreenAccent;
  Color c14 = Colors.grey;
  Color c15 = Colors.pink;
  Color c16 = Colors.redAccent;
  Color c17 = Colors.deepPurpleAccent;
  Color c18 = Colors.amberAccent;
  Color? temp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: c1,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: c2,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: c3,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: c4,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: c5,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: c6,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: c7,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: c8,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c9,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c10,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c11,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c12,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c1,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c7,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c13,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c3,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c5,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c10,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c6,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c14,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c15,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      temp = c17;
                      c17 = c1;
                      c1 = c16;
                      c16 = c2;
                      c2 = c15;
                      c15 = c3;
                      c3 = c14;
                      c14 = c4;
                      c4 = c13;
                      c13 = c5;
                      c5 = c12;
                      c12 = c6;
                      c6 = c11;
                      c11 = c7;
                      c7 = c10;
                      c10 = c8;
                      c8 = c9;
                      c9 = temp!;
                    });
                  },
                  child: Container(
                    height: 45,
                    width: 85,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Press',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c16,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c5,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c13,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c7,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c1,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c10,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c11,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c17,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c15,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c2,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c12,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c18,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: c4,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: c3,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: c17,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: c16,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: c13,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: c15,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: c1,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: c8,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: c2,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
