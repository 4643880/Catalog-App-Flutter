import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog_app/models/catalog.dart';
import 'package:flutter_catalog_app/pages/cart_page.dart';
import 'package:flutter_catalog_app/pages/user_profile.dart';
import 'package:flutter_catalog_app/widgets/drawer.dart';
import 'package:flutter_catalog_app/widgets/home_widgets/catalog_header.dart';
import 'package:flutter_catalog_app/widgets/home_widgets/catalog_list.dart';
import 'package:flutter_catalog_app/widgets/items_widget.dart';
import 'package:flutter_catalog_app/widgets/themes.dart';
import "package:velocity_x/velocity_x.dart";

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // Dummy List Generator Starts Here
  //final bravo = List.generate(20, (index) => MyCatalogModel.product[0]);
  // Init State Starts Here  
  @override
  void initState() {    
    super.initState();
    myloadData();
  }

  // Using Function MyloadData for init 
  myloadData() async {    
    await Future.delayed(Duration(seconds: 5));
      var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
      var myDecodedData = jsonDecode(catalogJson); 
      var productDataFromDecoded = myDecodedData["products"];

      // Dummy list for Json Mapping
      List<Items> mylist = List.from(productDataFromDecoded).map<Items>((item) => Items.fromMap(item)).toList();
      
      // It's working will delete the above list later
      MyCatalogModel.product = List.from(productDataFromDecoded).map<Items>((item) => Items.fromMap(item)).toList();
      setState(() { }); /* Most People Search it on Stackoverflow */
      //      

  }

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      drawer: MyDrawer(),
      bottomNavigationBar: Container(        
        color: Theme.of(context).cardColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonBar(          
              children: [
                "Designed By Aizaz Haider".text.color(Theme.of(context).accentColor).make(),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Theme.of(context).buttonColor)
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UserProfilePage()));
                  },
                   child: "About Me".text.make()).wh(100, 25).pOnly(left: 30, top: 06)
                                
              ],
            ),
          ],
        ),
      ),   
       backgroundColor: Theme.of(context).canvasColor,           
      floatingActionButton: FloatingActionButton(        
        backgroundColor: Theme.of(context).buttonColor,
      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MyCartPage())),
      child: Icon(CupertinoIcons.cart, color: MyTheme.myCreamColor,),
      ),         
       body: SafeArea(
         bottom: false,
         child: Container(           
           padding: Vx.mOnly( right: 32, left: 32),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,             
             children: [
               MyCatalogHeader().pOnly(bottom: 20,),  
               if(MyCatalogModel.product != null && MyCatalogModel.product.isNotEmpty)
               MyCatalogList().expand()               
               else
               CircularProgressIndicator().centered().expand(),  
            ],
           ),
         ).pOnly(bottom: 00),
       ),
    );
  }
}







