

import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/models/catalog.dart';
import 'package:flutter_catalog_app/pages/home_page.dart';
import 'package:flutter_catalog_app/widgets/home_widgets/catalog_product_img.dart';
import 'package:flutter_catalog_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class MyCatalogItem extends StatelessWidget {
  final Items catalog;
  const MyCatalogItem({Key key, @required this.catalog}) : assert(catalog != null), super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: MyProductImg(iMG: catalog.imageUrl,)
            ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.color(Theme.of(context).accentColor).bold.make().pOnly(top: 8),
                catalog.desc.text.color(MyTheme.myGreyColor).bold.textStyle(context.captionStyle).lg.make().py(7).pOnly(right: 5),
                //10.heightBox,
                ButtonBar(
                  buttonPadding: EdgeInsets.all(0),
                  alignment: MainAxisAlignment.spaceAround,
                  children: [
                   "\$${catalog.price}".text.color(Theme.of(context).accentColor).bold.xl.make(),
                   ElevatedButton(                     
                     style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.all(Theme.of(context).buttonColor),
                       shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
                     ),
                     onPressed: (){},
                     child: "Add to cart".text.sm.make()
                   ).wh(100, 28),
                  ],
                ).pOnly(bottom: 10, right: 5)
              ],
            ),
          ),
        ],
      ),
    ).color(Theme.of(context).cardColor).rounded.square(150).make().py16();
  }
}