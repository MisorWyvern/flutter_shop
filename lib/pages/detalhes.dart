import 'package:flutter/material.dart';
import 'package:flutter_shop/main.dart';
import 'package:flutter_shop/widgets/custom_appbar.dart';

class Detalhes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: CustomAppBar(title: "Flutter Shop"),
      body: Container(
          child: FlatButton(
        child: Icon(Icons.shopping_cart),
        onPressed: () {
          Navigator.pushNamed(context, '/carrinho');
        },
      )),
    );
  }
}
