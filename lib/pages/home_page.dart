import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog_app/models/catalog.dart';
import 'package:flutter_catalog_app/widgets/drawer.dart';
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
    //await Future.delayed(Duration(seconds: 5));
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
      backgroundColor: MyTheme.myCreamColor,    
       body: SafeArea(
         child: Container(           
           padding: Vx.m32,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               MyCatalogHeader(),  
               if(MyCatalogModel.product != null && MyCatalogModel.product.isNotEmpty)
               MyCatalogList().expand()
               else
               Center(child: CircularProgressIndicator(),)   
            ],
           ),
         ),
       ),
    );
  }
}



class MyCatalogHeader extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               "Catalog App".text.xl5.bold.color(MyTheme.myDarkBlue).make(),
               "Trending Products".text.xl2.make(),
            ],
           );
  }
}



class MyCatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //shrinkWrap: true,
      itemCount: MyCatalogModel.product.length,
      itemBuilder: (BuildContext context, int index){
        final catalog = MyCatalogModel.product[index];
        return MyCatalogItem(catalog: catalog,);
      }
      );
  }
}

class MyCatalogItem extends StatelessWidget {
  final Items catalog;
  const MyCatalogItem({Key key, @required this.catalog}) : assert(catalog != null), super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          MyProductImg(iMG: catalog.imageUrl,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.color(MyTheme.myDarkBlue).bold.make(),
                catalog.desc.text.textStyle(context.captionStyle).medium.make().py(8),
                10.heightBox,
                ButtonBar(
                  buttonPadding: EdgeInsets.all(0),
                  alignment: MainAxisAlignment.spaceAround,
                  children: [
                   "\$${catalog.price}".text.bold.lg.make(),
                   ElevatedButton(                     
                     style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                       shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(08)))
                     ),
                     onPressed: (){},
                     child: "Buy".text.lg.make()
                   ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ).white.rounded.square(150).make().py16();
  }
}


class MyProductImg extends StatelessWidget {
  final String iMG;
  const MyProductImg({Key key, @ required this.iMG}) : assert(iMG != null), super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Image.network(iMG).box.p20.color(MyTheme.myCreamColor).roundedSM.make().p16().w40(context);
  }
}