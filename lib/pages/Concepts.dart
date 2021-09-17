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














// Lecture 16 
// GridView.builder(          
//           itemCount: MyCatalogModel.product.length,          
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 16,
//             mainAxisSpacing: 16
//             ),
//           itemBuilder: (BuildContext context , int index){
//             final xyz = MyCatalogModel.product[index];
//             return Card(
//               clipBehavior: Clip.antiAlias,
//               shape: RoundedRectangleBorder(                
//                 borderRadius: BorderRadius.circular(10)),
//               child: GridTile(
//                 header: Container(
//                   alignment: Alignment.center,
//                   padding: EdgeInsets.all(10),
//                   decoration: BoxDecoration(
//                     color: Colors.deepPurple                    
//                     ),
//                   child: Text(xyz.name, style: TextStyle(color: Colors.white, ),)),                
//                 child: Container(
//                   padding: EdgeInsets.all(40),
//                   child: Image.network(xyz.imageUrl)
//                   ),
//                 footer: Container(
//                   alignment: Alignment.center,
//                   padding: EdgeInsets.all(10),
//                   decoration: BoxDecoration(
//                     color: Colors.deepPurple                    
//                     ),
//                   child: Text(xyz.price.toString(), style: TextStyle(color: Colors.white, ),))
//               ),
//             );
//           }
//           )






