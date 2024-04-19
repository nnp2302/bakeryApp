import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo_app/firebase/model/firebase_model.dart';

class ProductModel extends FirebaseModel {
  //
  @override
  String get collection => "Products";
  /*
  -------------------------------------------------------------------------------
   */
  // Id get from document id
  String? id;
  String? bannerImage, showImage, description, name;
  DocumentReference? category;
  double? cost, price;

  ProductModel({
    this.id,
    this.bannerImage,
    this.showImage,
    this.description,
    this.name,
    this.category,
    this.cost,
    this.price,
  });

  @override
  void fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bannerImage = json['bannerImage'];
    showImage = json['showImage'];
    description = json['description'];
    name = json['name'];
    category = json['category'];
    cost = json['cost'];
    price = json['price'];
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'id': id,
      'bannerImage': bannerImage,
      'showImage': showImage,
      'description': description,
      'name': name,
      'category': category,
      'cost': cost,
      'price': price,
    };
    return data;
  }

  
}
