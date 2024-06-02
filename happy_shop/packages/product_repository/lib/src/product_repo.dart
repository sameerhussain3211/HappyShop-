import 'package:product_repository/product_repository.dart';

abstract class ProductRepo {
  Future<List<Product>> getPizzas();
}
