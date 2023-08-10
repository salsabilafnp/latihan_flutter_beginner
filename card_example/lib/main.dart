import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              buildCard(Icons.account_box, "Account Box"),
              buildCard(Icons.adb, "Serangga Android")
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            child: Icon(iconData),
          ),
          Text(text)
        ],
      ),
    );
  }
}
