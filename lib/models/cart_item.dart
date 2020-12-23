import 'package:flutter_shop/models/product.dart';

class CartItem {
  final Product product;
  int amount;

  CartItem({this.product, this.amount});
}
