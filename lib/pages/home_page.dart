import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);

  @override
  final int days = 30;
  final String name = "Aizaz";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
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
              "Welcome to $days days of Flutter $name",
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
