import 'package:flutter/cupertino.dart';

// Constraints goes down 
// Size goes up 
// parent sets Position


// Container(
//         // width: 400,
//         // height: 400,
//         constraints: BoxConstraints(
//           maxHeight: 400,
//           maxWidth: 400,
//           minHeight: 100,
//           minWidth: 100
//         ),
//         color: Colors.green,
//         child: Container(
//           width: 100,
//           height: 100,
//           color: Colors.black,
//         ),        
//       ),







// Lecture 15 My Data Classes for Json Mapping

  // // Creating Named Constructor for Decode Map main convert kia
  // factory Items.fromJson(Map<String, dynamic> mymap){
  //   return Items(
  //     id: mymap["id"],  /* Getting "id" from map file*/     
  //     name: mymap["name"], /* Getting "name" from map file*/
  //     desc: mymap["desc"],
  //     price: mymap["price"],
  //     color: mymap["color"],
  //     imageUrl: mymap["imageUrl"]
  //   );
  // }
  // // Creating toJson for Encode string main convert kia
  // toJson() =>{
  //   "id": id,
  //   "name": name,
  //   "desc": desc,
  //   "price": price,
  //   "color": color,
  //   "imageUrl": imageUrl,
  // };



  // lecture 16 before Grid View
  // ListView.builder(
  //         itemCount: MyCatalogModel.product.length,
  //         itemBuilder: (BuildContext context , int index){
  //           return MyItemWidget(
  //             alpha: MyCatalogModel.product[index],
  //           );
  //         },
  //         )