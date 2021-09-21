import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class MyCatalogHeader extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               "Catalog App".text.xl5.bold.color(Theme.of(context).accentColor).make(),
               "Trending Products".text.color(Theme.of(context).accentColor).xl2.make(),
            ],
           );
  }
}