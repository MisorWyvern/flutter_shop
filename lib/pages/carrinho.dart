import 'package:flutter/material.dart';
import 'package:flutter_shop/main.dart';
import 'package:flutter_shop/widgets/cart_list.dart';
import 'package:flutter_shop/widgets/custom_appbar.dart';

class Carrinho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: CustomAppBar(
        title: "Carrinho",
        isCarrinhoPage: true,
      ),
      body: CartList(),
    );
  }
}
