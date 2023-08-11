import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Contoh Tab Bar"),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  child: Image(
                    image: NetworkImage(
                        "https://cdn.shopify.com/s/files/1/1061/1924/files/Hugging_Face_Emoji_2028ce8b-c213-4d45-94aa-21e1a0842b4d_large.png?15202324258887420558"),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.computer),
                ),
                Tab(
                  text: "News",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text('Halaman Home')),
              Center(child: Text('Halaman Test')),
              Center(child: Text('Halaman Computer')),
              Center(child: Text('Halaman News')),
            ],
          ),
        ),
      ),
    );
  }
}
