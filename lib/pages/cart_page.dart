import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/pages/home_page.dart';
import 'package:flutter_catalog_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
class MyCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: "Cart".text.color(Theme.of(context).accentColor).make(),
        ),
      body: Column(
        children: [
          CartList().p32().expand(),
          Divider(color: Theme.of(context).accentColor,),
          MyCartTotal()
        ],
      ),
      

    );
  }
}



class CartList extends StatefulWidget {  
  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index){
        return ListTile(
          leading: Icon(Icons.done, color: Theme.of(context).buttonColor,),
          trailing: IconButton(
            onPressed: (){},
             icon: Icon(Icons.remove_circle_outline, color: Theme.of(context).buttonColor,)
             ),
          title: "Item One".text.color(Theme.of(context).accentColor).make(),
        );
      }
      
      );
  }
}




class MyCartTotal extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${999}".text.xl5.color(Theme.of(context).accentColor).make(),
          30.widthBox,
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14)
              )),
              
              backgroundColor: MaterialStateProperty.all(Theme.of(context).buttonColor)
            ),            
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  duration: Duration(seconds: 5),
                  content: "Buying Not Supported yet.\n\nSoon I'll Add Payment Gateway\nRegards,\n                    Aizaz".text.make(),
                action: SnackBarAction(
                  textColor: Colors.white,
                  label: "Go to Home",
                   onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                   }),
                )
              );
            },
             child: "Buy".text.xl3.white.make()
             ).wh(150, 50),
        ],
      ),
    );
  }
}