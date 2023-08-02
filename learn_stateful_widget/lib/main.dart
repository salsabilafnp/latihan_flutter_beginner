import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 0;
  void clickBtn() {
    setState(() {
      num += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                num.toString(),
                style: TextStyle(fontSize: 10 + num.toDouble()),
              ),
              ElevatedButton(
                child: Text("Tambah Bilangan"),
                onPressed: clickBtn,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
