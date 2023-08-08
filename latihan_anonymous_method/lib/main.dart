import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "Ini adalah Text";

  void tombolDiTekan() {
    setState(() {
      message = "Tombol telah ditekan";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymous Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              ElevatedButton(
                  // anonymous method
                  onPressed: () {
                    // code
                    setState(() {
                      message = "Tombol telah ditekan";
                    });
                  },
                  child: Text("Tekan saya"))
            ],
          ),
        ),
      ),
    );
  }
}
