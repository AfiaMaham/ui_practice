import 'package:flutter/material.dart';

void main() {
  runApp(ScreenTest());
}

class ScreenTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        shadowColor: Colors.black,
        elevation: 10,
        leading: Icon(Icons.visibility),
        title: Text('My First App'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          color: Colors.brown,
          child: Center(
            child: Container(
              height: 200,
              width: 200,
              color: Colors.black45,
              child: Center(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text('Afia'),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
