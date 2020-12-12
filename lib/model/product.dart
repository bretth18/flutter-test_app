import 'package:flutter/foundation.dart';

// Creating a data model that defines product data coming from the data source

enum Category {
  all,
  accessories,
  clothing,
  home,
}

class Product {
  const Product({
    @required this.category,
    @required this.id,
    @required this.isFeatured,
    @required this.name,
    @required this.price,
  })  : assert(category != null),
        assert(id != null),
        assert(isFeatured != null),
        assert(name != null),
        assert(price != null);

  // definitions
  final Category category;
  final int id;
  final bool isFeatured;
  final String name;
  final int price;
}
