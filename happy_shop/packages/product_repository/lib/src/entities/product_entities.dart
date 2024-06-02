import '../models/modals.dart';
import 'macros_entity.dart';

class ProductEntity {
  String productId;
  String picture;
  String Size;
  String color;
  String name;
  String description;
  int price;
  int discount;
  Macros macros;

  ProductEntity({
    required this.productId,
    required this.picture,
    required this.Size,
    required this.color,
    required this.name,
    required this.description,
    required this.price,
    required this.discount,
    required this.macros,
  });

  Map<String, Object?> toDocument() {
    return {
      'productId': productId,
      'picture': picture,
      'Size': Size,
      'color': color,
      'name': name,
      'description': description,
      'price': price,
      'discount': discount,
      'macros': macros.toEntity().toDocument(),
    };
  }

  static ProductEntity fromDocument(Map<String, dynamic> doc) {
    return ProductEntity(
      productId: doc['productId'],
      picture: doc['picture'],
      Size: doc['Size'],
      color: doc['color'],
      name: doc['name'],
      description: doc['description'],
      price: doc['price'],
      discount: doc['discount'],
      macros: Macros.fromEntity(MacrosEntity.fromDocument(doc['macros'])),
    );
  }
}
