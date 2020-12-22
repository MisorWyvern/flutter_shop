import 'package:flutter/material.dart';
import 'package:flutter_shop/models/product.dart';

class ProductsGridItem extends StatelessWidget {
  final Product item;

  const ProductsGridItem({Key key, @required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ProductsGridItemImage(imagePath: "assets/images/${item.foto}"),
        ProductsGridItemGradient(),
        ProductsGridItemTitle(title: item.titulo),
      ],
    );
  }
}

class ProductsGridItemImage extends StatelessWidget {
  final String imagePath;

  const ProductsGridItemImage({Key key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}

class ProductsGridItemGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Color.fromRGBO(178, 155, 178, 1),
          ],
        ),
      ),
    );
  }
}

class ProductsGridItemTitle extends StatelessWidget {
  final String title;

  const ProductsGridItemTitle({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      child: Text(title),
    );
  }
}
