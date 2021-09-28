import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/pages/cart_page.dart';
import 'package:flutter_catalog_app/pages/home_details.dart';
import 'package:flutter_catalog_app/pages/home_page.dart';
import 'package:flutter_catalog_app/pages/login_page.dart';
import 'package:flutter_catalog_app/pages/theme_page.dart';
import 'package:flutter_catalog_app/pages/user_profile.dart';
import 'package:flutter_catalog_app/utils/routes.dart';
import 'package:flutter_catalog_app/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {  
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {       
  @override  
  Widget build(BuildContext context) {    
    return MaterialApp(        
      themeMode: ThemeMode.system,    
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      


      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.userProfilePage: (context) => UserProfilePage(),
        MyRoutes.cartPage: (context) => MyCartPage(),
        MyRoutes.themePage: (context) => ThemePage(),
      },  


    );
  }
}
