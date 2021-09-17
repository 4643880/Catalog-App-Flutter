import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {

      static lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        colorScheme: ColorScheme.light(),
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme,
        ),
      );


      static darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark
      );



      // Colors
      static Color myCreamColor = Color(0xfff5f5f5);
      static Color myDarkBlue = Color(0xff403b58);
      


}



