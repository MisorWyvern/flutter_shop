import 'package:flutter/material.dart';
import 'package:flutter_shop/main.dart';
import 'package:flutter_shop/models/product.dart';
import 'package:flutter_shop/widgets/custom_appbar.dart';
import 'package:flutter_shop/widgets/detalhes_card.dart';

class Detalhes extends StatelessWidget {
  final Product product;

  const Detalhes({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/${product.foto}"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(title: "Detalhes"),
        body: Align(
          alignment: Alignment.bottomCenter,
                  child: Container(
            height: 200,
            margin: EdgeInsets.all(16),
            child: DetalhesCard(product: product,),
          ),
        ),
      ),
    );
  }
}
