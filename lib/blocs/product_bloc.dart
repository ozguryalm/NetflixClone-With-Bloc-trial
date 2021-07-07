import 'dart:async';

import 'package:bloc_denemeleri/data/product_service.dart';
import 'package:bloc_denemeleri/models/product.dart';

class ProductBloc {
  final productStremController = StreamController.broadcast();

  Stream get getStream => productStremController.stream;

  List<Product> getAll() {
    return ProductService.getAll();
  }
}

final productBloc = ProductBloc();
