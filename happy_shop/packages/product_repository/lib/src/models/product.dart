import '../entities/entities.dart';
import 'modals.dart';

class Product {
  String productId;
  String picture;
  String Size;
  String color;
  String name;
  String description;
  int price;
  int discount;
  Macros macros;

  Product({
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

  ProductEntity toEntity() {
    return ProductEntity(
      productId: productId,
      picture: picture,
      Size: Size,
      color: color,
      name: name,
      description: description,
      price: price,
      discount: discount,
      macros: macros,
    );
  }

  static Product fromEntity(ProductEntity entity) {
    return Product(
      productId: entity.productId,
      picture: entity.picture,
      Size: entity.Size,
      color: entity.color,
      name: entity.name,
      description: entity.description,
      price: entity.price,
      discount: entity.discount,
      macros: entity.macros,
    );
  }
}
