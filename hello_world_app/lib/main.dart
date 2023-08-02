import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World App"),
        ),
        body: Center(
            child: Container(
                color: Colors.lightBlue,
                width: 150,
                height: 100,
                child: Text(
                  "This application is my first flutter app, hopefully I can be a Flutter Dev",
                  // maxLines: 2,
                  // overflow: TextOverflow.clip,
                  // softWrap: false,
                  // textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ))),
      ),
    );
  }
}
