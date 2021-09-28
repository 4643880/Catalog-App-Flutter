import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/main.dart';
import 'package:velocity_x/velocity_x.dart';

class ThemePage extends StatefulWidget {  
  @override
  _ThemePageState createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  final changeTheme = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(backgroundColor: Theme.of(context).canvasColor,
      title: "Themes".text.color(Theme.of(context).accentColor).make(),
      centerTitle: true,
      ),
      body: Material(
        child: Container(
          width: double.infinity,
          color: Colors.black12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  "Dark Theme".text.color(Theme.of(context).accentColor).xl4.make(),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Theme.of(context).buttonColor)
                    ),
                    onPressed: (){                    
                    
                  },
                   child: "Enable".text.make())
                ],
              ),
              Divider(
                color: Theme.of(context).accentColor,
                height: 50,
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  "Light Theme".text.color(Theme.of(context).accentColor).xl4.make(),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Theme.of(context).buttonColor)
                    ),
                    onPressed: (){                   

                  },
                   child: "Enable".text.make())
                ],
              ),
              Divider(
                color: Theme.of(context).accentColor,
                height: 50,
                thickness: 2,
              ),
            ],
          ).p32(),
        ),
        
      )
    );
  }
}