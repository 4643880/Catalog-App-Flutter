import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/models/catalog.dart';

class MyCartModel{

  //Singleton Class
  // static final cartModel = MyCartModel._internal();
  // MyCartModel._internal();
  // factory MyCartModel() => cartModel;

  //Catalog Field
  MyCatalogModel _catalog;

  //Collecting Ides of products
  final List<int> _Items_ids = [];

  //Get Catalog
  MyCatalogModel get catalog => _catalog;

  //Set Catalog
  set catalog(MyCatalogModel newcatalog){
    assert(newcatalog != null);
    _catalog = newcatalog;
  }

  //Get Items in the Cart
  List<dynamic> get product => _Items_ids.map((id) => _catalog.getById(id)).toList();

  //Get Total Price
  num get totalPrice => product.fold(0, (total, current) => total + current.price);

  //Add Items
  void add(Items  items){
    _Items_ids.add(items.id);
  }

  //Remove Items
  void remove(Items items){
    _Items_ids.remove(items.id);
  }
}