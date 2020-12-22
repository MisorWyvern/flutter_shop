import 'package:flutter/material.dart';
import 'package:flutter_shop/widgets/custom_appbar.dart';

class Carrinho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CustomAppBar(
        title: "Carrinho",
        isCarrinhoPage: true,
      ),
      body: Container(),
    );
  }
}
