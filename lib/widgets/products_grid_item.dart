import 'package:flutter/material.dart';
import 'package:flutter_shop/models/color_palette.dart';
import 'package:flutter_shop/models/product.dart';
import 'package:flutter_shop/pages/detalhes.dart';
import 'package:flutter_shop/widgets/custom_title.dart';

class ProductsGridItem extends StatelessWidget {
  final Product item;
  final Function updateState;

  const ProductsGridItem({Key key, @required this.item, this.updateState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            spreadRadius: 1.5,
            blurRadius: 8,
            color: Colors.black12,
          ),
        ],
      ),
      margin: EdgeInsets.all(8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          onTap: () {
            Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Detalhes(product: item)))
                .then((value) => updateState());
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              ProductsGridItemImage(imagePath: "assets/images/${item.foto}"),
              ProductsGridItemGradient(),
              ProductsGridItemTitle(title: item.titulo),
            ],
          ),
        ),
      ),
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
            ColorPalette().carafe[600],
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
      child: CustomTitle(
        title: title,
        fontSize: 16,
      ),
    );
  }
}
