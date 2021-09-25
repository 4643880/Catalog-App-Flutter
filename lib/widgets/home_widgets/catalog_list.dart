
import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/models/catalog.dart';
import 'package:flutter_catalog_app/pages/home_details.dart';
import 'package:flutter_catalog_app/pages/home_page.dart';
import 'package:flutter_catalog_app/utils/routes.dart';
import 'package:flutter_catalog_app/widgets/home_widgets/catalog_item.dart';


class MyCatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //shrinkWrap: true,
      itemCount: MyCatalogModel.product.length,
      itemBuilder: (BuildContext context, int index){

        final catalog = MyCatalogModel.product[index];
        
        return InkWell(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeDetailPage(catalog: catalog,))),         
          child: MyCatalogItem(catalog: catalog,));
      }
      );
  }
}
