import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);

  @override
  final int days = 30;
  final String name = "Aizaz";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Catalog App",
          ),
        ),
      ),
      body: Material(
        child: Center(
          child: Container(
            child: Text(
              "Welcome to $days days of the Flutter $name",
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: UserAccountsDrawerHeader(
          accountName: Text("Aizaz Haider"),
          accountEmail: Text("aizazisonline@gmail.com"),
          currentAccountPicture: CircleAvatar(
            child: Icon(Icons.ac_unit),
          ),
        ),
      ),
    );
  }
}
