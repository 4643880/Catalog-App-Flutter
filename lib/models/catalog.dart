import 'dart:convert';

class MyCatalogModel{
  static List<Items> product;


  //Singleton Class
  // static final catModel = MyCatalogModel._internal();
  // MyCatalogModel._internal();
  // factory MyCatalogModel() => catModel;  

  //GET ITEM BY ID
  getById(int id) => 
  product.firstWhere((element) => element.id == id, orElse: null);

  //GEt ITEM BY POSITION
  getByPosition(int pos) => 
  product[pos];
}


class Items {
  final int id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String imageUrl;

  Items({
     this.id,
     this.name,
     this.desc,
     this.price,
     this.color,
     this.imageUrl,
  });
  
  

  // Items copyWith({
  //   int? id,
  //   String? name,
  //   String? desc,
  //   int? price,
  //   String? color,
  //   String? imageUrl,
  // }) {
  //   return Items(
  //     id: id ?? this.id,
  //     name: name ?? this.name,
  //     desc: desc ?? this.desc,
  //     price: price ?? this.price,
  //     color: color ?? this.color,
  //     imageUrl: imageUrl ?? this.imageUrl,
  //   );
  // }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'imageUrl': imageUrl,
    };
  }

  factory Items.fromMap(Map<String, dynamic> map) {
    return Items(
      id: map['id'],
      name: map['name'],
      desc: map['desc'],
      price: map['price'],
      color: map['color'],
      imageUrl: map['imageUrl'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Items.fromJson(String source) => Items.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Items(id: $id, name: $name, desc: $desc, price: $price, color: $color, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Items &&
      other.id == id &&
      other.name == name &&
      other.desc == desc &&
      other.price == price &&
      other.color == color &&
      other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      desc.hashCode ^
      price.hashCode ^
      color.hashCode ^
      imageUrl.hashCode;
  }
}




