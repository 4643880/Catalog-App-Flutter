import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/widgets/themes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';
class UserProfilePage extends StatelessWidget { 
  final double coverImgHeight = 280;  
  final double profileImgHeight = 144; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: ListView(
        children: [
           Stack(        
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                MyCoverImg(),     
                Positioned(
                  top: coverImgHeight - profileImgHeight,
                  child: ProfileImage()
                  ),     
              ],
          ),
          Column(
            children: [
              "Aizaz Haider".text.color(Theme.of(context).accentColor).fontFamily(GoogleFonts.zillaSlab().fontFamily).xl4.make().pOnly(top: 90),
                    "Flutter Software Engineer".text.color(MyTheme.myGreyColor).textStyle(context.captionStyle).xl2.make(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,children: [
                        Icon(FontAwesomeIcons.facebook, color: Theme.of(context).buttonColor, size:40,).p8(),
                        Icon(FontAwesomeIcons.linkedin, color: Theme.of(context).buttonColor, size:40,).p8(),
                        Icon(FontAwesomeIcons.github, color: Theme.of(context).buttonColor, size:40,).p8(),
                        Icon(FontAwesomeIcons.globe, color: Theme.of(context).buttonColor, size:40,).p8(),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15,bottom: 10),
                      child: Divider(
                        color: Theme.of(context).accentColor,
                        height: 3,
                        thickness: 1,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,children: [
                        Column(
                          children: [
                            "39".text.color(Theme.of(context).accentColor).bold.xl2.make(),
                            "Projects".text.color(Theme.of(context).accentColor).bold.lg.make()
                          ],
                        ).p16(),
                        Column(
                          children: [
                            "539".text.color(Theme.of(context).accentColor).bold.xl2.make(),
                            "Following".text.color(Theme.of(context).accentColor).bold.lg.make()
                          ],
                        ).p16(),
                        Column(
                          children: [
                            "5870".text.color(Theme.of(context).accentColor).bold.xl2.make(),
                            "Followers".text.color(Theme.of(context).accentColor).bold.lg.make()
                          ],
                        ).p16(),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Divider(
                        color: Theme.of(context).accentColor,                        
                        thickness: 1,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "About".text.color(Theme.of(context).accentColor).xl4.bold.make(),
                    "Flutter Software Engineer and Google Developer Expert for Flutter and Dart with years of experience as consultent for multiple companies in Europe, USA and Asia. \n My mission is to create a better world with beautiful Flutter App designs and software.".text.color(MyTheme.myGreyColor).align(TextAlign.justify).xl.make()
                      ],
                    ).p20(),
                    
            ],
          )
        ],
      ),
    );
  }
}




class MyCoverImg extends StatelessWidget {  
  @override
  final double coverImgHeight = 200;  
  //final double profileImgHeight = 144;  
  Widget build(BuildContext context) {
    return Container(  
      height: coverImgHeight,
      width: double.infinity,
      //color: Colors.green,
      child: Image.network("https://images.unsplash.com/photo-1587620962725-abab7fe55159?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1400&q=80", fit: BoxFit.cover,),      
    );
  }
}


class ProfileImage extends StatelessWidget {    
  final double profileImgHeight = 144;  
  @override
  Widget build(BuildContext context) {
    return VxBox(      
      child:  CircleAvatar(      
        radius: profileImgHeight / 2,  
        backgroundColor: Theme.of(context).buttonColor,
        backgroundImage: AssetImage("assets/images/11.png"),
      ),

    ).roundedFull.p4.white.make();
  }
}