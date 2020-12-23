import 'package:flutter/material.dart';
import 'package:flutter_shop/models/product.dart';
import 'package:flutter_shop/widgets/products_grid_item.dart';

class ProductsGrid extends StatelessWidget {
  final products;
  final Function updateState;

  const ProductsGrid({Key key, this.products, this.updateState})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: products != null ? products.length : 0,
      itemBuilder: (BuildContext context, int index) {
        final Product movel = Product.fromJson(products[index]);

        return ProductsGridItem(item: movel, updateState: updateState);
      },
    );
  }
}
