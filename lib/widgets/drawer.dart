import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/pages/home_page.dart';
import 'package:flutter_catalog_app/pages/theme_page.dart';
import 'package:flutter_catalog_app/pages/user_profile.dart';

class MyDrawer extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return Drawer(            
      child: Container(
        color: Theme.of(context).buttonColor,
        child: ListView(
          children: [
            DrawerHeader(                 
              padding: EdgeInsets.all(0),  
              margin: EdgeInsets.all(0),       
               child: UserAccountsDrawerHeader(    
                 decoration: BoxDecoration(
                   color: Theme.of(context).buttonColor
                 ),                         
                 accountEmail: Text("aizazisonline@gmail.com"),
                 accountName: Text("Aizaz Haider"),
                //  currentAccountPicture: Image.asset("assets/images/11.png", width: 10,),
                 currentAccountPicture:  CircleAvatar(
                   radius: 11,
                   backgroundImage: AssetImage("assets/images/11.png"),
                   backgroundColor: Colors.white,
                 ),
            ),                          
            ),  
            Divider(color: Colors.white,height: 5.0 ,),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              leading: Icon(CupertinoIcons.home, color: Colors.white,),
              title: Text("Home", textScaleFactor: 1.3,  style: TextStyle(color: Colors.white,),),
              ),
            ListTile(
            leading: Icon(CupertinoIcons.person, color: Colors.white,),
            title: Text("My Account", textScaleFactor: 1.3,  style: TextStyle(color: Colors.white,),),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ThemePage()));
              },
            leading: Icon(CupertinoIcons.settings, color: Colors.white,),
            title: Text("Settings", textScaleFactor: 1.3,  style: TextStyle(color: Colors.white,),),
            ),
            ListTile( 
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => UserProfilePage()));
              },             
            leading: Icon(Icons.help, color: Colors.white,),
            title: Text("About", textScaleFactor: 1.3,  style: TextStyle(color: Colors.white,),),
            ),
            
          ],
        ),
      ),
    );
  }
}