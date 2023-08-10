import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Back to Main Page"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
