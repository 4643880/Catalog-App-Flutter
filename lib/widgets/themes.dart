import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {

      static lightTheme(BuildContext context) => ThemeData(
        accentColor: Colors.black,
        cardColor: Colors.white,
        canvasColor: MyTheme.myCreamColor,
        buttonColor: Colors.deepPurple,
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        // colorScheme: ColorScheme.light(),
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme,
        ),
      );


      static darkTheme(BuildContext context) => ThemeData(
        accentColor: Colors.white,        
        cardColor: Colors.black,
        canvasColor: MyTheme.mydarkGrayColor,
        buttonColor: MyTheme.myLightBlue,
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,        
        // colorScheme: ColorScheme.dark(),
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: Theme.of(context).textTheme,
        brightness: Brightness.dark
        ),

      );




      // Colors
      static Color myCreamColor = Color(0xfff5f5f5);
      static Color mydarkGrayColor = Vx.gray900;
      static Color myDarkBlue = Color(0xff403b58);
      static Color myLightBlue = Vx.indigo800;
      static Color myGreyColor = Color(0xff878787);

      

      


}



