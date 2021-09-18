import 'package:flutter_catalog_app/models/catalog.dart';
import 'package:flutter_catalog_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

class HomeDetailPage extends StatelessWidget { 
  final Items catalog;
  const HomeDetailPage({Key key, @ required this.catalog}) : assert ( catalog != null ),super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar:ButtonBar(        
                  buttonPadding: EdgeInsets.all(16),
                  alignment: MainAxisAlignment.spaceAround,
                  children: [
                   "\$${catalog.price}".text.bold.xl4.make(),
                   ElevatedButton(                     
                     style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                       shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(08)))
                     ),
                     onPressed: (){},
                     child: "Buy".text.xl3.make().p1()
                   ).wh(120, 45),
                  ],
                ),
      backgroundColor: MyTheme.myCreamColor,
      body: SafeArea(        
        //bottom: false,
        child: Column(      
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.imageUrl)
              ).p16().h32(context),
            Expanded(
              child: VxArc(
                edge: VxEdge.TOP,
                arcType: VxArcType.CONVEY,
                height: 30,
                child: Container(
                  width: context.screenWidth,
                  color: Colors.white,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      catalog.name.text.color(MyTheme.myDarkBlue).xl4.bold.make(),
                      catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                    ],
                  ).p64(),
              
                ),
              ),
            ),
          ],  
        ),
      ),
    );
  }
}