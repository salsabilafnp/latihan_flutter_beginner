import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Image"),
        ),
        body: Center(
            child: Container(
          color: Colors.black,
          width: 200,
          height: 200,
          padding: EdgeInsets.all(3),
          child: Image(
            // image from network
            // image: NetworkImage(
            //     "https://www.pngdownload.id/png-96psh0/download.html"),
            image: AssetImage("images/test.jpg"),
            fit: BoxFit.cover,
            repeat: ImageRepeat.repeat,
          ),
        )),
      ),
    );
  }
}
