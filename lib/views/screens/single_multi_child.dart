import 'package:flutter/material.dart';

void main() {}

class SingleMultiChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 5,
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.red,
                    child: Center(
                      child: Text('Red'),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.teal,
                    child: Center(
                      child: Text('Teal'),
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      'Black',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.green,
                    child: Center(
                      child: Text('Green'),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.brown,
                    child: Center(
                      child: Text('Brown'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
