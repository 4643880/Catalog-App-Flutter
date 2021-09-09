import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/models/catalog.dart';

class MyItemWidget extends StatelessWidget {


  final Items alpha;
  const MyItemWidget({Key key, @required this.alpha}) : assert(alpha != null ), super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      child: ListTile(
        leading: Image.network(alpha.imageUrl),
        title: Text(alpha.name),
        subtitle: Text(alpha.desc),
        trailing: Text("\$${alpha.price.toString()} ",
        style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),       
      ),
        
      ),
    );
  }
}