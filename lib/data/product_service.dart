import 'package:bloc_denemeleri/models/product.dart';

class ProductService {
  static List<Product> products = [];

  static ProductService _singleton = ProductService._internal();

  factory ProductService() {

    
    return _singleton;
  }

  ProductService._internal();

  static List<Product> getAll() {
    products.add(new Product(1, "Acer Laptop", 6000));
    products.add(new Product(2, "Acer Laptop", 7000));
    products.add(new Product(3, "Acer Laptop", 8000));
    return products;
  }
}
