import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/models/catalog.dart';
import 'package:flutter_catalog_app/widgets/drawer.dart';
import 'package:flutter_catalog_app/widgets/items_widget.dart';

class HomePage extends StatelessWidget {

  final bravo = List.generate(20, (index) => MyCatalogModel.product[0]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.deepPurple,
        title: Center(
          child: Text(
            "Catalog App",
          ),
        ),
      ),      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: bravo.length,
          itemBuilder: (BuildContext context , int index){
            return MyItemWidget(
              alpha: bravo[0],
            );
          }
          ),
      ),
      drawer: MyDrawer(),
    );
  }
}
