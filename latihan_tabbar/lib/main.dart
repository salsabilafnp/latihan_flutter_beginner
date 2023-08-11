import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      // indicatorColor: Colors.green,
      indicator: BoxDecoration(
        color: Colors.red,
        border: Border(
          top: BorderSide(
            color: Colors.purple,
            width: 5,
          ),
        ),
      ),
      tabs: [
        Tab(
          icon: Icon(Icons.home),
          text: "Home",
        ),
        Tab(
          icon: Icon(Icons.person),
          text: "Profile",
        ),
      ],
    );

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Contoh Tab Bar"),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                child: Container(color: Colors.amber, child: myTabBar)),
          ),
          body: TabBarView(
            children: [
              Center(child: Text('Halaman Beranda')),
              Center(child: Text('Halaman Profil')),
            ],
          ),
        ),
      ),
    );
  }
}
