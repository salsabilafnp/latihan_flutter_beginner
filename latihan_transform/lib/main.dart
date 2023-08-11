import 'package:flutter/material.dart';
import 'package:latihan_transform/colorful_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Colorful Button"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColorfulButton(Colors.red, Colors.blue, Icons.home),
              ColorfulButton(Colors.orange, Colors.green, Icons.computer),
              ColorfulButton(Colors.green, Colors.orange, Icons.adb),
              ColorfulButton(Colors.blue, Colors.red, Icons.cloud),
            ],
          ),
        ),
      ),
    );
  }
}
