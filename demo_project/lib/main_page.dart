import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Latihan Media Query")),
      // body: Container(
      //   color: Colors.red,
      //   width: MediaQuery.of(context).size.width / 3,
      //   height: MediaQuery.of(context).size.height / 2,
      // ),
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(children: generateContainers())
          : Row(children: generateContainers()),
    );
  }

  List<Widget> generateContainers() {
    return [
      Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.green,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      ),
    ];
  }
}
