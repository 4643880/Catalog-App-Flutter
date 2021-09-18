
import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class MyProductImg extends StatelessWidget {
  final String iMG;
  const MyProductImg({Key key, @ required this.iMG}) : assert(iMG != null), super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Image.network(iMG).box.p20.color(MyTheme.myCreamColor).roundedSM.make().p16().w40(context);
  }
}