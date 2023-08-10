import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Latihan TextField"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.lightBlue[50],
                filled: true,
                // prefix widget
                // prefix: Container(
                //   width: 5,
                //   height: 5,
                //   color: Colors.red,
                // ),
                // icon di luar tf
                icon: Icon(Icons.person),
                // suffix widget
                // suffix: Container(
                //   width: 5,
                //   height: 5,
                //   color: Colors.red,
                // ),
                // text di atas tf
                labelText: "Nama Lengkap",
                // clue
                hintText: "Nama Lengkap Anda Tanpa Gelar",
                // icon di dalam tf
                // prefixIcon: Icon(Icons.person),
                // text di dalam tf
                // prefixText: "Name : ",
                // style untuk text di dalam tf
                // prefixStyle:
                //     TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              // maxLength: 5,
              // maxLines: 1,
              // obscureText: true,
              onChanged: (value) {
                setState(() {});
              },
              controller: controller,
            ),
            Text(controller.text)
          ],
        ),
      ),
    ));
  }
}
