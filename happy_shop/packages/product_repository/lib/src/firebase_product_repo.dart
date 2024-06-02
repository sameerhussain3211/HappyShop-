import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:product_repository/product_repository.dart';
import 'package:product_repository/src/entities/entities.dart';

class FirebaseProductRepo implements ProductRepo {
  final pizzaCollection = FirebaseFirestore.instance.collection('products');
  // final pizzaCollection = FirebaseFirestore;

  Future<List<Product>> getPizzas() async {
    try {
      return await pizzaCollection.get().then((value) => value.docs
          .map((e) => Product.fromEntity(ProductEntity.fromDocument(e.data())))
          .toList());
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
