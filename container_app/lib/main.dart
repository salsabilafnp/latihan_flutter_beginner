import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Container"),
        ),
        body: Container(
          color: Colors.blueGrey,
          margin: EdgeInsets.fromLTRB(5, 10, 2.5, 15),
          padding: EdgeInsets.only(top: 15),
          // padding: EdgeInsets.fromLTRB(5, 10, 2, 5),
          child: Container(
            // color: Colors.blueAccent,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Colors.blueGrey, Colors.lightBlue])),
          ),
        ),
      ),
    );
  }
}
