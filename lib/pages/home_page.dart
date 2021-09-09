import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog_app/models/catalog.dart';
import 'package:flutter_catalog_app/widgets/drawer.dart';
import 'package:flutter_catalog_app/widgets/items_widget.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // List Generator Starts Here
  final bravo = List.generate(20, (index) => MyCatalogModel.product[0]);
  // Init State Starts Here  
  @override
  void initState() {    
    super.initState();
    MyloadData();
  }

  // Using Function MyloadData for init 
  MyloadData() async {
      var catalog_json = await rootBundle.loadString("assets/files/catalog.json");
      var myDecodedData = jsonDecode(catalog_json);
      print(myDecodedData);
      var Product_Data_From_Decoded = myDecodedData["products"];
      print(Product_Data_From_Decoded);      
  }

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
